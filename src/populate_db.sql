---------------------------------------------
-------Task #2 - Populate the Database-------
---------------------------------------------
INSERT INTO employees (full_name, salary, technical_level, birth_date)
VALUES
    ('Tom Hanks', 900, 'Trainee', '1956-07-09'),
    ('Meryl Streep', 1100, 'Junior', '1949-06-22'),
    ('Leonardo DiCaprio', 2500, 'Middle', '1974-11-11'),
    ('Cate Blanchett', 4500, 'Senior', '1969-05-14'),
    ('Brad Pitt', 800, 'Trainee', '1963-12-18'),
    ('Julia Roberts', 1200, 'Junior', '1967-10-28'),
    ('Denzel Washington', 3000, 'Middle', '1954-12-28'),
    ('Natalie Portman', 5500, 'Senior', '1981-06-09'),
    ('Johnny Depp', 950, 'Trainee', '1963-06-09'),
    ('Charlize Theron', 1050, 'Junior', '1975-08-07');

INSERT INTO clients (full_name, birth_date)
VALUES
    ('Morgan Freeman', '1937-06-01'),
    ('Helen Mirren', '1945-07-26'),
    ('Denzel Washington', '1954-12-28'),
    ('Meryl Streep', '1949-06-22'),
    ('Judi Dench', '1934-12-09');

INSERT INTO projects (project_name, start_date, finish_date)
VALUES
    ('Project Io', '2023-01-01', '2023-03-15'),
    ('Project Callisto', '2022-11-15', '2023-02-28'),
    ('Project Ganymede', '2023-04-10', '2023-07-20'),
    ('Project Titan', '2023-03-01', '2023-06-30'),
    ('Project Europa', '2023-02-15', '2023-05-31'),
    ('Project Pluto', '2022-05-01', '2023-08-10'),
    ('Project Mercury', '2023-06-20', '2024-09-30'),
    ('Project Uranus', '2023-04-05', '2024-07-15'),
    ('Project Neptune', '2023-03-15', '2023-04-25'),
    ('Project Mars', '2023-07-01', '2024-10-15');

INSERT INTO project_assignments (project_id, employee_id)
VALUES
    (1, 1), (1, 2),
    (2, 3), (2, 4),
    (3, 5),(3, 6),
    (4, 1),(4, 7),(4, 8),(4, 9)
    (5, 8),
    (6, 9),
    (7, 10),
    (8, 7), (8, 8),
    (9, 2), (9, 9),
    (10, 1), (10, 3), (10, 3), (10, 4), (10, 10),
    (11, 4), (11, 7), (11, 10),
    (12, 7);