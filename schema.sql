-- Users table
CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    join_date DATE
);

-- Subscriptions table
CREATE TABLE Subscriptions (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(id),
    service_name VARCHAR(50),
    plan_type VARCHAR(20),
    start_date DATE,
    end_date DATE,
    status VARCHAR(20)
);

-- Usage table
CREATE TABLE Usage (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(id),
    service_name VARCHAR(50),
    date DATE,
    usage_metric INT
);