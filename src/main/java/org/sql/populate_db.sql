--table fillin
INSERT INTO worker (NAME, BIRTHDAY, LEVEL, SALARY)
VALUES
    ('Michael Johnson', '1985-09-23', 'Middle', 3000),
    ('Alex', '1985-09-23', 'Trainee', 751),
    ('Alford', '1985-09-20', 'Junior', 365),
    ('Ravi Kumar', '1985-09-22', 'Senior', 4562),
    ('Santakumar', '1985-09-29', 'Trainee', 2238),
    ('Lucida', '1985-09-23', 'Junior', 5000),
    ('Anderson', '1985-09-28', 'Senior', 1447),
    ('Subbarao', '1985-09-27', 'Senior', 3466),
    ('Mukesh', '1985-09-21', 'Junior', 2964),
    ('McDen', '1985-09-24', 'Trainee', 255);

INSERT INTO client (NAME)
VALUES
('YULIIA'),
('YAHOR'),
('ASSOL'),
('INNA'),
('LILIIA');

-- Перед виконанням цього запиту, переконайтеся, що у вас вже є дані у таблиці worker.
-- Виконайте додавання працівників з попередньої відповіді, якщо цього ще не було зроблено.

-- Заповнення таблиці project з випадковими тривалостями від 1 до 100 місяців.
INSERT INTO project (CLIENT_ID, START_DATE, FINISH_DATE)
VALUES
    (1, DATEADD('MONTH', -FLOOR(RAND() * 99) - 1, CURRENT_DATE), CURRENT_DATE),
    (2, DATEADD('MONTH', -FLOOR(RAND() * 99) - 1, CURRENT_DATE), CURRENT_DATE),
    (3, DATEADD('MONTH', -FLOOR(RAND() * 99) - 1, CURRENT_DATE), CURRENT_DATE),
    (4, DATEADD('MONTH', -FLOOR(RAND() * 99) - 1, CURRENT_DATE), CURRENT_DATE),
    (5, DATEADD('MONTH', -FLOOR(RAND() * 99) - 1, CURRENT_DATE), CURRENT_DATE),
    (1, DATEADD('MONTH', -FLOOR(RAND() * 99) - 1, CURRENT_DATE), CURRENT_DATE),
    (2, DATEADD('MONTH', -FLOOR(RAND() * 99) - 1, CURRENT_DATE), CURRENT_DATE),
    (3, DATEADD('MONTH', -FLOOR(RAND() * 99) - 1, CURRENT_DATE), CURRENT_DATE),
    (4, DATEADD('MONTH', -FLOOR(RAND() * 99) - 1, CURRENT_DATE), CURRENT_DATE),
    (5, DATEADD('MONTH', -FLOOR(RAND() * 99) - 1, CURRENT_DATE), CURRENT_DATE);






    ИЛИ ТАК
    -- Заповнення таблиці project_worker з випадковим назначенням працівників на проєкти
    INSERT INTO project_worker (PROJECT_ID, WORKER_ID)
    SELECT
      project.ID AS PROJECT_ID,
      worker.ID AS WORKER_ID
    FROM
      project,
      worker
    WHERE
      (SELECT COUNT(*) FROM project_worker WHERE PROJECT_ID = project.ID) < 5
      AND RAND() < 0.5 -- Ймовірність назначення працівника на проєкт
    LIMIT 10; -- Кількість назначень працівників на проєкти

