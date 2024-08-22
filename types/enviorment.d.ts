declare global {
    namespace NodeJS {
        interface ProcessEnv {
            NODE_ENV: 'development' | 'production';
            POSTGRES_URI: string;
        }
    }
}

export type {};
