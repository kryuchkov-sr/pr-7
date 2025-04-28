CREATE TABLE "doctor" (
  "doctor_id" serial PRIMARY KEY,
  "merchant_name" varchar,
  "doctor_name" character,
  "hospital_id" integer,
  "joining_date" date,
  "speciality" character,
  "salary" integer,
  "experience" smallint
);

CREATE TABLE "hospital" (
  "hospital_id" serial PRIMARY KEY,
  "hospital_name" character,
  "bed_count" serial,
  "hospital_type" VARCHAR(50)
);

CREATE TABLE "Doctor_Specialization" (
  "ID" serial PRIMARY KEY,
  "NAME" character
);

ALTER TABLE "doctor" ADD FOREIGN KEY ("hospital_id") REFERENCES "hospital" ("hospital_id");
