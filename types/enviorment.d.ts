declare global {
    namespace NodeJS {
        interface ProcessEnv {
            NODE_ENV: "development" | "production";
            DATABSE_URI: string;
            JWT_ACCESS_SECRET_KEY: string;
            JWT_REFRESH_SECRET_KEY: string;
        }
    }
}

export type {};
