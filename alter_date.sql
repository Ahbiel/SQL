CREATE TABLE estudos.users (
	id INT auto_increment NOT NULL,
	first_name varchar(150) NOT NULL,
	last_name varchar(150) NULL,
	email varchar(255) NOT NULL,
	password_hash varchar(255) NOT NULL,
    created_at DATETIME DEFAULT now NULL,
    updated_at DATETIME DEFAULT now on update now() NULL
	CONSTRAINT primary_key_id PRIMARY KEY (id),
	CONSTRAINT unique_email UNIQUE KEY (email),
	CONSTRAINT unique_password_hash UNIQUE KEY (password_hash)
)

ALTER TABLE estudos.users ADD created_at DATETIME DEFAULT now() NULL;
ALTER TABLE estudos.users ADD updated_at DATETIME DEFAULT now() on update now() NULL;
