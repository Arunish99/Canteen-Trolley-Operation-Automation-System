🍽️ Canteen Trolley Operation Automation System

This project automates the management of food delivery by vendors at various trolley points within a campus or facility. It ensures efficient vendor punch-in/punch-out logging, prevents duplicate shifts, and generates reports for meal operations using a SQL Server database integrated with a VB.NET / ASP.NET interface.

📌 Features

🧑‍🍳 Vendor Punch-In and Punch-Out system

🕒 Enforces single active shift per vendor per day

🧾 Tracks meal type (Breakfast, Lunch, Dinner)

🚫 Prevents duplicate or overlapping shifts

📊 Attendance reports exportable to Excel

🗃️ Backend powered by SQL Server and PL/SQL procedures

🗄️ Database Schema

Vendors (VendorID, VendorName, ContactNo, IsActive)

TrolleyPoints (TrolleyID, Location)

MealTypes (MealID, MealName)

Vendor_Attendance (AttendanceID, VendorID, TrolleyID, MealID, PunchIn, PunchOut, PunchDate)

Stored Procedures:

PunchInVendor

PunchOutVendor

SQL scripts are provided in:

schema.sql – for table creation

procedures.sql – for stored procedure logic

sample_data.sql – to add sample vendors and locations

🧪 How to Run

Open SQL Server Management Studio

Run schema.sql and procedures.sql in your CanteenDB

Insert sample data (optional)

Connect your ASP.NET/VB.NET front-end using ADO.NET or SQLDataSource

✅ Sample Usage

To punch in a vendor:

EXEC PunchInVendor @VendorID = 1, @TrolleyID = 101, @MealID = 1;

To punch out:

EXEC PunchOutVendor @VendorID = 1;

👨‍💻 Technologies Used

SQL Server (T-SQL / PL-SQL)

ASP.NET Web Forms

VB.NET

ADO.NET (for database connectivity)

📄 License

This project is open-source and free to use for educational or organizational purposes.
