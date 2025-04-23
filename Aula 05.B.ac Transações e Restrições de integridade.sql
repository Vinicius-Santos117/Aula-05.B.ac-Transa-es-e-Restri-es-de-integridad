/* qst1
 */

CREATE SCHEMA avaliacacontinua;

/* qst2
 */

CREATE TABLE avaliacacontinua.company (
    company_name NVARCHAR(100) NOT NULL PRIMARY KEY,
    city NVARCHAR(100)
);

/* qst3
 */

CREATE TABLE avaliacacontinua.employee (
    person_name NVARCHAR(100) NOT NULL PRIMARY KEY,
    street NVARCHAR(100),
    city NVARCHAR(100)
);

/* qst4
 */

CREATE TABLE avaliacacontinua.manages (
    person_name NVARCHAR(100) NOT NULL PRIMARY KEY,
    manager_name NVARCHAR(100)
);

/* qst5
 */

CREATE TABLE avaliacacontinua.works (
    person_name NVARCHAR(100) NOT NULL,
    company_name NVARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    PRIMARY KEY (person_name)
);


/* qst6
 */

ALTER TABLE avaliacacontinua.works
ADD CONSTRAINT FK_works_employee
FOREIGN KEY (person_name) 
REFERENCES avaliacacontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;

/* qst7
 */

ALTER TABLE avaliacacontinua.works
ADD CONSTRAINT FK_works_company
FOREIGN KEY (company_name) 
REFERENCES avaliacacontinua.company(company_name)
ON UPDATE CASCADE
ON DELETE CASCADE;


/* qst8
 */

ALTER TABLE avaliacacontinua.manages
ADD CONSTRAINT FK_manages_employee
FOREIGN KEY (person_name) 
REFERENCES avaliacacontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;
