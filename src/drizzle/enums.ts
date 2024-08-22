import { pgEnum } from "drizzle-orm/pg-core";

export const Gender = pgEnum("Gender", ["male", "female"]);

export const Category = pgEnum("Categroy", ["general", "obc", "sc", "st"]);

export const UserRoles = pgEnum("UserRoles", ["ADMIN", "STUDENT", "TEACHER"]);

export const Country = pgEnum("Country", ["IN"]);
