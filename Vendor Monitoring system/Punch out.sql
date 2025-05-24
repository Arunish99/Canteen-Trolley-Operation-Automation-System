CREATE PROCEDURE PunchOutVendor
    @VendorID INT
AS
BEGIN
    UPDATE Vendor_Attendance
    SET PunchOut = GETDATE()
    WHERE VendorID = @VendorID AND PunchOut IS NULL;
END
