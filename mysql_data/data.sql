DROP database IF EXISTS `docker_database`;
create database `docker_database` default character set utf8 collate utf8_general_ci;
use docker_database; 
DROP TABLE IF EXISTS `person`; 
CREATE TABLE `user` (    
    `id` bigint(20) NOT NULL,     
    `name` varchar(255) DEFAULT NULL,     
    `age` bigint(20) NOT NULL,    
    PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 
INSERT INTO `user` (`id`,`name`,`age` ) VALUES(0,'Tom',18);
