
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    wallet_address VARCHAR NOT NULL,
    user_email VARCHAR NOT NULL,
    backup_email VARCHAR NOT NULL,
    passwordHash VARCHAR NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE contacts (
    id SERIAL PRIMARY KEY,
    user_email VARCHAR NOT NULL,
    contact_name VARCHAR NOT NULL,
    contact_email VARCHAR NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    user_email VARCHAR NOT NULL,
    token VARCHAR NOT NULL,
    amount VARCHAR NOT NULL,
    transaction_type VARCHAR NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE notifications (
    id SERIAL PRIMARY KEY,
    user_email VARCHAR NOT NULL,
    message VARCHAR NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

