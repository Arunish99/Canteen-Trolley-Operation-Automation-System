CREATE TABLE Vendors (
    VendorID INT PRIMARY KEY,
    VendorName NVARCHAR(100),
    ContactNo VARCHAR(15),
    IsActive BIT DEFAULT 1
);
