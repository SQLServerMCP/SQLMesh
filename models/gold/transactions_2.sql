MODEL (
  name gold.transactions_2,
  kind INCREMENTAL_BY_UNIQUE_KEY (
    unique_key (AccountNumber, TransactionDate, TransactionAmount)
  ),
  owner 'Darren',
  column_descriptions (
    AccountNumber = 'The Account Number of the account',
    CustomerNumber = 'The Customer Number of the account owner',
    TransactionYear = 'The Year the transaction occurred',
    TransactionMonth = 'The Month the transaction occurred',
    TransactionMonthName = 'The MonthName the transaction occurred',
    TransactionDay = 'The Day the transaction occurred',
    TransactionDayName = 'The Day Name the transaction occurred',
    TransactionAmount = 'The amount of the transaction'
  )
);

SELECT
  AccountNumber::STRING,
  CustomerNumber::STRING,
  YEAR(TransactionDate)::INT AS TransactionYear,
  MONTH(TransactionDate)::INT AS TransactionMonth,
  MONTHNAME(TransactionDate)::STRING AS TransactionMonthName,
  DAY(TransactionDate)::INT AS TransactionDay,
  DAYNAME(TransactionDate)::STRING AS TransactionDayName,
  TransactionAmount::DECIMAL(15, 2) AS TransactionAmount
FROM silver.transactions_2