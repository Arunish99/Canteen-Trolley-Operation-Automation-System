-- Check if a vendor is already punched in for the same date
SELECT * FROM Vendor_Attendance
WHERE VendorID = @VendorID AND PunchDate = CAST(GETDATE() AS DATE) AND PunchOut IS NULL;
