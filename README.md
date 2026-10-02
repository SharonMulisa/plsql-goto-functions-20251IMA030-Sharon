# PLSQL GOTO and Functions Assignment
Student: Sharon Mulisa - 20251IMA030

## Repository Structure
- 00_setup/ - Table creation scripts
- 01_goto/ - 4 GOTO examples (A1-A4)
- 02_functions/ - 4 Functions (B1-B4)
- 03_tests/ - Combined tests (C1)

## Description
This assignment demonstrates:
1. Use of GOTO statement in PL/SQL and its alternatives
2. Creation of stored functions for salary calculation, grading, odd/even check, and discount calculation
3. Best practices to avoid GOTO using IF-ELSE and LOOPs

## How to Run
```sql
SET SERVEROUTPUT ON;
@00_setup/create_tables.sql
@01_goto/A1_basic_goto.sql
@02_functions/B1_fn_annual_salary.sql
@03_tests/C1_tests.sql
