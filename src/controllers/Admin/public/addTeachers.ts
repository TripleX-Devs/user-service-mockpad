import express from 'express';
import prismaClient from '@/config/db';
import type { Prisma } from '@prisma/client';
import  multer from 'multer';
import csv from 'csv-parser';

import { Readable } from 'node:stream';


const upload = multer();

const app = express();


enum Category {
    GENERAL = 'GENERAL',
    OBC = 'OBC',
    SC = 'SC',
    ST = 'ST',
}

enum Gender {
    MALE = 'MALE',
    FEMALE = 'FEMALE',
}



const addTeachersData=async (req:express.Request, res:express.Response, next:express.NextFunction) => {

    const funcName = 'addTeachers';
    console.log((req.body))
    

    if (!req.file) {
        return res.status(400).send('No file uploaded.');
    }

    const csvData: Prisma.TeacherCreateManyInput[] = [];
    const CHUNK_SIZE = 1000; 
  

    try {
        // Create a readable stream from the buffer
      
        const readableStream = new Readable();
        readableStream.push(req.file.buffer);
        readableStream.push(null); // Signal the end of the stream
      
       

        // Read each row of the CSV
        readableStream
        .pipe(csv())
        .on('data', (row) => {
            // Map CSV row data to Prisma schema
            const formattedRow: Prisma.TeacherCreateManyInput = {
                name: row.name,
                gender: row.gender.toUpperCase()as Gender,
                profilePicUrl: row.profilePicUrl,
                dateOfBirth: new Date(row.dateOfBirth),
                phoneNumber: row.phoneNumber,
                email: row.email,
                category: row.category.toUpperCase() as Category,
                password: row.password,
                permanentAddress: row.permanentAddress,
                currentAddress: row.currentAddress,
                city: row.city,
                state: row.state,
                pincode: row.pincode,
                country: row.country,
                universityEmail: row.universityEmail,
                universityEmailPassword: row.universityEmailPassword,
            };
            csvData.push(formattedRow);

            // Insert data in chunks to avoid overloading
            if (csvData.length === CHUNK_SIZE) {
                readableStream.pause(); // Pause reading while we insert this batch
                insertBatch(csvData)
                    .then(() => {
                        csvData.length = 0; // Clear the array after inserting
                        readableStream.resume(); // Resume reading
                    })
                    .catch((err) => {
                        console.error('Error inserting batch:', err);
                        readableStream.resume(); // Even on error, resume processing
                    });
            }
        });

        readableStream.on('end', async () => {
            // Insert remaining rows that didn't fit into a full chunk
            if (csvData.length > 0) {
                await insertBatch(csvData);
            }
            res.status(200).send('CSV file processed and data inserted successfully.');
        });

        readableStream.on('error', (error) => {
            console.error('Error processing CSV:', error);
            res.status(500).send('Error processing CSV.');
        });
    } catch (error) {
        console.error('Error:', error);
        res.status(500).send('Error processing data.');
    }
};

// Insert batch of rows into the database
async function insertBatch(data: Prisma.TeacherCreateManyInput[]) {
    try {
        await prismaClient.teacher.createMany({
            data,
            skipDuplicates: true, // Skip records that violate unique constraints
        });
        console.log('Batch inserted successfully');
    } catch (error) {
        console.error('Error inserting batch into DB:', error);
    }
}


export default addTeachersData;
