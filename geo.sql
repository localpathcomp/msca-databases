CREATE TABLE `geo` (
  `coordinate` POINT NOT NULL,
  SPATIAL INDEX `SPATIAL` (`coordinate`),
  item_id SMALLINT UNSIGNED NOT NULL REFERENCES item(id)
) ENGINE=MyISAM;


INSERT INTO `geo` 
(`coordinate`, `item_id`) 
VALUES
(PointFromText('POINT(40.71727401 -74.00898606)'));