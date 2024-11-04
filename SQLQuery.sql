--- Database Schema --
-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    --created_at DATETIME DEFAULT GETDATE()
);

--drop table Customers;

-- Create FeedbackCategories Table
CREATE TABLE FeedbackCategories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

--drop table FeedbackCategories;

-- Create FeedbackForms Table
CREATE TABLE FeedbackForms (
    feedback_id INT PRIMARY KEY ,
    customer_id INT,
    category_id INT,
    feedback_date DATETIME NOT NULL,
    feedback_description TEXT NOT NULL,
	sentiment VARCHAR(50),
    source VARCHAR(50),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    response_status VARCHAR(50),
    improvement_suggested TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (category_id) REFERENCES FeedbackCategories(category_id)
);
--drop table FeedbackForms;

---- Import Historical Data ----

-- Insert sample data into Customers
INSERT INTO Customers (customer_id, customer_name, email) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Smith', 'jane@example.com'),
(3, 'Mike Johnson', 'mike@example.com'),
(4, 'Emily Davis', 'emily@example.com'),
(5, 'Chris Brown', 'chris@example.com'),
(6, 'Sarah Wilson', 'sarah@example.com'),
(7, 'Daniel Evans', 'daniel@example.com'),
(8, 'Sophia Moore', 'sophia@example.com'),
(9, 'Matthew Lee', 'matthew@example.com'),
(10, 'Olivia Harris', 'olivia@example.com'),
(11, 'David Clark', 'david@example.com'),
(12, 'Emma Lewis', 'emma@example.com'),
(13, 'Liam Walker', 'liam@example.com'),
(14, 'Ava Robinson', 'ava@example.com'),
(15, 'James Martinez', 'james@example.com'),
(16, 'Isabella Hall', 'isabella@example.com'),
(17, 'Benjamin Allen', 'benjamin@example.com'),
(18, 'Mia Young', 'mia@example.com'),
(19, 'Henry King', 'henry@example.com'),
(20, 'Charlotte Wright', 'charlotte@example.com'),
(21, 'Alexander Scott', 'alexander@example.com'),
(22, 'Amelia Adams', 'amelia@example.com'),
(23, 'Elijah Turner', 'elijah@example.com'),
(24, 'Evelyn Mitchell', 'evelyn@example.com'),
(25, 'William Perez', 'william@example.com'),
(26, 'Abigail Hill', 'abigail@example.com'),
(27, 'Michael Torres', 'michael@example.com'),
(28, 'Harper Ramirez', 'harper@example.com'),
(29, 'Samuel Campbell', 'samuel@example.com'),
(30, 'Lily Parker', 'lily@example.com'),
(31, 'Jackson Phillips', 'jackson@example.com'),
(32, 'Ella Roberts', 'ella@example.com'),
(33, 'Sebastian Baker', 'sebastian@example.com'),
(34, 'Grace Carter', 'grace@example.com'),
(35, 'Aiden Sanders', 'aiden@example.com'),
(36, 'Scarlett Price', 'scarlett@example.com'),
(37, 'Lucas Nelson', 'lucas@example.com'),
(38, 'Victoria Ward', 'victoria@example.com'),
(39, 'Mason Rivera', 'mason@example.com'),
(40, 'Zoey Morris', 'zoey@example.com'),
(41, 'Ethan Jenkins', 'ethan@example.com'),
(42, 'Penelope Perry', 'penelope@example.com'),
(43, 'Logan Coleman', 'logan@example.com'),
(44, 'Aria Peterson', 'aria@example.com'),
(45, 'Jacob Bailey', 'jacob@example.com'),
(46, 'Ella Foster', 'ella@example.com'),
(47, 'Levi Powell', 'levi@example.com'),
(48, 'Hannah Cooper', 'hannah@example.com'),
(49, 'Owen Richardson', 'owen@example.com'),
(50, 'Avery Bell', 'avery@example.com'),
(51, 'Wyatt Howard', 'wyatt@example.com'),
(52, 'Chloe Lee', 'chloe@example.com'),
(53, 'Noah White', 'noah@example.com'),
(54, 'Layla Hughes', 'layla@example.com'),
(55, 'Jack Martin', 'jack@example.com'),
(56, 'Sofia Evans', 'sofia@example.com'),
(57, 'Caleb Green', 'caleb@example.com'),
(58, 'Madison Garcia', 'madison@example.com'),
(59, 'Carter Walker', 'carter@example.com'),
(60, 'Riley Hall', 'riley@example.com'),
(61, 'Isaac King', 'isaac@example.com'),
(62, 'Nora Lewis', 'nora@example.com'),
(63, 'Gabriel Wright', 'gabriel@example.com'),
(64, 'Eleanor Robinson', 'eleanor@example.com'),
(65, 'Julian Turner', 'julian@example.com'),
(66, 'Lucy Martinez', 'lucy@example.com'),
(67, 'Leo Campbell', 'leo@example.com'),
(68, 'Natalie Clark', 'natalie@example.com'),
(69, 'Dylan Mitchell', 'dylan@example.com'),
(70, 'Savannah Perez', 'savannah@example.com'),
(71, 'Ryan Phillips', 'ryan@example.com'),
(72, 'Zoey Adams', 'zoey@example.com'),
(73, 'Nathan Torres', 'nathan@example.com'),
(74, 'Audrey Parker', 'audrey@example.com'),
(75, 'Luke Baker', 'luke@example.com'),
(76, 'Stella Carter', 'stella@example.com'),
(77, 'Thomas Sanders', 'thomas@example.com'),
(78, 'Riley Morris', 'riley@example.com'),
(79, 'Aaron Rivera', 'aaron@example.com'),
(80, 'Hazel Nelson', 'hazel@example.com'),
(81, 'Jameson Ward', 'jameson@example.com'),
(82, 'Maya Bailey', 'maya@example.com'),
(83, 'Ezra Lee', 'ezra@example.com'),
(84, 'Aurora Powell', 'aurora@example.com'),
(85, 'Joshua Foster', 'joshua@example.com'),
(86, 'Addison Coleman', 'addison@example.com'),
(87, 'Grayson Hughes', 'grayson@example.com'),
(88, 'Ellie Peterson', 'ellie@example.com'),
(89, 'Oliver Richardson', 'oliver@example.com'),
(90, 'Lillian Howard', 'lillian@example.com'),
(91, 'Colton Bell', 'colton@example.com'),
(92, 'Bella Martin', 'bella@example.com'),
(93, 'Isaiah White', 'isaiah@example.com'),
(94, 'Paisley Evans', 'paisley@example.com'),
(95, 'Andrew Green', 'andrew@example.com'),
(96, 'Brooklyn Garcia', 'brooklyn@example.com'),
(97, 'Robert Thomas', 'robert.thomas@example.com'),
(98, 'Jessica White', 'jessica.white@example.com'),
(99, 'Chris Harris', 'chris.harris@example.com'),
(100, 'Patricia Lewis', 'patricia.lewis@example.com');



-- Insert sample data into FeedbackCategories
INSERT INTO FeedbackCategories (category_id, category_name) VALUES
(1, 'Product Quality'),
(2, 'Service Quality'),
(3, 'Delivery'),
(4, 'Website Experience'),
(5, 'Customer Support'),
(6, 'Technical Support'),
(7, 'Billing Issues'),
(8, 'Return and Refund Process'),
(9, 'Shipping Experience'),
(10, 'Mobile App Usability'),
(11, 'Account Management'),
(12, 'Product Availability'),
(13, 'Pricing and Discounts'),
(14, 'Product Features'),
(15, 'Product Packaging'),
(16, 'Order Tracking'),
(17, 'Loyalty Program'),
(18, 'Payment Methods'),
(19, 'Checkout Process'),
(20, 'Social Media Interaction'),
(21, 'Email Support'),
(22, 'Phone Support'),
(23, 'Live Chat Support'),
(24, 'In-Store Experience'),
(25, 'Online Store Navigation'),
(26, 'Warranty and Repairs'),
(27, 'Security and Privacy'),
(28, 'Product Recommendations'),
(29, 'Installation Assistance'),
(30, 'Order Confirmation Process'),
(31, 'Subscription Services'),
(32, 'Gift Cards and Vouchers'),
(33, 'Product Reviews'),
(34, 'Technical Documentation'),
(35, 'User Manuals'),
(36, 'Complaint Handling'),
(37, 'Customer Surveys'),
(38, 'Brand Perception'),
(39, 'Marketing Emails'),
(40, 'Advertising Campaigns'),
(41, 'Corporate Social Responsibility'),
(42, 'Environmental Impact'),
(43, 'Community Involvement'),
(44, 'Employee Friendliness'),
(45, 'Store Cleanliness'),
(46, 'Queue Management'),
(47, 'Accessibility Features'),
(48, 'Return Policy'),
(49, 'After-Sales Service'),
(50, 'Promotional Offers'),
(51, 'Referral Program'),
(52, 'Appointment Scheduling'),
(53, 'Product Customization'),
(54, 'Size and Fit'),
(55, 'Product Range'),
(56, 'Store Ambiance'),
(57, 'Product Durability'),
(58, 'Online Payment Security'),
(59, 'Store Location Convenience'),
(60, 'Gift Wrapping'),
(61, 'Event Hosting'),
(62, 'Store Hours'),
(63, 'Inventory Management'),
(64, 'Stock Updates'),
(65, 'Online Chatbot'),
(66, 'Customer Testimonials'),
(67, 'Order Confirmation Speed'),
(68, 'Loyalty Rewards Redemption'),
(69, 'Promotional Events'),
(70, 'Holiday Sales'),
(71, 'Corporate Communication'),
(72, 'Online FAQ'),
(73, 'Installation Guides'),
(74, 'Product Setup'),
(75, 'Newsletter Quality'),
(76, 'Free Trials'),
(77, 'Demo Availability'),
(78, 'Product Testing'),
(79, 'Exclusive Member Discounts'),
(80, 'Online Return Process'),
(81, 'Store Return Process'),
(82, 'Technical Problem Resolution'),
(83, 'International Shipping'),
(84, 'Shipping Costs'),
(85, 'Delivery Time'),
(86, 'Order Status Updates'),
(87, 'Customer Service Knowledge'),
(88, 'Sales Staff Assistance'),
(89, 'Product Training'),
(90, 'Assembly Instructions'),
(91, 'Home Delivery Service'),
(92, 'Contact Us Form'),
(93, 'Feedback Collection'),
(94, 'Suggestion Box'),
(95, 'Free Samples'),
(96, 'Employee Training'),
(97, 'Return Labels'),
(98, 'Warranty Registration'),
(99, 'Product Recall'),
(100, 'Brand Loyalty');

-- Insert sample data into FeedbackForms
INSERT INTO FeedbackForms (feedback_id, customer_id, category_id, feedback_date, feedback_description, sentiment, source, rating, response_status, improvement_suggested) VALUES
(1, 1, 1, '2024-09-01', 'I love this product!', 'Positive', 'Twitter', 5, 'Responded', 'N/A'),
(2, 2, 2, '2024-09-02', 'I had a terrible experience with their service.', 'Negative', 'Yelp', 2, 'Responded', 'Improve service'),
(3, 3, 3, '2024-09-03', 'This product exceeded my expectations!', 'Positive', 'Amazon', 5, 'Not Responded', 'N/A'),
(4, 4, 4, '2024-09-04', 'I am very disappointed with the quality of this item.', 'Negative', 'Online Store', 1, 'Responded', 'Quality check'),
(5, 5, 5, '2024-09-05', 'Amazing experience! Would definitely recommend!', 'Positive', 'TripAdvisor', 5, 'Not Responded', 'N/A'),
(6, 6, 6, '2024-09-06', 'The product is not as described.', 'Negative', 'Amazon', 2, 'Responded', 'Update description'),
(7, 7, 7, '2024-09-07', 'Absolutely loved it!', 'Positive', 'Instagram', 5, 'Not Responded', 'N/A'),
(8, 8, 8, '2024-09-08', 'Very unhappy with my purchase.', 'Negative', 'eBay', 1, 'Responded', 'Improve product'),
(9, 9, 9, '2024-09-09', 'The movie was just okay.', 'Neutral', 'IMDb', 3, 'Not Responded', 'N/A'),
(10, 10, 10, '2024-09-10', 'Highly recommend this service!', 'Positive', 'Yelp', 5, 'Responded', 'N/A'),
(11, 11, 11, '2024-09-11', 'The food was bland and unappetizing.', 'Negative', 'Zomato', 2, 'Responded', 'Improve flavor'),
(12, 12, 12, '2024-09-12', 'Customer service was quick to respond.', 'Positive', 'Facebook', 4, 'Not Responded', 'N/A'),
(13, 13, 13, '2024-09-13', 'The experience was underwhelming.', 'Negative', 'Google Reviews', 2, 'Responded', 'Enhance experience'),
(14, 14, 14, '2024-09-14', 'This restaurant is my new favorite!', 'Positive', 'TripAdvisor', 5, 'Not Responded', 'N/A'),
(15, 15, 15, '2024-09-15', 'The app keeps crashing on my phone.', 'Negative', 'App Store', 1, 'Responded', 'Fix app'),
(16, 16, 16, '2024-10-01', 'I had a fantastic time at the concert!', 'Positive', 'Event Review', 5, 'Not Responded', 'N/A'),
(17, 17, 17, '2024-10-02', 'Not worth the price.', 'Negative', 'Yelp', 2, 'Responded', 'Review pricing'),
(18, 18, 18, '2024-10-03', 'The staff was friendly and helpful.', 'Positive', 'TripAdvisor', 4, 'Not Responded', 'N/A'),
(19, 19, 19, '2024-10-04', 'The quality of this item is subpar.', 'Negative', 'Amazon', 1, 'Responded', 'Improve quality'),
(20, 20, 20, '2024-10-05', 'Just had the best meal ever!', 'Positive', 'Instagram', 5, 'Not Responded', 'N/A'),
(21, 21, 21, '2024-10-06', 'I am very disappointed in the shipping time.', 'Negative', 'Online Store', 2, 'Responded', 'Improve shipping'),
(22, 22, 22, '2024-10-07', 'I love this song!', 'Positive', 'Spotify', 5, 'Not Responded', 'N/A'),
(23, 23, 23, '2024-10-08', 'The movie was a waste of time.', 'Negative', 'IMDb', 1, 'Responded', 'Improve production'),
(24, 24, 24, '2024-10-09', 'Best shopping experience I’ve had!', 'Positive', 'Facebook', 5, 'Not Responded', 'N/A'),
(25, 25, 25, '2024-10-10', 'The product arrived late and damaged.', 'Negative', 'Online Store', 1, 'Responded', 'Better packaging'),
(26, 26, 26, '2024-10-11', 'I cannot get enough of this restaurant!', 'Positive', 'TripAdvisor', 5, 'Not Responded', 'N/A'),
(27, 27, 27, '2024-10-12', 'The customer support was unhelpful.', 'Negative', 'Yelp', 2, 'Responded', 'Improve support'),
(28, 28, 28, '2024-10-13', 'Amazing value for money!', 'Positive', 'Google Reviews', 5, 'Not Responded', 'N/A'),
(29, 29, 29, '2024-10-14', 'I am not satisfied with the service I received.', 'Negative', 'Online Forum', 2, 'Responded', 'Improve service'),
(30, 30, 30, '2024-10-15', 'This app is incredibly useful!', 'Positive', 'App Store', 5, 'Not Responded', 'N/A'),
(31, 31, 31, '2024-10-16', 'The food was overpriced and underwhelming.', 'Negative', 'Zomato', 2, 'Responded', 'Improve quality'),
(32, 32, 32, '2024-10-17', 'I had a great time at the theme park!', 'Positive', 'Event Review', 5, 'Not Responded', 'N/A'),
(33, 33, 33, '2024-10-18', 'The staff was rude and dismissive.', 'Negative', 'TripAdvisor', 1, 'Responded', 'Improve service'),
(34, 34, 34, '2024-10-19', 'This product works exactly as advertised!', 'Positive', 'Amazon', 5, 'Not Responded', 'N/A'),
(35, 35, 35, '2024-10-20', 'I am not impressed with the quality of this item.', 'Negative', 'Online Store', 1, 'Responded', 'Improve quality'),
(36, 36, 36, '2024-10-21', 'This is my go-to restaurant!', 'Positive', 'Yelp', 5, 'Not Responded', 'N/A'),
(37, 37, 37, '2024-10-22', 'The service was way too slow.', 'Negative', 'Online Forum', 1, 'Responded', 'Improve service'),
(38, 38, 38, '2024-10-23', 'This website is so easy to navigate!', 'Positive', 'Google Reviews', 5, 'Not Responded', 'N/A'),
(39, 39, 39, '2024-10-24', 'I had a horrible experience at this restaurant.', 'Negative', 'TripAdvisor', 1, 'Responded', 'Improve service'),
(40, 40, 40, '2024-10-25', 'The delivery was prompt and professional.', 'Positive', 'Online Store', 5, 'Not Responded', 'N/A'),
(41, 41, 41, '2024-10-26', 'The customer support was difficult to reach.', 'Negative', 'Yelp', 1, 'Responded', 'Improve support'),
(42, 42, 42, '2024-10-27', 'Absolutely love this product!', 'Positive', 'Amazon', 5, 'Not Responded', 'N/A'),
(43, 43, 43, '2024-10-28', 'I wouldnot recommend this place to anyone.', 'Negative', 'Online Forum', 1, 'Responded', 'Improve service'),
(44, 44, 44, '2024-10-29', 'This app has changed my life for the better!', 'Positive', 'App Store', 5, 'Not Responded', 'N/A'),
(45, 45, 45, '2024-10-30', 'The food was not worth the price.', 'Negative', 'Zomato', 1, 'Responded', 'Improve quality'),
(46, 46, 46, '2024-10-16', 'Fantastic product! Will buy again!', 'Positive', 'Amazon', 5, 'Not Responded', 'N/A'),
(47, 47, 47, '2024-10-17', 'Very dissatisfied with the service.', 'Negative', 'Yelp', 2, 'Responded', 'Improve service'),
(48, 48, 48, '2024-10-18', 'Quick delivery and great quality!', 'Positive', 'Online Store', 4, 'Not Responded', 'N/A'),
(49, 49, 49, '2024-10-19', 'The app is confusing and difficult to use.', 'Negative', 'App Store', 1, 'Responded', 'Improve UX'),
(50, 50, 50, '2024-10-20', 'I had a great experience at this hotel!', 'Positive', 'TripAdvisor', 5, 'Not Responded', 'N/A'),
(51, 51, 51, '2024-10-21', 'The food was overpriced and bland.', 'Negative', 'Zomato', 2, 'Responded', 'Improve quality'),
(52, 52, 52, '2024-10-22', 'Great atmosphere and friendly staff!', 'Positive', 'Google Reviews', 4, 'Not Responded', 'N/A'),
(53, 53, 53, '2024-10-23', 'I won’t be coming back again.', 'Negative', 'Online Forum', 1, 'Responded', 'Improve service'),
(54, 54, 54, '2024-10-24', 'This gadget works perfectly!', 'Positive', 'Amazon', 5, 'Not Responded', 'N/A'),
(55, 55, 55, '2024-10-25', 'Awful experience, the staff was rude.', 'Negative', 'Yelp', 1, 'Responded', 'Improve training'),
(56, 56, 56, '2024-10-26', 'Loved the presentation and the food!', 'Positive', 'Facebook', 5, 'Not Responded', 'N/A'),
(57, 57, 57, '2024-10-27', 'The product didn’t match the description.', 'Negative', 'Online Store', 2, 'Responded', 'Update description'),
(58, 58, 58, '2024-10-28', 'I highly recommend this place!', 'Positive', 'TripAdvisor', 5, 'Not Responded', 'N/A'),
(59, 59, 59, '2024-10-29', 'The service was slow and unprofessional.', 'Negative', 'Google Reviews', 1, 'Responded', 'Improve speed'),
(60, 60, 60, '2024-10-30', 'Such a great value for money!', 'Positive', 'Yelp', 4, 'Not Responded', 'N/A'),
(61, 61, 61, '2024-10-31', 'The customer service line was busy all day.', 'Negative', 'Online Forum', 1, 'Responded', 'Increase staffing'),
(62, 62, 62, '2024-11-01', 'Best product I’ve ever purchased!', 'Positive', 'Amazon', 5, 'Not Responded', 'N/A'),
(63, 63, 63, '2024-11-02', 'Disappointed with the quality of the item.', 'Negative', 'Zomato', 2, 'Responded', 'Quality check'),
(64, 64, 64, '2024-11-03', 'Everything was perfect during my stay!', 'Positive', 'TripAdvisor', 5, 'Not Responded', 'N/A'),
(65, 65, 65, '2024-11-04', 'Food was cold when served.', 'Negative', 'Yelp', 2, 'Responded', 'Improve service'),
(66, 66, 66, '2024-11-05', 'Quick and easy checkout process.', 'Positive', 'Online Store', 5, 'Not Responded', 'N/A'),
(67, 67, 67, '2024-11-06', 'The product broke after one use.', 'Negative', 'Amazon', 1, 'Responded', 'Quality check'),
(68, 68, 68, '2024-11-07', 'Friendly service and delicious food!', 'Positive', 'Facebook', 5, 'Not Responded', 'N/A'),
(69, 69, 69, '2024-11-08', 'Too many ads on the app.', 'Negative', 'App Store', 2, 'Responded', 'Reduce ads'),
(70, 70, 70, '2024-11-09', 'One of the best concerts I’ve attended!', 'Positive', 'Event Review', 5, 'Not Responded', 'N/A'),
(71, 71, 71, '2024-11-10', 'Horrible experience, will not return.', 'Negative', 'Online Forum', 1, 'Responded', 'Improve service'),
(72, 72, 72, '2024-11-11', 'This is my new favorite restaurant!', 'Positive', 'Google Reviews', 5, 'Not Responded', 'N/A'),
(73, 73, 73, '2024-11-12', 'Terrible customer support!', 'Negative', 'Yelp', 1, 'Responded', 'Improve support'),
(74, 74, 74, '2024-11-13', 'The product exceeded my expectations!', 'Positive', 'Amazon', 5, 'Not Responded', 'N/A'),
(75, 75, 75, '2024-11-14', 'Very poor quality, not worth the price.', 'Negative', 'Zomato', 1, 'Responded', 'Improve quality'),
(76, 76, 76, '2024-11-15', 'Excellent customer service!', 'Positive', 'Facebook', 5, 'Not Responded', 'N/A'),
(77, 77, 77, '2024-11-16', 'Product arrived late and damaged.', 'Negative', 'Online Store', 2, 'Responded', 'Better packaging'),
(78, 78, 78, '2024-11-17', 'Highly professional staff!', 'Positive', 'Google Reviews', 5, 'Not Responded', 'N/A'),
(79, 79, 79, '2024-11-18', 'The quality has gone down.', 'Negative', 'Amazon', 2, 'Responded', 'Quality check'),
(80, 80, 80, '2024-11-19', 'I enjoyed my experience!', 'Positive', 'TripAdvisor', 4, 'Not Responded', 'N/A'),
(81, 81, 81, '2024-11-20', 'The app crashed multiple times.', 'Negative', 'App Store', 1, 'Responded', 'Fix bugs'),
(82, 82, 82, '2024-11-21', 'I will definitely recommend this place!', 'Positive', 'Yelp', 5, 'Not Responded', 'N/A'),
(83, 83, 83, '2024-11-22', 'Terrible food quality.', 'Negative', 'Zomato', 1, 'Responded', 'Improve quality'),
(84, 84, 84, '2024-11-23', 'Perfect for a family outing!', 'Positive', 'Google Reviews', 5, 'Not Responded', 'N/A'),
(85, 85, 85, '2024-11-24', 'The staff was unhelpful.', 'Negative', 'Online Forum', 1, 'Responded', 'Staff training'),
(86, 86, 86, '2024-11-25', 'Amazing value for money!', 'Positive', 'Amazon', 5, 'Not Responded', 'N/A'),
(87, 87, 87, '2024-11-26', 'The website is very slow.', 'Negative', 'Online Store', 2, 'Responded', 'Improve speed'),
(88, 88, 88, '2024-11-27', 'Fantastic service and quick delivery!', 'Positive', 'Facebook', 5, 'Not Responded', 'N/A'),
(89, 89, 89, '2024-11-28', 'Disappointing, the product does not work.', 'Negative', 'Amazon', 1, 'Responded', 'Quality check'),
(90, 90, 90, '2024-11-29', 'I had a wonderful experience!', 'Positive', 'TripAdvisor', 5, 'Not Responded', 'N/A'),
(91, 91, 91, '2024-11-30', 'The item was missing parts.', 'Negative', 'Online Store', 1, 'Responded', 'Check inventory'),
(92, 92, 92, '2024-12-1', 'Highly recommend the service!', 'Positive', 'Yelp', 5, 'Not Responded', 'N/A'),
(93, 93, 93, '2024-12-2','The instructions were unclear.', 'Negative', 'Google Reviews', 2, 'Responded', 'Update instructions'),
(94, 94, 94, '2024-12-3','Loved the ambiance!', 'Positive', 'Facebook', 5, 'Not Responded', 'N/A'),
(95, 95, 95, '2024-12-4','I will never buy this again.', 'Negative', 'Amazon', 1, 'Responded', 'Improve quality'),
(96, 96, 96, '2024-12-5','Excellent quality and service!', 'Positive', 'Zomato', 5, 'Not Responded', 'N/A'),
(97, 97, 97, '2024-12-6','Customer service was unhelpful.', 'Negative', 'Yelp', 1, 'Responded', 'Improve training'),
(98, 98, 98, '2024-12-7','Best purchase I’ve made!', 'Positive', 'Online Store', 5, 'Not Responded', 'N/A'),
(99, 99, 99, '2024-12-8','Not worth the price at all.', 'Negative', 'TripAdvisor', 2, 'Responded', 'Adjust pricing'),
(100, 100, 100, '2024-12-9','I would come back anytime!', 'Positive', 'Google Reviews', 5, 'Not Responded', 'N/A');


---- SQL Queries for Feedback Extraction and Analysis ----

-- Get All Feedback with Customer Names --
SELECT 
    f.feedback_id,
    c.customer_name,
    f.feedback_date,
    fc.category_name,
    f.feedback_description,
    f.rating,
    f.response_status,
    f.improvement_suggested
FROM 
    FeedbackForms f
JOIN 
    Customers c ON f.customer_id = c.customer_id
JOIN 
    FeedbackCategories fc ON f.category_id = fc.category_id;


-- Average Rating per Feedback Category --
SELECT 
    fc.category_name,
    AVG(f.rating) AS average_rating
FROM 
    FeedbackForms f
JOIN 
    FeedbackCategories fc ON f.category_id = fc.category_id
GROUP BY 
    fc.category_name;


-- Feedback Count by Customer --
SELECT 
    c.customer_name,
    COUNT(f.feedback_id) AS feedback_count
FROM 
    FeedbackForms f
JOIN 
    Customers c ON f.customer_id = c.customer_id
GROUP BY 
    c.customer_name;

-- Feedback Trend by Month --
SELECT 
    MONTH(f.feedback_date) AS feedback_month,
    YEAR(f.feedback_date) AS feedback_year,
    COUNT(f.feedback_id) AS feedback_count
FROM 
    FeedbackForms f
GROUP BY 
    YEAR(f.feedback_date), MONTH(f.feedback_date)
ORDER BY 
    feedback_year, feedback_month;

-- Top 5 Most Common Feedback Categories --
SELECT TOP 5
    fc.category_name,
    COUNT(f.feedback_id) AS feedback_count
FROM 
    FeedbackForms f
JOIN 
    FeedbackCategories fc ON f.category_id = fc.category_id
GROUP BY 
    fc.category_name
ORDER BY 
    feedback_count DESC ;

-- Feedback Without Responses --
SELECT 
    f.feedback_id,
    c.customer_name,
    f.feedback_date,
    fc.category_name,
    f.feedback_description
FROM 
    FeedbackForms f
JOIN 
    Customers c ON f.customer_id = c.customer_id
JOIN 
    FeedbackCategories fc ON f.category_id = fc.category_id
WHERE 
    f.response_status IS NULL OR f.response_status = 'Not Responded';

-- Feedback Count by Sentiment --
SELECT 
    f.sentiment,
    COUNT(f.feedback_id) AS sentiment_count
FROM 
    FeedbackForms f
GROUP BY 
    f.sentiment;

-- Feedback with Low Rating --
SELECT 
    f.feedback_id,
    c.customer_name,
    f.feedback_date,
    fc.category_name,
    f.feedback_description,
    f.rating
FROM 
    FeedbackForms f
JOIN 
    Customers c ON f.customer_id = c.customer_id
JOIN 
    FeedbackCategories fc ON f.category_id = fc.category_id
WHERE 
    f.rating < 3
ORDER BY 
    f.rating ASC;

-- Count of Feedback Responses by Status --
SELECT 
    response_status,
    COUNT(*) AS response_count
FROM 
    FeedbackForms
GROUP BY 
    response_status;

-- Count of Improvement Suggestions Provided --
SELECT 
    COUNT(f.feedback_id) AS improvement_suggestion_count
FROM 
    FeedbackForms f
WHERE 
    f.improvement_suggested IS NOT NULL;






--SELECT * from Customers ;

--SELECT * FROM FeedbackCategories ;

--SELECT * FROM FeedbackForms ;
