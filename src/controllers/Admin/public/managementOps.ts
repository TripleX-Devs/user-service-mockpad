import prismaClient from '@/config/db';
import augmentAndForwardError from '@/utils/errorAugmentor';
import ResponsePayload from '@/utils/resGenerator';

import type express from 'express';
import Joi from 'joi';

// validation for the user signup
const adminUpdateSchema = Joi.object({
    email: Joi.string().email().required(),
    password: Joi.string().min(6).required(),
});

const collectionName = 'Admin';

export const updateAdmin = async (
    req: express.Request,
    res: express.Response,
    next: express.NextFunction,
) => {
    const funcName = 'updateAdmin';

    // Create a new instance of the ResponsePayload class
    const resPayload = new ResponsePayload();

    const { error, value } = adminUpdateSchema.validate(req.body);

    if (error) {
        resPayload.setError(`Validation error: ${error.details[0].message}`);
        res.log.info(
            resPayload,
            `-> response payload for ${funcName} controller`,
        );
        return res.status(400).json(resPayload);
    }

    // extract the user id from the request object params
    const { userId } = req.params;

    const { latestUser } = value;

    try {
        const updatedAdmin = await prismaClient.admin.findUnique({
            where: {
                id: userId,
            },
        });
        let resMessage: string;

        if (updatedAdmin) {
    
            const updatedAdminData = await prismaClient.admin.update({
                where: {
                    id: userId,
                },
                data: latestUser,
            });

            // Create a success message
            resMessage = `Request to update admin with ID: ${userId} is successful.`;
            resPayload.setSuccess(resMessage, updatedAdminData);

            res.log.info(resPayload, `-> response for ${funcName} controller`);

        
            return res.status(200).json(resPayload);
        }

        resMessage = `Admin with ID: ${userId} not found.`;
        resPayload.setError(resMessage);

        // Log the response payload
        res.log.info(resPayload, `-> response for ${funcName}  controller`);

        
        return res.status(404).json(resPayload);
    } catch (err) {
       
        augmentAndForwardError({ next: next, err: err, funcName: funcName });
    }
};
