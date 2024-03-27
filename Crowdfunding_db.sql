DROP TABLE IF EXISTS "category";
DROP TABLE IF EXISTS "subcategory";
DROP TABLE IF EXISTS "campaign";
DROP TABLE IF EXISTS "contacts";


CREATE TABLE "category" (
    "category_id" VARCHAR(4) PRIMARY KEY  NOT NULL,
    "category" VARCHAR   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(8) PRIMARY KEY  NOT NULL,
    "subcategory" VARCHAR   NOT NULL
     );

CREATE TABLE "contacts" (
    "contact_id" INT PRIMARY KEY  NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL
);

CREATE TABLE "campaign" (
    "cf_id" INT PRIMARY KEY NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(2)   NOT NULL,
    "curreny" VARCHAR(3)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(4)   NOT NULL,
    "subcategory_id" VARCHAR(8)   NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

SELECT * 
FROM campaign
limit 5;

SELECT * 
FROM category
limit 5;

SELECT * 
FROM subcategory
limit 5;

SELECT * 
FROM contacts
limit 5;