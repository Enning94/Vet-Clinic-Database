/* Database schema to keep the structure of entire database. */
-- create animals table
CREATE TABLE animals (
        id INT GENERATED ALWAYS AS IDENTITY,
        name VARCHAR(255),
        date_of_birth DATE,
        escape_attempts INT,
        neutered BOOLEAN,
        weight_kg DECIMAL
    );
-- ALTER animals table
ALTER TABLE animals 
        ADD COLUMN species VARCHAR(100);

-- create owners table
CREATE TABLE owners (
      id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
      full_name VARCHAR(255),
      age INT
    );

    -- create species table
CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(225)
    );

-- ALTER animals table
ALTER TABLE animals
        ADD PRIMARY KEY (id),
        DROP species,
        ADD COLUMN species_id INT REFERENCES species(id),
        ADD COLUMN owner_id INT REFERENCES owners(id);

