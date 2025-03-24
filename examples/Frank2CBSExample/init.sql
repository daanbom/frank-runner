CREATE SCHEMA memory.test_schema;

CREATE TABLE memory.test_schema.test_data (
  id INTEGER,
  name VARCHAR,
  value DOUBLE,
  created_date DATE
);


INSERT INTO memory.test_schema.test_data VALUES
  (1, 'Item A', 10.5, DATE '2025-01-15'),
  (2, 'Item B', 20.75, DATE '2025-01-16'),
  (3, 'Item C', 15.25, DATE '2025-01-17'),
  (4, 'Item D', 30.0, DATE '2025-01-18'),
  (5, 'Item E', 45.5, DATE '2025-01-19'),
  (6, 'Item F', 12.25, DATE '2025-01-20'),
  (7, 'Item G', 18.75, DATE '2025-01-21'),
  (8, 'Item H', 22.5, DATE '2025-01-22'),
  (9, 'Item I', 33.8, DATE '2025-01-23'),
  (10, 'Item J', 27.9, DATE '2025-01-24');

CREATE TABLE memory.test_schema.cbs_data (
  Geslacht VARCHAR,
  Leeftijd VARCHAR,
  RegioS VARCHAR,
  Perioden VARCHAR,
  Bevolking INTEGER
);

CREATE TABLE memory.test_schema.gender_metadata (
  Key VARCHAR,
  Title VARCHAR,
  Description VARCHAR,
  CategoryGroupID VARCHAR
);

CREATE TABLE memory.test_schema.age_metadata (
  Key VARCHAR,
  Title VARCHAR,
  Description VARCHAR,
  CategoryGroupID VARCHAR
);