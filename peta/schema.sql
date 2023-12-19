CREATE TABLE user (
    User_ID CHAR(11) PRIMARY KEY,
    Password VARCHAR(40) NOT NULL,
    First_Middle_Name VARCHAR(60),
    Last_Name VARCHAR(60),
    Email VARCHAR(100),
    Phone_Number VARCHAR(20)
);


INSERT INTO user
VALUES
    ('U001', '123456', 'a', 'b', 'cenkerakan@email.com', "987897987"),
    ('U002', '123', 'a', 'c', 'cenkerakan@asdmail.com', "46545");

CREATE TABLE Pet (
    Pet_ID VARCHAR(11) PRIMARY KEY,
    Name VARCHAR(50),
    Breed VARCHAR(50),
    Date_of_Birth DATE,
    Age INT,
    Gender VARCHAR(10),
    Description TEXT,
    Adoption_Status VARCHAR(20),
    Medical_History TEXT
);

INSERT INTO Pet
VALUES
    ('P001', 'pet name 1', 'Tekir', '1800-01-01', 12, 'email', 'des1', 'Approved', 'grip'),
    ('P002', 'pet name 2', 'Sarman', '1800-01-02', 21, 'male', 'des2', 'Approved', 'flu'),
    ('P003', 'pet name 3', 'Siyam', '1800-01-03', 123, 'female', 'des3', 'Unapproved', 'fever'),
    ('P004', 'pet name 4', 'British', '1800-01-04', 1234, 'male', 'des4', 'Unapproved', 'none'),
    ('P005', 'pet name 5', 'Scottish', '1800-01-05', 12345, 'female', 'des5', 'Unapproved', 'chickenpox');

CREATE TABLE AnimalShelter (
    User_ID CHAR(11) PRIMARY KEY,
    Number_of_Animals INT
);

INSERT INTO AnimalShelter
VALUES
    ('AS001', 2),
    ('AS002', 0);

CREATE TABLE lists (
    User_ID CHAR(11),
    Pet_ID CHAR(11),
    FOREIGN KEY (User_ID) REFERENCES AnimalShelter (User_ID) ON DELETE CASCADE,
    FOREIGN KEY (Pet_ID) REFERENCES Pet (Pet_ID) ON DELETE CASCADE
);

INSERT INTO lists
VALUES
    ('AS001', 'P003'),
    ('AS001', 'P004'),
    ('AS002', 'P005');

CREATE TABLE AdoptionApplication (
    Application_ID CHAR(11) PRIMARY KEY,
    User_ID CHAR(11),
    Application_Date DATE,
    Application_Status VARCHAR(20),
    FOREIGN KEY (User_ID) REFERENCES user(User_ID) ON DELETE CASCADE
);

INSERT INTO AdoptionApplication
VALUES
    ('AA001', 'U001', '1800-01-01', 'Approved'),
    ('AA002', 'U001', '1800-01-01', 'Approved'),
    ('AA003', 'U001', '1800-01-01', 'Unapproved');

CREATE TABLE Pet_Adoption(
    Application_ID CHAR(11),
    Pet_ID CHAR(11),
    FOREIGN KEY (Pet_ID) REFERENCES Pet(Pet_ID) ON DELETE CASCADE,
    FOREIGN KEY (Application_ID) REFERENCES AdoptionApplication(Application_ID) ON DELETE CASCADE
);

INSERT INTO Pet_Adoption
VALUES
    ('AA001', 'P001'),
    ('AA002', 'P002'),
    ('AA003', 'P003');



CREATE TABLE Adopter (
    User_ID CHAR(11) PRIMARY KEY,
    Number_of_Adoptions INT,
);

INSERT INTO Adopter
VALUES
    ('Adopter Bilal', 1),
    ('Adopter Firat', 31),
    ('Adopter Cenker', 3),






CREATE TABLE pet_donation_appl ( 
    Donation_Application_ID CHAR(11), 
    Pet_ID CHAR(11), 
    Donation_Date DATE,
    Donation_Status VARCHAR(20),
    FOREIGN KEY (Donation_Application_ID) REFERENCES DonationApplication (Donation_Application_ID) ON DELETE CASCADE, 
    FOREIGN KEY (Pet_ID) REFERENCES Pet (Pet_ID) ON DELETE CASCADE, 
);  

INSERT INTO petDpet_donation_applonationAppl
VALUES
    ('PDA001', 'U001', '1800-01-01', 'Approved'),
    ('PDA002', 'U001', '1800-01-01', 'Approved'),
    ('PDA003', 'U001', '1800-01-01', 'Unapproved');