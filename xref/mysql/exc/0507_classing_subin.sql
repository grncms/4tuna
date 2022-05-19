use classing;

select * from Member;

select 
ctptSeq
,ctptTitle
,ctptContent 
,(select ctcmName from ctClassMember where ctptWriter = ctcmSeq ) as writer
,(select ifcdName from infrCode where b.ctbotypecd = infrCode.ifcdSeq) as category
,b.regDateTime 
from ctPost a 
left join ctBoard b on b.ctboSeq = a.ctboSeq; 

use classing;

CREATE TABLE IF NOT EXISTS `ctHomeworkSubmit` (
  `cthsSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cthsTitle` VARCHAR(255) NULL,
  `cthsDesc` VARCHAR(255) NULL,
  `cthsData` VARCHAR(255) NULL,
  `cthsUseNy` INT NOT NULL,
  `cthsDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `cthpSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`cthsSeq`),
  INDEX `fk_ctHomeworkPost_copy1_ctHomeworkPost1_idx` (`cthpSeq` ASC) VISIBLE,
  CONSTRAINT `fk_ctHomeworkPost_copy1_ctHomeworkPost1`
    FOREIGN KEY (`cthpSeq`)
    REFERENCES `ctHomeworkPost` (`cthpSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;