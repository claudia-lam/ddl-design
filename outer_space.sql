CREATE TABLE moons(
    name TEXT PRIMARY KEY NOT NULL UNIQUE
);

CREATE TABLE stars(
    name TEXT PRIMARY KEY NOT NULL UNIQUE,
    temp_in_kelvin NUMERIC NOT NULL
);

CREATE TABLE planets(
    name TEXT PRIMARY KEY NOT NULL UNIQUE,
    orbital_period INT NOT NULL,
    star TEXT REFERENCES stars,
    moons TEXT REFERENCES moons
);

