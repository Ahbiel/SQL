CREATE TABLE estudos.users (
	id INT auto_increment NOT NULL,
	first_name varchar(150) NOT NULL,
	last_name varchar(150) NULL,
	email varchar(255) NOT NULL,
	password_hash varchar(255) NOT NULL,
    creted_at DATETIME DEFAULT now(),
    updated_at DATETIME DEFAULT now on update now()
	CONSTRAINT primary_key_id PRIMARY KEY (id),
	CONSTRAINT unique_email UNIQUE KEY (email),
	CONSTRAINT unique_password_hash UNIQUE KEY (password_hash)
)

ALTER TABLE users ADD COLUMN created_at DATETIME DEFAULT now() NULL;
ALTER TABLE users ADD COLUMN updated_at DATETIME DEFAULT now() on update now() 
