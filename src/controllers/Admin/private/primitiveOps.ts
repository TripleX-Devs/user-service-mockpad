import prismaClient from '@/config/db';
import augmentAndForwardError from '@/utils/errorAugmentor';
import ResponsePayload from '@/utils/resGenerator';

import type express from 'express';

export const deleteAdmin = async (
    req: express.Request,
    res: express.Response,
    next: express.NextFunction,
) => {
    const funcName = 'deleteAdmin';

 
    const resPayload = new ResponsePayload();

 
    const { userId } = req.params;

    try {
        // Find the user by userId
        const user = await prismaClient.admin.findUnique({
            where: {
                id: userId,
            },
        });

        let resMessage: string;

        if (user) {
            // Delete the user
            await prismaClient.admin.delete({
                where: {
                    id: userId,
                },
            });

           
            resMessage = `Request to delete user with ID: ${userId} is successful.`;
            resPayload.setSuccess(resMessage);

            
            res.log.info(resPayload, `-> response for ${funcName} controller`);

            return res.status(200).json(resPayload);
        }

     
        resMessage = `User with ID: ${userId} not found.`;
        resPayload.setError(resMessage);

    
        res.log.info(resPayload, `-> response for ${funcName} controller`);

  
        return res.status(404).json(resPayload);
    } catch (err) {
  
        augmentAndForwardError({ next: next, err: err, funcName: funcName });
    }
};
