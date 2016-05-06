USE Lifes_a_Stitch;
GO

CREATE PROC sp_LogMessage
(
	@Name VARCHAR(50),
	@Email VARCHAR(50),
	@Message VARCHAR(50)
)
AS
BEGIN

-- Check if customer exists, and if not, add to Customers table
IF NOT EXISTS (SELECT name, email FROM Customers WHERE name = @Name AND @Email = email)
	BEGIN INSERT INTO Customers (name, email) VALUES (@Name, @Email) END;

-- Insert message and all relevant data
INSERT INTO Messages (customer_id, assigned_employee_id, message, category_id)
VALUES 
(
	(SELECT id FROM Customers WHERE name = @Name AND email = @Email),
	@Message
)
END
GO