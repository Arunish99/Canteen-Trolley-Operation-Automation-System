SELECT V.VendorName, T.Location, M.MealName, A.PunchIn, A.PunchOut
FROM Vendor_Attendance A
JOIN Vendors V ON A.VendorID = V.VendorID
JOIN TrolleyPoints T ON A.TrolleyID = T.TrolleyID
JOIN MealTypes M ON A.MealID = M.MealID
WHERE A.PunchDate = CAST(GETDATE() AS DATE);
