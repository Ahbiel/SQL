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

CREATE TABLE estudos.users (
	id INT auto_increment NOT NULL,
	name varchar(150) NOT NULL,
    
	CONSTRAINT primary_key_id PRIMARY KEY (id),
)

CREATE TABLE estudos.users_roles (
	id INT auto_increment NOT NULL,
	name varchar(150) NOT NULL,
    
	CONSTRAINT primary_key_id PRIMARY KEY (id),
)

-- Cria a foreign key na tabela users_roles, apontando para as outras duas tabelas por meio da chave primária composta
CREATE TABLE estudos.users_roles (
	user_id INT NOT NULL,
	role_id INT NOT NULL,
	CONSTRAINT users_roles_pk PRIMARY KEY (user_id,role_id),
	CONSTRAINT users_roles_users_FK FOREIGN KEY (user_id) REFERENCES estudos.users(id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT users_roles_roles_FK FOREIGN KEY (role_id) REFERENCES estudos.roles(id) ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE TABLE estudos.profile (
	id INT UNSIGNED NOT NULL,
	bio TEXT NULL,
	description TEXT NULL,
	user_id INT NOT NULL,
	CONSTRAINT profile_pk PRIMARY KEY (id),
	CONSTRAINT profile_unique UNIQUE KEY (user_id),
	CONSTRAINT profile_users_FK FOREIGN KEY (user_id) REFERENCES estudos.users(id) ON DELETE CASCADE ON UPDATE CASCADE
)


ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;