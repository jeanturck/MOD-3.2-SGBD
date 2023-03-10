-- Table Definition ----------------------------------------------

CREATE TABLE "Work" (
    "Work_ID" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "Operation" text NOT NULL,
    "Goal" integer NOT NULL DEFAULT 1000,
    "Salary_Rate" double precision NOT NULL DEFAULT '0.5'::double precision,
    "Work_Type" text NOT NULL DEFAULT 'piece'::text 
    CHECK ("Work_Type" = ANY (ARRAY['piece'::text, 'day'::text]))
);

-- Indices -------------------------------------------------------

CREATE UNIQUE INDEX "Work_pkey" ON "Work"("Work_ID" int4_ops);







