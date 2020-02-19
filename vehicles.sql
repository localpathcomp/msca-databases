CREATE table vehicles (
    id int(11) auto_increment primary key,
    vin varchar(17),
    vehicle_type varchar(22),
    vehicle_year int(4),
    make varchar(44),
    model varchar(44),
    color varchar(22),
    engine_type varchar(22),
    engine_capacity varchar(11),
    transmission varchar(22),
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted DATETIME DEFAULT NULL
);

INSERT INTO vehicles (vin,vehicle_type,vehicle_year,make,model,color,engine_type,engine_capacity,transmission) VALUES ('X7234KDIKEIDKEI89','SUV','1994','FORD','EXPLORER','WHITE','V-8 FLEX FUEL','4.7L','AUTOMATIC');

INSERT INTO vehicles (vin,vehicle_type,vehicle_year,make,model,color,engine_type,engine_capacity,transmission) VALUES ('7320034DRED009275','SEDAN','2015','CHEVROLET','IMPALA','SILVER','V-6 HYBRID','3.0L','AUTOMATIC');

CREATE TABLE locations (
    id int(11) auto_increment primary key,
    name varchar(44),
    address varchar(44),
    city varchar(44),
    state varchar(2),
    zip varchar(11),
    phone varchar(17),
    fax varchar(17)
);

CREATE TABLE inventory (
    vehicle_id int(11) REFERENCES vehicles(id),
    location_id int(11) REFERENCES locations(id)
);

INSERT INTO vehicles (vin,vehicle_type,vehicle_year,make,model,color,engine_type,engine_capacity,transmission) VALUES ('732REW4DRED009275','TRUCK','2008','CHEVROLET','SILVERADO','RED','V-8','5.3L','AUTOMATIC');
SELECT @last := LAST_INSERT_ID();
INSERT INTO inventory (vehicle_id,location_id) VALUES (@last,4);

INSERT INTO locations (name,address,city,state,zip,phone,fax) VALUES ('A-1 Auto','123 Main','Jackson','MS','39232','601-555-5555','601-555-5556');
SELECT LAST_INSERT_ID();

INSERT INTO locations (name,address,city,state,zip,phone,fax) VALUES ('Corner Auto','231 Main','Pearl','MS','39208','601-555-4455','601-555-4456');

insert into inventory(vehicle_id,location_id) values (1,2),(2,1);

update inventory set location_id=2 where location_id=4;

select * from inventory i join vehicles v on i.vehicle_id=v.id where location_id=2;