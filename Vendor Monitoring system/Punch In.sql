CREATE PROCEDURE PunchInVendor
    @VendorID INT,
    @TrolleyID INT,
    @MealID INT
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM Vendor_Attendance
        WHERE VendorID = @VendorID AND PunchDate = CAST(GETDATE() AS DATE) AND PunchOut IS NULL
    )
    BEGIN
        RAISERROR('Vendor already punched in and has not punched out.', 16, 1);
        RETURN;
    END

    INSERT INTO Vendor_Attendance (VendorID, TrolleyID, MealID, PunchIn, PunchDate)
    VALUES (@VendorID, @TrolleyID, @MealID, GETDATE(), CAST(GETDATE() AS DATE));
END
