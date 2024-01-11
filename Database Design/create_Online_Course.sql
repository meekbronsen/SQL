-- MySQL Workbench Synchronization
-- Generated: 2023-07-07 15:38
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: meek

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `online_courses`  DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci ;

ALTER TABLE `online_courses`.`Courses` 
DROP FOREIGN KEY `fk_Courses_Instructors`;

ALTER TABLE `online_courses`.`enrollments` 
DROP FOREIGN KEY `fk_enrollments_Courses`;

ALTER TABLE `online_courses`.`course_tags` 
DROP FOREIGN KEY `fk_course_tags_Courses1`;

ALTER TABLE `online_courses`.`students` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `online_courses`.`Courses` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `online_courses`.`enrollments` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
ADD COLUMN `coupon` VARCHAR(50) NULL DEFAULT NULL AFTER `price`;

ALTER TABLE `online_courses`.`tags` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `online_courses`.`course_tags` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `online_courses`.`Instructors` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `online_courses`.`Courses` 
ADD CONSTRAINT `fk_Courses_Instructors`
  FOREIGN KEY (`Instructors_Instructor_id`)
  REFERENCES `online_courses`.`Instructors` (`Instructor_id`)
  ON DELETE NO ACTION
  ON UPDATE CASCADE;

ALTER TABLE `online_courses`.`enrollments` 
DROP FOREIGN KEY `fk_enrollments_students`;

ALTER TABLE `online_courses`.`enrollments` ADD CONSTRAINT `fk_enrollments_students`
  FOREIGN KEY (`student_id`)
  REFERENCES `online_courses`.`students` (`student_id`)
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_enrollments_Courses`
  FOREIGN KEY (`course_id`)
  REFERENCES `online_courses`.`Courses` (`course_id`)
  ON DELETE NO ACTION
  ON UPDATE CASCADE;

ALTER TABLE `online_courses`.`course_tags` 
DROP FOREIGN KEY `fk_course_tags_tags1`;

ALTER TABLE `online_courses`.`course_tags` ADD CONSTRAINT `fk_course_tags_tags1`
  FOREIGN KEY (`tags_tag_id`)
  REFERENCES `online_courses`.`tags` (`tag_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_course_tags_Courses1`
  FOREIGN KEY (`Courses_course_id`)
  REFERENCES `online_courses`.`Courses` (`course_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
