-- Phase 1: Replace JOIN query with subquery
SELECT
  toys.name
FROM
  toys
  JOIN cats ON (toys.cat_id = cats.id)
WHERE
  cats.name = 'Garfield';

--  using a subquery
SELECT
  toys.name
FROM
  toys
WHERE
  cat_id IN (
    SELECT
      id
    FROM
      cats
    WHERE
      name = 'Garfield'
  );

-- Phase 2: Dynamic INSERT using subquery
INSERT INTO
  toys (cat_id, name)
SELECT
  id,
  'Pepperoni'
FROM
  cats
WHERE
  name = 'Garfield';

SELECT
  *
FROM
  toys;
