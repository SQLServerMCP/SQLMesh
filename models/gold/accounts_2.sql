MODEL (
  name gold.accounts_2,
  kind FULL,
  owner 'Darren',
  column_descriptions (
    AccountNumber = 'The Account Number of the account',
    CustomerNumber = 'The Customer Number of the account owner',
    AccountOpenedYear = 'The Year the account was opened',
    AccountOpenedMonth = 'The Month the account was opened',
    AccountOpenedDay = 'The Day the account was opened',
    AccountOpenedDayName = 'The Day Name the account was opened',
    StartingBalance = 'The balance when the account was initially opened'
  )
);

SELECT
  AccountNumber::STRING,
  CustomerNumber::STRING,
  YEAR(AccountOpenedDate)::INT AS AccountOpenedYear,
  MONTH(AccountOpenedDate)::INT AS AccountOpenedMonth,
  DAY(AccountOpenedDate)::INT AS AccountOpenedDay,
  DAYNAME(AccountOpenedDate)::STRING AS AccountOpenedDayName,
  StartingBalance::DECIMAL(15, 2) AS StartingBalance
FROM silver.accounts_2