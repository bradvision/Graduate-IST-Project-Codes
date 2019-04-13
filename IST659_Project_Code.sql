--Create Tables
CREATE TABLE Pub_Employee (
EmployeeID int  NOT NULL,
FName varchar(50)  NOT NULL,
LName varchar(50)  NOT NULL,
EMail varchar(50)  NOT NULL,
StNumber int  NULL,
StName varchar(50)  NULL,
City varchar(50)  NULL,
State varchar(50)  NULL,
PostalCode int  NULL,
PhoneNumber varchar(20)  NOT NULL,
CONSTRAINT Pub_Employee_pk PRIMARY KEY  (EmployeeID));

CREATE TABLE Pub_Artwork (
ArtworkID int  NOT NULL,
ArtworkName varchar(50)  NOT NULL,
CONSTRAINT Pub_Artwork_pk PRIMARY KEY  (ArtworkID)
);

CREATE TABLE Pub_Books (
    BookID int  NOT NULL,
    BookName varchar(200)  NOT NULL,
    AuthorID int  NOT NULL,
    ManuscriptID int  NULL,
    DesignID int  NOT NULL,
    EditorID int  NULL,
    CONSTRAINT Pub_Books_pk PRIMARY KEY  (BookID)
);

CREATE TABLE Pub_Design (
    DesignID int  NOT NULL,
    DesignName varchar(50)  NOT NULL,
    ArtworkID int  NOT NULL,
    CONSTRAINT Pub_Design_pk PRIMARY KEY  (DesignID)
);

CREATE TABLE Pub_Manuscripts (
    ManuscriptID int  NOT NULL,
    ManuscriptName int  NOT NULL,
    DateSubmitted date  NULL,
    BookID int  NOT NULL,
    DueDate int  NULL,
    CONSTRAINT Pub_Manuscripts_pk PRIMARY KEY  (ManuscriptID)
);

CREATE TABLE Pub_Royalties (
    RateID int  NOT NULL,
    BookID int  NOT NULL,
    AdvancePaid int  NOT NULL,
    RateofBook int  NULL,
    PercentageRoyalty int  NULL,
    CONSTRAINT Pub_Royalties_pk PRIMARY KEY  (RateID)
);

CREATE TABLE Pub_Artist (
    NumberofWorks int  NULL,
    ArtistID int  NOT NULL,
    CONSTRAINT Pub_Artist_pk PRIMARY KEY  (ArtistID)
);

CREATE TABLE Pub_Authors (
    NumberofManuscriptsWritten int  NULL,
    AuthorID int  NOT NULL,
    CONSTRAINT Pub_Authors_pk PRIMARY KEY  (AuthorID)
);

CREATE TABLE Pub_Editor (
    NumberofManuscriptsWritten int  NULL,
    EditorID int  NOT NULL,
    CONSTRAINT Pub_Editor_pk PRIMARY KEY  (EditorID)
);

--AlterTable
ALTER TABLE dbo.Pub_Artwork
ADD ArtistID INTEGER;

ALTER TABLE dbo.Pub_Artwork
ADD CONSTRAINT FK_Artist_Artwork
FOREIGN KEY (ArtistID) REFERENCES dbo.Pub_Artist(ArtistID);

ALTER TABLE dbo.Pub_Royalties
ADD AuthorID INTEGER;

ALTER TABLE dbo.Pub_Royalties
ADD CONSTRAINT FK_Author_Royalties
FOREIGN KEY (AuthorID) REFERENCES dbo.Pub_Authors(AuthorID);

ALTER TABLE dbo.Pub_Manuscripts
ADD AuthorID INTEGER;

ALTER TABLE dbo.Pub_Manuscripts
ADD CONSTRAINT FK_Author_Manuscripts
FOREIGN KEY (AuthorID) REFERENCES dbo.Pub_Authors(AuthorID);

ALTER TABLE dbo.Pub_Manuscripts
ADD EditorID INTEGER;

ALTER TABLE dbo.Pub_Manuscripts
ADD CONSTRAINT FK_Editor_Manuscripts
FOREIGN KEY (EditorID) REFERENCES dbo.Pub_Editor(EditorID);

ALTER TABLE dbo.Pub_Employee
ADD TypeDiscriminator VARCHAR(10) 

ALTER TABLE dbo.Pub_Employee
ADD CONSTRAINT TypeDiscriminator 
CHECK (TypeDiscriminator='Author' OR TypeDiscriminator='Editor' OR TypeDiscriminator='Artist')

select * from Pub_Employee


--alter columns
ALTER TABLE Pub_Employee ALTER COLUMN FName VARCHAR (500) NOT NULL;
ALTER TABLE Pub_Employee ALTER COLUMN LName VARCHAR (500) NOT NULL;
ALTER TABLE Pub_Employee ALTER COLUMN Email VARCHAR (200) NOT NULL;
ALTER TABLE Pub_Employee ALTER COLUMN City VARCHAR (120) NOT NULL;

--insert statements 

INSERT INTO Pub_Employee(EmployeeID, FName, LName, EMail, StNumber, StName, City, State, PostalCode, PhoneNumber, TypeDiscriminator)
VALUES
(1, 'Charles', 'Dickens', 'cdickens@publish.com', 48, 'Doughty Street', 'New London', 'NH', 03257, '651-328-9999', 'Author'),
(2, 'Emily', 'Bronte', 'ebronte@publish.com', 120, 'Church Street', 'Burlington', 'VT', 05401, '802-468-6785', 'Author'),
(3, 'Charles', 'Dickens', 'cdickens@publish.com', 48, 'Doughty Street', 'New London', 'NH', 03257, '802-328-1001', 'Author'),
(4, 'Leo', 'Tolstoy', 'ltolstoy@publish.com', '', 'Yasnaya Polyana', 'Tula Oblast', 'AK', 99501, '719-254-9653', 'Author'),
(5, 'Gustave', 'Flaubert', 'gflaubert@publish.com', 21715, 'Bellcroft Dr', 'Lake Forest', 'CA', 92630, '651-468-6788', 'Author'),
(6, 'Shi', 'Naian', 'snaian@publish.com', 4420, 'O Shanter Way', 'Portland', 'OR', 97229, '503-468-6788', 'Author'),
(7, 'F. Scott', 'Fitzgerald', 'fsfitzgerald@publish.com', 704, 'E Thomas St Apt 303', 'Seattle', 'WA', 98102, '212-468-6789', 'Author'),
(8, 'Herman', 'Melvile', 'hmelville@publish.com', 12, 'Olive St', 'Providence', 'RI', 29060, '747-328-1003', 'Author'),
(9, 'Jules', 'Verne', 'jverne@author.publish.com', 4601, 'E Ocean Blvd', 'Long Beach', 'CA', 90803, '418-328-1004', 'Author'),
(10, 'Agatha', 'Christie', 'achristie@author.publish.com', '', 'Greenway Rd', 'Exeter', 'NH', 03833, '212-222-4325', 'Author'),
(11, 'Xi', 'Yu', 'xiyu@gmail.com', '', '', '', '', '', '651-028-9999', 'Artist'),
(12, 'Rahul', 'Jairaj', 'rjairj@gmx.de', '', '', '', '', '', '212-328-1001', 'Artist'),
(13, 'Franciso', 'Goya', 'franciso.goya@mail.es', '', '', '', '', '', '719-254-9653', 'Artist'),
(14, 'Salvador', 'Dali', 'salvadordali@protonmail.ch', '', '', '', '', '', '503-787-4016', 'Artist'),
(15, 'Rembrandt', 'van Rijn', 'rembrandt@gmail.nl', '', '', '', '', '', '424-510-5305', 'Artist'),
(16, 'Julian', 'Yang', 'jayang@syr.edu', '', '', '', '', '', '802-424-0912', 'Artist'),
(17, 'Pablo', 'Picasso', 'ppicasso@un.org', 3339, 'Massachusetts Ave NW', 'Washington', 'DC', 20008, '202-452-0100', 'Artist'),
(18, 'Lenardo', 'da Vinci', 'lvinci@un.org', 3339, 'Massachusetts Ave NW', 'Washington', 'DC', 20008, '202-001-0121', 'Artist'),
(19, 'Richard', 'Strauss', 'rstrauss@publish.com', 1745, 'Broadway', 'New York', 'NY', 10019, '651-328-9999', 'Editor'),
(20, 'Stefan', 'George', 'sgeorge@publish.com', 1745, 'Broadway', 'New York', 'NY', 10019, '212-782-9000', 'Editor'),
(21, 'Giorgio', 'Bassar', 'gbassar@publish.com', 1745, 'Broadway', 'New York', 'NY', 10019, '212-782-9001', 'Editor'),
(22, 'Duarte', 'Leite', 'dleite@publish.com', 230, 'West 56th St', 'New York', 'NY', 10022, '651-328-9999', 'Editor'),
(23, 'Vera', 'Nabokov', 'vnabokov@publish.com', 230, 'West 56th St', 'New York', 'NY', 10022, '651-328-9999', 'Editor'),
(24, 'Gorden', 'Lish', 'glish@publish.com', 230, 'West 56th St', 'New York', 'NY', 10022, '651-328-9999', 'Editor')

INSERT INTO Pub_Authors(NumberofManuscriptsWritten, AuthorID)
VALUES
(4, 1),
(1, 2),
(1, 3),
(2, 4),
(3, 5),
(1, 6),
(1, 7),
(1, 8),
(4, 9),
(9, 10)

INSERT INTO Pub_Artist(NumberofWorks, ArtistID)
VALUES
(4, 11),
(4, 12),
(3, 13),
(4, 14),
(4, 15),
(2, 16),
(5, 17),
(4, 18)

INSERT INTO Pub_Editor(NumberofManuscriptsWritten, EditorID)
VALUES
(3, 19), 1
(5, 20), 2
(5, 21), 3
(3, 22), 4
(6, 23), 5 
(5, 24) 6

INSERT INTO Pub_Artwork (ArtworkID, ArtworkName, ArtistID)
VALUES
(1, 'AE01', 14),
(2, 'AE02', 11),
(3, 'AE03', 18),
(4, 'AE04', 17),
(5, 'AE05', 12),
(6, 'AE06', 11),
(7, 'AE07', 18),
(8, 'AE08', 11),
(9, 'AE09', 15),
(10, 'AE10', 16),
(11, 'AE11', 11),
(12, 'AE12', 14),
(13, 'AE13', 13),
(14, 'AE14', 13),
(15, 'AE15', 17),
(16, 'AE16', 13),
(17, 'AE17', 12),
(18, 'AE18', 14),
(19, 'AE19', 12),
(20, 'AE20', 17),
(21, 'AE21', 15),
(22, 'AE22', 15),
(23, 'AE23', 16),
(24, 'AE24', 17),
(25, 'AE25', 18),
(26, 'AE26', 18),
(27, 'AE27', 14),
(28, 'AE28', 15),
(29, 'AE29', 12),
(30, 'AE30', 17)

INSERT INTO Pub_Design(DesignID, DesignName, ArtworkID)
VALUES
(1, 'D1', 29),
(2, 'D2', 29),
(3, 'D3', 29),
(4, 'D4', 13),
(5, 'D5', 1),
(6, 'D6', 2),
(7, 'D7', 9),
(8, 'D8', 10),
(9, 'D9', 25),
(10, 'D10', 30),
(11, 'D11', 5),
(12, 'D12', 19),
(13, 'D13', 19),
(14, 'D14', 21),
(15, 'D15', 24),
(16, 'D16', 29),
(17, 'D17', 29),
(18, 'D18', 6),
(19, 'D19', 6),
(20, 'D20', 3),
(21, 'D21', 12),
(23, 'D22', 25),
(24, 'D22', 29),
(25, 'D22', 14),
(26, 'D22', 29),
(27, 'D22', 1)

--Update Pub_Manuscripts
ALTER TABLE Pub_Manuscripts ALTER COLUMN ManuscriptName VARCHAR (150) NOT NULL;
ALTER TABLE Pub_Manuscripts ALTER COLUMN DueDate DATETIME NOT NULL;

INSERT INTO Pub_Manuscripts(ManuscriptID, ManuscriptName, DateSubmitted, BookID, DueDate, AuthorID, EditorID)
VALUES
(1, 'The Great Gatsby', '12-11-2016', 1, '12-10-2017', 7, 24),
(2, 'Moby-Dick', '10-01-2017', 2, '09-30-2018', 8, 23), 
(3, 'Anna Karenina', '05-27-2016', 3, '05-26-2017', 4, 21),
(4, 'War and Peace', '07-20-2017', 4, '03-12-2019', 4, 20),
(5, 'Wuthering Heights', '11-08-2015', 5, '11-06-2017', 2, 23),
(6, 'Christmas Carol', '07-08-2012', 6, '07-07-2013', 1, 19),
(7, 'David Copperfield', '05-10-2013', 7, '01-07-2017', 1, 21),
(8, 'Oliver Twist', '12-04-2015', 8, '12-10-2017', 1, 24),
(9, 'A Tale of Two Cities', '10-07-2017', 9, '10-06-2018', 1, 23),
(10, 'Jane Eyre', '01-01-2009', 10, '06-30-2009', 3, 21),
(11, 'Memoirs of a MadMan', '02-01-2011', 11, '03-07-2012', 5, 22),
(12, 'The Temptation of Saint Anthony', '03-18-2014', 12, '09-15-2014', 5, 20),
(13, 'Madame Bovarey', '04-01-2007', 13, '09-28-2017', 5, 24),
(14, 'Water Margin', '04-04-2017', 14, '04-11-2018', 6, 19),
(15, 'Twenty Thousand Leagues', '07-18-1993', 15, '05-14-1994', 9, 21),
(16, 'Journey to the Center of the Earth', '07-27-1995', 16, '05-22-1996', 9, 22),
(17, 'From Eath to the Moon', '07-07-1997', 17, '05-22-1996', 9, 22),
(18, 'Around the World in Eighty Days', '02-08-2017', 18, '05-12-2018', 9, 24),
(19, 'The Mysterious AFfari at Styles', '06-17-1995', 19, '02-22-1996', 10, 20),
(20, 'Hercule Poirot and Miss Marple', '03-21-1999', 20, '06-29-1999', 10, 20),
(21, 'Murder on the Orient Express', '02-24-2001', 21, '07-24-2001', 10, 22),
(22, 'The Mousetrap', '08-14-2003', 22, '04-20-2004', 10, 23),
(23, 'The Murder of Roger Ackroyd', '11-02-2005', 23, '07-10-2006', 10, 19),
(24, 'Death on the Nile', '06-05-2007', 24, '05-30-2008', 10, 24),
(25, 'And Then There Were None', '06-05-2009', 25, '11-07-2009', 10, 23),
(26, 'The ABC Murders', '09-05-2010', 26, '08-31-2011', 10, 20),
(27, 'The Murder at the Vicarage', '07/02/2012', 27, '01/02/2013', 10, 21)
	
INSERT INTO Pub_Books(BookID, BookName, AuthorID, ManuscriptID, DesignID, EditorID)
VALUES
(1, 'The Great Gatsby', 7, 1, 1, 24), 
(2, 'Moby-Dick', 8, 2, 2, 23),
(3, 'Anna Karenina', 4, 3, 3, 21),
(4, 'War and Peace', 4, 4, 4, 20),
(5, 'Wuthering Heights', 2, 5, 5, 23),
(6, 'Christmas Carol', 1, 6, 6, 19),
(7, 'David Copperfield', 1, 7, 7, 21),
(8, 'Oliver Twist', 1, 8, 8, 24),
(9, 'A Tale of Two Cities', 1, 9, 9, 23),
(10, 'Jane Eyre', 3, 10, 10, 21),
(11, 'Memoirs of a MadMan', 5, 11, 11, 22),
(12, 'The Temptation of Saint Anthony', 5, 12, 12, 20),
(13, 'MadameBovary', 5, 13, 13, 24),
(14, 'Water Margin', 6, 14, 14, 19),
(15, 'Twenty Thousand Leagues', 9, 15, 15, 21),
(16, 'Journey to the Center of the Earth', 9, 16, 16, 22),
(17, 'From Earth to the Moon', 9, 17, 17, 23),
(18, 'Around the World in Eighty Days', 9, 18, 18, 24),
(19, 'The Mysterious Affair at Styles', 10, 19, 19, 20),
(20, 'Hercule Poirot and Miss Marple', 10, 20, 20, 20),
(21, 'Murder on the Orient Express', 10, 21, 21, 22),
(22, 'The Mousetrap', 10, 22, 22, 23),
(23, 'The Murder of Roger Ackroyd', 10, 23, 23, 19),
(24, 'Death on the Nile', 10, 24, 24, 24),
(25, 'And Then There Were None', 10, 25, 25, 23),
(26, 'The ABC Murders', 10, 26, 26, 20),
(27, 'The Murder at Vicarage', 10, 27, 27, 21)

ALTER TABLE Pub_Royalties ALTER COLUMN AdvancePaid MONEY NOT NULL; 
ALTER TABLE Pub_Royalties ALTER COLUMN RateofBook MONEY NULL;

INSERT INTO Pub_Royalties(RateID, BookID, AdvancePaid, RateofBook, PercentageRoyalty, AuthorID)
VALUES 
(1, 1, '$50,000.00', '$100.00', 37, 7),
(2,	2, '$30,000.00', '$90.00', 44, 8),
(3,	3, '$25,000.00', '$100.00', 37, 4),
(4,	4, '$25,000.00', '$100.00', 37, 4),
(5, 5,	'$5,000.00', '$90.00',	40, 2),
(6,	6, '$25,000.00', '$100.00', 37, 1),
(7,	7, '$25,000.00', '$100.00', 37, 1),
(8,	8, '$25,000.00', '$100.00', 37, 1),
(9,	9, '$25,000.00', '$100.00', 37, 1),
(10, 10, '$5,000.00', '$80.00',	40, 3),
(11, 11, '$25,000.00', '$100.00', 37, 5),
(12, 12, '$25,000.00', '$100.00', 37, 5),
(13, 13, '$25,000.00', '$100.00', 37, 5),
(14, 14, '$25,000.00', '$100.00', 37, 6),
(15, 15, '$5,000.00', '$90.00',	37, 9),
(16, 16, '$5,000.00', '$100.00', 37, 9),
(17, 17, '$5,000.00', '$100.00', 37, 9),
(18, 18, '$5,000.00', '$100.00', 37, 9),
(19, 19, '$25,000.00', '$135.00', 37, 10),
(20, 20, '$5,000.00', '$200.00', 37, 10),
(21, 21, '$5,000.00', '$200.00', 37, 10),
(22, 22, '$5,000.00', '$200.00', 37, 10),
(23, 23, '$5,000.00', '$200.00',37, 10),
(24, 24, '$5,000.00', '$200.00', 37, 10),
(25, 25, '$5,000.00', '$200.00', 37, 10),
(26, 26, '$5,000.00', '$200.00', 37, 10),
(27, 27, '$5,000.00', '$200.00', 37, 10)