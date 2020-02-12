INSERT INTO items (name,comment,visibility) VALUES ('First item','This is a comment...','Visible');
SELECT @last := LAST_INSERT_ID();
INSERT INTO `geo` 
(`coordinate`, `item_id`) 
VALUES
(PointFromText('POINT(40.71727401 -74.00898606)'), @last);