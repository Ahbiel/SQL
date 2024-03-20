CREATE TABLE estudos.users (
	id INT auto_increment NOT NULL,
	first_name varchar(150) NOT NULL,
	last_name varchar(150) NULL,
	email varchar(255) NOT NULL,
	password_hash varchar(255) NOT NULL,
    
	CONSTRAINT primary_key_id PRIMARY KEY (id),
	CONSTRAINT unique_email UNIQUE KEY (email),
	CONSTRAINT unique_password_hash UNIQUE KEY (password_hash)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;