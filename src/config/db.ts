import { drizzle } from 'drizzle-orm/postgres-js';
import postgres from 'postgres';

const queryClient = postgres(process.env.POSTGRES_URI);
const drizzleClient = drizzle(queryClient);

export default drizzleClient;
