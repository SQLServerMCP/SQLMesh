MODEL (
  name silver.transactions_2,
  kind INCREMENTAL_BY_UNIQUE_KEY (
    unique_key (AccountNumber, TransactionDate, TransactionAmount)
  ),
  owner 'Darren',
  column_descriptions (
    AccountNumber = 'The Account Number of the account',
    CustomerNumber = 'The Customer Number of the account owner',
    TransactionDate = 'The date of the account transaction',
    TransactionAmount = 'The amount of the transaction'
  )
);

SELECT
  AccountNumber::STRING,
  CustomerNumber::STRING,
  TransactionDate::TIMESTAMP_NTZ AS TransactionDate,
  TransactionAmount::DECIMAL(15, 2) AS TransactionAmount
FROM bronze.transactions_2