-- https://www.hackerrank.com/challenges/print-prime-numbers/problem?isFullScreen=true

WITH RECURSIVE numbers AS (
    SELECT 2 AS n
    UNION ALL
    SELECT n + 1 FROM numbers WHERE n < 1000
)
SELECT GROUP_CONCAT(n SEPARATOR '&') AS prime_numbers
FROM numbers
WHERE NOT EXISTS (
    SELECT 1 FROM numbers AS x WHERE x.n < numbers.n AND numbers.n % x.n = 0 AND x.n > 1
);
