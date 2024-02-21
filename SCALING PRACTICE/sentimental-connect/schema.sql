CREATE TABLE `Users`(
     `id` INT AUTO_INCREMENT PRIMARY KEY,
     `first_name` VARCHAR(50) NOT NULL,
     `last_name` VARCHAR(50) NOT NULL,
     `username` VARCHAR(20) NOT NULL,
     `password` VARCHAR(128) NOT NULL
);

CREATE TABLE `Universities`(
     `id` INT AUTO_INCREMENT PRIMARY KEY,
     `school_name` VARCHAR(50) NOT NULL,
     `school_type` ENUM('Primary','Secondary','Higher Education'),
     `school_location` VARCHAR(50) NOT NULL,
     `year_founded` INT

);

CREATE TABLE `companies`(
     `id` INT AUTO_INCREMENT PRIMARY KEY,
     `comp_name` VARCHAR(50) NOT NULL,
     `comp_type` ENUM('Technology','Education','Business'),
     `comp_location` VARCHAR(50)
);

CREATE TABLE `SchoolConnections`(
     `id` INT AUTO_INCREMENT PRIMARY KEY,
     `user_id` INT NOT NULL,
     `school_id` INT NOT NULL,
     `aff_start` DATE,
     `aff_end` DATE,
     `degree_type` ENUM('BA','MA','PhD'),
     FOREIGN KEY(`user_id`) REFERENCES `Users`(`id`),
     FOREIGN KEY(`school_id`) REFERENCES `Universities`(`id`)
);

CREATE TABLE `CompanyConnections`(
     `id` INT AUTO_INCREMENT PRIMARY KEY,
     `user_id` INT,
     `company_id` INT NOT NULL,
     `aff_start` DATE,
     `aff_end` DATE,
     `title` VARCHAR(50),
     FOREIGN KEY(`user_id`) REFERENCES `Users`(`id`),
     FOREIGN KEY(`company_id`) REFERENCES `companies`(`id`)

);

CREATE TABLE `PeopleConnections`(
     `id` INT AUTO_INCREMENT PRIMARY KEY,
     `user_id` INT NOT NULL,
     `follows_id` INT NOT NULL,
     FOREIGN KEY(`user_id`) REFERENCES `Users`(`id`),
     FOREIGN KEY(`follows_id`) REFERENCES `Users`(`id`)
);
