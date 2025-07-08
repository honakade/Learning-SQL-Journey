# Parks and Recreation Employee Data - SQL Practice
---

## Project Overview  

This project uses Parks and Recreation-themed employee data to practice core SQL concepts, including:
- SELECT statements
- WHERE filtering
- Logical operators
- Pattern matching with LIKE
- Sorting with ORDER BY
- Limiting results with LIMIT
- Grouping and aggregation with GROUP BY, HAVING
- Table aliasing
- Schema-qualified queries

## Database Schema  

The project uses three main tables:
- **employee_demographics**: Employee personal data (first name, last name, gender, age, birth date)
- **employee_salary**: Employee job data (employee id, first name, last name, occupation, salary, dept id)
- **parks_departments**: Department details (department id, department name)

## Key SQL Concepts Covered  

- SELECT * and column lists
- WHERE conditions ( =, !=, >, < )
- AND, OR, NOT
- LIKE for pattern matching
- ORDER BY ASC/DESC
- LIMIT and OFFSET
- GROUP BY with aggregate functions (COUNT, AVG, MIN, MAX)
- HAVING vs WHERE with aggregates
- Aliasing columns
- Schema-qualified table access

## Sample Business Questions  

### Solving Real-World Business Problems with SQL  

#### **Problem 1:** View the entire employee demographic data
```sql
SELECT *
FROM parks_and_recreation.employee_demographics;
```

#### **Problem 2:** List first and last names with age + 10 times 10
```sql
SELECT
    first_name,
    last_name,
    birth_date,
    age,
    (age + 10) * 10 AS calculated_column
FROM parks_and_recreation.employee_demographics;

```

#### **Problem 3:** What genders exist in the data?
```sql
SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

```

#### **Problem 4:** Who earns over $50,000?
```sql
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

```

#### **Problem 5:** Female Employees only
```sql
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = 'Female';

```

#### **Problem 6:** Exclude Female employees
```sql
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female';

```

#### **Problem 7:** Employees born after 1985
```sql
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01';

```

#### **Problem 8:** Male employees born after 1985
```sql
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01' AND gender = 'male';

```

#### **Problem 9:** Employees who are either male or born after 1985
```sql
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01' OR gender = 'male';

```
#### **Problem 10:** Leslie aged 44 or anyone over 55
```sql
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;

```

#### **Problem 11:** Names starting with 'A'
```sql
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'A%';

```

#### **Problem 12:** Names with 3 letters starting with 'A'
```sql
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'A__';

```
#### **Problem 13:** Sort employees by first name A-Z
```sql
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name;

```

#### **Problem 11:** Sort by gender, then age descending
```sql
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age DESC;


```


#### **Problem 1:** Show only the first 3 employees
```sql
SELECT *
FROM parks_and_recreation.employee_demographics
LIMIT 3;

```

#### **Problem 2:** Aggregate age statistics by gender
```sql
SELECT
    gender,
    AVG(age) AS avg_age,
    MAX(age) AS oldest,
    MIN(age) AS youngest,
    COUNT(*) AS num_people
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

```

#### **Problem 3:** Show average age with customer column name
```sql
SELECT
    gender,
    AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender;


```

#### **Problem 4:** Only show groups with average age > 40
```sql
SELECT
    gender,
    AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

```

#### **Problem 5:** Managers with average salary over $75,000
```sql
SELECT
    occupation,
    AVG(salary) AS avg_salary
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;


```
## Conclusion  

This project serves as hands-on practice to strengthen core SQL skills using employee and department datasets. It covers essential concepts like filtering, grouping, ordering, and aliasing, helping to build a solid foundation for data analysis. This repository reflects my journey in mastering SQL basics through practical exercises.

