MODEL (
  name silver.accounts_2,
  kind FULL,
  owner 'Darren',
  column_descriptions (
    AccountNumber = 'The Account Number of the account',
    CustomerNumber = 'The Customer Number of the account owner',
    AccountOpenedDate = 'The date the account was opened',
    StartingBalance = 'The balance when the account was initially opened'
  )
);

SELECT
  AccountNumber::STRING,
  CustomerNumber::STRING,
  AccountOpenedDate::TIMESTAMP_NTZ AS AccountOpenedDate,
  StartingBalance::DECIMAL(15, 2) AS StartingBalance
FROM bronze.accounts_2