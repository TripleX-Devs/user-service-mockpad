import prismaClient from '@/config/db';
import type express from 'express';
import augmentAndForwardError from '@/utils/errorAugmentor';
import ResponsePayload from '@/utils/resGenerator';
import createToken from '@/helpers/createTokens';
import type { JWT } from '@/helpers/createTokens';
import { insertJWT } from '@/helpers/createCookie';

import bcrypt from 'bcrypt';
import Joi from 'joi';

const collectionName = 'Admin';

// validation for the user signup
const adminSignupSchema = Joi.object({
    email: Joi.string().email().required(),
    password: Joi.string().min(6).required(),
});

const adminSignup = async (
    req: express.Request,
    res: express.Response,
    next: express.NextFunction,
) => {
    const funcName = 'adminSignup';

    // Create a new instance of the ResponsePayload class
    const resPayload = new ResponsePayload();

    const { error, value } = adminSignupSchema.validate(req.body);
    if (error) {
        resPayload.setError(`Validation error: ${error.details[0].message}`);
        res.log.info(
            resPayload,
            `-> response payload for ${funcName} controller`,
        );
        return res.status(400).json(resPayload);
    }

    const { email, password } = value;

    try {
        const tempUser = await prismaClient.admin.findUnique({
            where: {
                email: email,
            },
        });

        const recievedPassword = password;

        let resMessage: string;

        const resLogMessage = `-> response payload for ${funcName} controller`;

        // if a user found
        if (tempUser) {
            const ifAuthorised = await bcrypt.compare(
                recievedPassword,
                tempUser.password,
            );

            if (ifAuthorised) {
                // create a payload for the access token
                const userAccessTokenPayload: JWT = {
                    sub: tempUser.id.toString(),
                    userData: {
                        name: tempUser.name,
                        email: tempUser.email,
                    },
                };

                // Create the access token
                const userAccessToken = createToken(
                    userAccessTokenPayload,
                    false, // This is not a refresh token
                );

                const userAccessCookieMaxAge = 1000 * 60 * 60; // One hour

                insertJWT({
                    res: res, // The response object
                    field: 'accessToken', // The name of the cookie
                    fieldValue: userAccessToken, // The value of the cookie
                    maxAge: userAccessCookieMaxAge, // The max age of the cookie
                });

                // create a payload for new refresh token
                const userRefreshTokenPayload: JWT = {
                    sub: tempUser.id.toString(),
                    userData: {
                        name: tempUser.name,
                        email: tempUser.email,
                    },
                };
                
                // Create the refresh token
                const userRefreshToken = createToken(
                    userRefreshTokenPayload,
                    true,
                );

                const userRefreshCookieMaxAge = 1000 * 60 * 60 * 24 * 7; // One week

                insertJWT({
                    res: res,
                    field: 'refreshToken',
                    fieldValue: userRefreshToken,
                    maxAge: userRefreshCookieMaxAge,
                });

                resMessage = `Request to log in ${collectionName}-: ${tempUser.email} is successful`;

                resPayload.setSuccess(resMessage, tempUser);

                // Log the response payload
                res.log.info(resPayload, resLogMessage);

                return res.status(200).json(resPayload);
            }

            // define error
            resMessage = `Request to log in user-: ${tempUser.email} is unsuccessful due to incorrect password`;

            resPayload.setError(resMessage);
            res.log.info(resPayload, resLogMessage);

            return res.status(401).json(resPayload);
        }

        // Define an error message
        resMessage =
            'Request to log in user is unsuccessfull due to user being non-existent';
        resPayload.setError(resMessage);

        res.log.info(resPayload, resLogMessage);

        // Send a 404 status code and the response payload back to the client

        return res.status(404).json(resPayload);
    } catch (err) {
        augmentAndForwardError({ next: next, err: err, funcName: funcName });
    }
};

export default adminSignup;
