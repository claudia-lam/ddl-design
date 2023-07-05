CREATE TABLE stars(
    name TEXT PRIMARY KEY NOT NULL UNIQUE,
    temp_in_kelvin NUMERIC NOT NULL
);

CREATE TABLE planets(
    name TEXT PRIMARY KEY NOT NULL UNIQUE,
    orbital_period INT NOT NULL,
    star TEXT REFERENCES stars
);

CREATE TABLE moons(
    name TEXT PRIMARY KEY UNIQUE,
    planet TEXT REFERENCES planets
);


INSERT INTO stars(name, temp_in_kelvin)
    VALUES
    ('The Sun', 5800),
    ('Proxima Centauri', 3042),
    ('Gliese 876', 3192);

INSERT INTO planets(name, orbital_period, star)
    VALUES
    ('Earth', 1.00,'The Sun'),
    ('Mars', 1.882,'The Sun'),
    ('Venus', 0.62,'The Sun'),
    ('Proxima Centauri b', 0.03,'Proxima Centauri'),
    ('Gliese 876 b', 0.236,'Gliese 876');

INSERT INTO moons(name, planet)
    VALUES
    ('The Moon', 'Earth'),
    ('Phobos', 'Mars'),
    ('Deimos', 'Mars');

SELECT p.name, p.star, COUNT(m.planet)
    FROM planets as p
    LEFT JOIN stars as s
        ON p.star = s.name
    LEFT JOIN moons as m
        ON m.planet = p.name

