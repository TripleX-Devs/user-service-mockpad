import {
    date,
    integer,
    pgTable,
    smallint,
    text,
    uuid,
    varchar,
} from "drizzle-orm/pg-core";

import { Category, Country, Gender, UserRoles } from "@/drizzle/enums";

const students = pgTable("students", {
    id: uuid("id").primaryKey(),
    role: UserRoles("UserRoles").default("STUDENT").notNull(),

    name: text("name").notNull(),
    rollNum: varchar("roll_number").unique().notNull(),
    gender: Gender("gender").notNull(),
    dateOfBirth: date("date_of_birth", { mode: "string" }).notNull(),
    category: Category("category").notNull(),
    phoneNum: varchar("phone_number", { length: 10 }).unique().notNull(),
    email: text("email").unique().notNull(),
    orgEmail: text("organisation_email").unique().notNull(),

    tenthSchoolName: text("tenth_school_name").notNull(),
    tenthBoardName: integer("tenth_board_name").notNull(),
    tenthMaxMarks: integer("max_marks_tenth").notNull(),
    tenthObtainedMarks: integer("obtained_marks_tenth").notNull(),
    tenthPercentage: integer("percentage_tenth").notNull(),

    twelthSchoolName: text("twelth_school_name").notNull(),
    twelthBoardName: text("twelth_board_name").notNull(),
    twelthmaxMarks: integer("max_marks_twelth").notNull(),
    twelthObtainedMarks: integer("obtained_marks_twelth").notNull(),
    twelthPercentage: integer("percentage_twelth").notNull(),
    
    instituteName: text("institute_name").notNull(),
    batchYear: smallint("batch_year").notNull(),
    courseName: text("course_name").notNull(),

    permanentAddress: text("permanent address").notNull(),
    currentAddress: text("currrent_address").notNull(),
    city: text("city").notNull(),
    state: text("state").notNull(),
    country: Country("country").default("IN").notNull(),

    fatherName: text("father_name").notNull(),
    fatherOccupation: text("father_occupation"),
    fatherPhoneNum: varchar("father_phone_number", { length: 10 })
        .notNull()
        .unique(),
    fatherEmail: varchar("father_email").notNull().unique(),

    motherName: text("mother_name").notNull(),
    motherOccupation: text("mother_occupation"),
    motherPhoneNumber: varchar("mother_phone_number", { length: 10 }).notNull(),
    motherEmail: text("mother_email"),

    guardianName: text("guardian_name"),

    receiptNumber: text("receipt_number").notNull().unique(),
});

export default students;
