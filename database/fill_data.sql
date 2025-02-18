
INSERT INTO Brand (BrandID, name)
VALUES
    (1, 'Honda'),
    (2, 'Yamaha'),
    (3, 'Suzuki'),
    (4, 'Bmw'),
    (5, 'Mercedes')
    (6, 'Volkswagen');


INSERT INTO Category (CategoryID, name)
VALUES
    (1, 'Sedan'),
    (2, 'Hatchback'),
    (3, 'Coupe'),
    (4, 'Jeep'),
    (5, 'Station wagon'),
    (6, 'Muscle Car');


INSERT INTO Model (name, FkBrandID, creationDate, engineVol, engineType)
VALUES
    ('VW Jetta', 6, '2000-01-01', 1600, 'benzin');
