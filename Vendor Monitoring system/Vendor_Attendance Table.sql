CREATE TABLE Vendor_Attendance (
    AttendanceID INT IDENTITY PRIMARY KEY,
    VendorID INT,
    TrolleyID INT,
    MealID INT,
    PunchIn DATETIME,
    PunchOut DATETIME,
    PunchDate DATE,
    CONSTRAINT FK_Vendor FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID),
    CONSTRAINT FK_Trolley FOREIGN KEY (TrolleyID) REFERENCES TrolleyPoints(TrolleyID),
    CONSTRAINT FK_Meal FOREIGN KEY (MealID) REFERENCES MealTypes(MealID)
);
