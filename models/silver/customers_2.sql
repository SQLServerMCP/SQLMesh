MODEL (
  name silver.customers_2,
  kind FULL,
  owner 'Darren',
  column_descriptions (
    CustomerNumber = 'The Customer Number of the Account holder',
    FirstName = 'The First Name of the account holder',
    Surname = 'The Surname of the Account holder',
    DateOfBirth = 'The Date of Birth of Account Holder',
    Gender = 'The Gender of the Account Holder',
    EmailAddress = 'The Email Address of the Account Holder',
    UKPostCode = 'The Postcode of the Account Holder',
    HouseNumber = 'The HouseNumber of the Account Holder',
    StreetAddress = 'The Address of the Account Holder',
    Town = 'The Town of the Account Holder'
  )
);

SELECT
  CustomerNumber::STRING,
  FirstName::STRING,
  Surname::STRING,
  DateOfBirth::DATE AS DateOfBirth,
  Gender::STRING,
  EmailAddress::STRING,
  UKPostCode::STRING,
  HouseNumber::STRING,
  StreetAddress::STRING,
  Town::STRING
FROM bronze.customers_2