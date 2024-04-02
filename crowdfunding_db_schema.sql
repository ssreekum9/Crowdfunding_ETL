CREATE TABLE "campaign" (
"cf_id" int NOT NULL CONSTRAINT "cf_id" PRIMARY KEY,
"contact_id" int NOT NULL,
"company_name" VARCHAR(100) NOT NULL,
"description" VARCHAR(100) NOT NULL,
"goal" FLOAT NOT NULL,
"pledged" FLOAT NOT NULL,
"outcome" VARCHAR(100) NOT NULL
"backer_count" INT NOT NULL,
"country" VARCHAR(20) NOT NULL,
"currency" VARCHAR(10) NOT NULL,
"launch_date" DATE NOT NULL,
"end_date" DATE NOT NULL, 
"category_id" VARCHAR(20) NOT NULL,
"subcategory_id" VARCHAR(20) NOT NULL,
);

CREATE TABLE "category" (
"category_id" VARCHAR(10) PRIMARY KEY,
"category" VARCHAR(50) NOT NULL	
CONSTRAINT fk_campaign_category_id FOREIGN KEY("category_id")
REFERENCES "category" (category_id),
);

CREATE TABLE "contacts" (
"contact_id" int PRIMARY KEY,
"first_name" VARCHAR(50) NOT NULL,
"last_name" VARCHAR(50) NOT NULL,
"email" VARCHAR(50) NOT NULL
CONSTRAINT fk_contact_id FOREIGN KEY("contact_id"),
REFERENCES "contacts" ("contact_id")
);

CREATE TABLE "subcategory" (
"subcategory_id" VARCHAR(20) PRIMARY KEY,
"subcategory" VARCHAR(20) NOT NULL
CONSTRAINT fk_subcategory_id FOREIGN KEY("subcategory_id"),
REFERENCES "subcategory" ("subcategory_id")
);