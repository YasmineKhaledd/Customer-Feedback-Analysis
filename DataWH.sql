-- Create the Dimension tables first

-- Create Dim_Customer table
CREATE TABLE Dim_Customer (
    Customer_id INT PRIMARY KEY,
    Customer_name VARCHAR(100),
    Customer_email VARCHAR(100),
    Customer_region VARCHAR(50)
);

-- Create Dim_Date table
CREATE TABLE Dim_Date (
    Date_key INT PRIMARY KEY,
    Date DATE,
    Year INT,
    Month INT,
    Day INT
);

-- Create Dim_Source table
CREATE TABLE Dim_Source (
    Source_id INT PRIMARY KEY,
    Source_name VARCHAR(100)
);

-- Create Dim_Category table
CREATE TABLE Dim_Category (
    Category_id INT PRIMARY KEY,
    Category_name VARCHAR(100)
);

-- Create the Fact_Feedback table
CREATE TABLE Fact_Feedback (
    Feedback_id INT PRIMARY KEY,
    Customer_id INT,
    Category_id INT,
    Date_key INT,
    Sentiment VARCHAR(20),
    Rating INT,
    Response_status VARCHAR(20),
    Source_id INT,
    FOREIGN KEY (Customer_id) REFERENCES Dim_Customer(Customer_id),
    FOREIGN KEY (Category_id) REFERENCES Dim_Category(Category_id),
    FOREIGN KEY (Date_key) REFERENCES Dim_Date(Date_key),
    FOREIGN KEY (Source_id) REFERENCES Dim_Source(Source_id)
);
-- Insert data into the dimension tables
INSERT INTO Dim_Customer (Customer_id, Customer_name, Customer_email, Customer_region)
VALUES (1, 'John Doe', 'john.doe@example.com', 'North America');

INSERT INTO Dim_Date (Date_key, Date, Year, Month, Day)
VALUES (20231021, '2023-10-21', 2023, 10, 21);

INSERT INTO Dim_Source (Source_id, Source_name)
VALUES (1, 'Online Survey');

INSERT INTO Dim_Category (Category_id, Category_name)
VALUES (1, 'Product Quality');

-- Insert data into the fact table
INSERT INTO Fact_Feedback (Feedback_id, Customer_id, Category_id, Date_key, Sentiment, Rating, Response_status, Source_id)
VALUES (1001, 1, 1, 20231021, 'Positive', 5, 'Resolved', 1);