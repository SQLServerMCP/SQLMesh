MODEL (
  name gold.customers_2,
  kind FULL,
  owner 'Darren',
  column_descriptions (
    CustomerNumber = 'The Customer Number of the Account holder',
    DateOfBirth = 'The Date of Birth of Account Holder',
    Gender = 'The Gender of the Account Holder',
    UKPostCode = 'The Postcode of the Account Holder'
  )
);

SELECT
  CustomerNumber::STRING,
  DateOfBirth::DATE AS DateOfBirth,
  Gender::STRING,
  UKPostCode::STRING
FROM silver.customers_2