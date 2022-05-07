use classing;

CREATE TABLE IF NOT EXISTS `ctChats` (
  `ctchSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ctchDefaultNy` TINYINT NULL,
  `ctchDelNy` TINYINT NOT NULL,
  `ctchId` VARCHAR(100) NULL,
  `ctchUser` INT NULL,
  `ctchChannel` INT NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ctchSeq1` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ctchSeq`),
  INDEX `fk_ctChats_ctChannels1_idx` (`ctchSeq1` ASC) VISIBLE,
  CONSTRAINT `fk_ctChats_ctChannels1`
    FOREIGN KEY (`ctchSeq1`)
    REFERENCES `ctChannels` (`ctchSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;