-- Users
INSERT INTO Users (name, email, join_date) VALUES
('Alice', 'alice@example.com', '2023-01-10'),
('Bob', 'bob@example.com', '2023-02-15'),
('Charlie', 'charlie@example.com', '2023-03-20');

-- Subscriptions
INSERT INTO Subscriptions (user_id, service_name, plan_type, start_date, end_date, status) VALUES
(1, 'Netflix', 'Basic', '2023-01-10', '2024-01-10', 'active'),
(1, 'Spotify', 'Premium', '2023-01-15', '2024-01-15', 'active'),
(2, 'Netflix', 'Premium', '2023-02-15', '2024-02-15', 'active'),
(3, 'Spotify', 'Basic', '2023-03-20', '2024-03-20', 'inactive');

-- Usage
INSERT INTO Usage (user_id, service_name, date, usage_metric) VALUES
(1, 'Netflix', '2023-02-01', 120),
(1, 'Spotify', '2023-02-01', 200),
(2, 'Netflix', '2023-02-20', 300),
(3, 'Spotify', '2023-03-25', 50);