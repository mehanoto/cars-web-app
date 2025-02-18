
CREATE TABLE Model (
    ModelID int AUTO_INCREMENT,
    name varchar(255),
    FkBrandID int,
    creationDate DATE,
    engineVol int,
    engineType varchar(10),
    PRIMARY KEY(ModelID)
);

CREATE TABLE ModelCategory (
    FkModelID int,
    FkCategoryID int
);

CREATE TABLE Brand (
    BrandID int,
    name varchar(255)
);

CREATE TABLE Category (
    CategoryID int,
    name varchar(255)
);

CREATE TABLE Car (
    CarID int NOT NULL AUTO_INCREMENT,
    FkModelID int,
    manDate DATE,
    mileage int,
    description varchar(255),
	imgPath VARCHAR(255),
    PRIMARY KEY(CarID)
);


ALTER TABLE Brand
ADD CONSTRAINT PK_Brand PRIMARY KEY (BrandID);

ALTER TABLE Category
ADD CONSTRAINT PK_Category PRIMARY KEY (CategoryID);

ALTER TABLE Model
ADD CONSTRAINT FK_Brand FOREIGN KEY (FkBrandID) REFERENCES Brand(BrandID);

ALTER TABLE ModelCategory
ADD CONSTRAINT FK_Model FOREIGN KEY (FkModelID) REFERENCES Model(ModelID),
ADD CONSTRAINT FK_Category FOREIGN KEY (FkCategoryID) REFERENCES Category(CategoryID);

ALTER TABLE Car
ADD CONSTRAINT FK_Model_car FOREIGN KEY (FkModelID) REFERENCES Model(ModelID);