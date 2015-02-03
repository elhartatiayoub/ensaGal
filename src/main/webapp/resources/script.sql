CREATE TABLE `User` (
  ID          int(11) NOT NULL AUTO_INCREMENT, 
  RoleID      int(11) NOT NULL, 
  Name        varchar(255), 
  PassHash    varchar(255), 
  Website     varchar(255), 
  Avatar      varchar(255), 
  Description varchar(255), 
  Email       varchar(255), 
  PRIMARY KEY (ID));
CREATE TABLE Image (
  ID          int(10) NOT NULL AUTO_INCREMENT, 
  Title       varchar(255), 
  `Date`      date, 
  Likes       int(10) NOT NULL, 
  Shares      int(10) NOT NULL, 
  Pravacy     varchar(255), 
  Url         varchar(255), 
  Description varchar(255), 
  Downloads   int(11) NOT NULL, 
  CategoryID  int(11) NOT NULL, 
  UserID      int(11) NOT NULL, 
  PRIMARY KEY (ID));
CREATE TABLE Role (
  ID   int(11) NOT NULL AUTO_INCREMENT, 
  Name varchar(255), 
  PRIMARY KEY (ID));
CREATE TABLE Comment (
  ID      int(11) NOT NULL AUTO_INCREMENT, 
  ImageID int(10) NOT NULL, 
  `Date`  date, 
  Text    varchar(255), 
  UserID  int(11) NOT NULL, 
  PRIMARY KEY (ID));
CREATE TABLE Category (
  ID          int(11) NOT NULL AUTO_INCREMENT, 
  Name        varchar(255), 
  Description varchar(255), 
  PRIMARY KEY (ID));
CREATE TABLE Category_Image (
  CategoryID  int(11) NOT NULL, 
  ImageID     int(10) NOT NULL, 
  CategoryID2 int(11) NOT NULL, 
  PRIMARY KEY (CategoryID));
CREATE TABLE Image_keywords (
  ImageID    int(10) NOT NULL, 
  ImageIndex int(11) NOT NULL, 
  Keywords   varchar(255) NOT NULL, 
  PRIMARY KEY (ImageID, 
  ImageIndex));
ALTER TABLE Image ADD INDEX Image (UserID), ADD CONSTRAINT Image FOREIGN KEY (UserID) REFERENCES `User` (ID);
ALTER TABLE `User` ADD INDEX role (RoleID), ADD CONSTRAINT role FOREIGN KEY (RoleID) REFERENCES Role (ID);
ALTER TABLE Comment ADD INDEX FKComment537260 (UserID), ADD CONSTRAINT FKComment537260 FOREIGN KEY (UserID) REFERENCES `User` (ID);
ALTER TABLE Comment ADD INDEX FKComment435738 (ImageID), ADD CONSTRAINT FKComment435738 FOREIGN KEY (ImageID) REFERENCES Image (ID);
ALTER TABLE Category_Image ADD INDEX FKCategory_I387140 (CategoryID), ADD CONSTRAINT FKCategory_I387140 FOREIGN KEY (CategoryID) REFERENCES Category (ID);
ALTER TABLE Image ADD INDEX FKImage53830 (CategoryID), ADD CONSTRAINT FKImage53830 FOREIGN KEY (CategoryID) REFERENCES Category (ID);
ALTER TABLE Image_keywords ADD INDEX FKImage_keyw517101 (ImageID), ADD CONSTRAINT FKImage_keyw517101 FOREIGN KEY (ImageID) REFERENCES Image (ID);

Insert into `Role` values (1,'admin');
Insert into `Role` values (2,'user');
