CREATE TABLE `Customers` (
  `CustomerID` int PRIMARY KEY,
  `FirstName` varchar(255),
  `LastName` varchar(255),
  `CustomerEmail` varchar(255),
  `CustomerPhone` varchar(255),
  `CustomerAddress` varchar(255),
  `CustomerCity` varchar(255),
  `CustomerState` varchar(255),
  `CustomerZip` int
);

CREATE TABLE `Orders` (
  `OrderID` int PRIMARY KEY,
  `Date` date,
  `CustomerID` int,
  `ProdNumber` varchar(255),
  `Quantity` int
);

CREATE TABLE `ProductCategory` (
  `CategoryID` int PRIMARY KEY,
  `CategoryName` varchar(255),
  `CategoryAbbreviation` varchar(255)
);

CREATE TABLE `Products` (
  `ProdNumber` varchar(255) PRIMARY KEY,
  `ProdName` varchar(255),
  `Category` int,
  `Price` int
);

ALTER TABLE `Orders` ADD FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`);

ALTER TABLE `Orders` ADD FOREIGN KEY (`ProdNumber`) REFERENCES `Products` (`ProdNumber`);

ALTER TABLE `Products` ADD FOREIGN KEY (`Category`) REFERENCES `ProductCategory` (`CategoryID`);
