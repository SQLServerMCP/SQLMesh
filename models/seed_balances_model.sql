MODEL (
  name sqlmesh_example.seed_balances_model,
  kind SEED (
    path '../seeds/TestAccountBalances20251006.csv'
  ),
  owner Darren,
  columns (
    custname TEXT,
    account TEXT,
    balance DECIMAL(18,3),
    event_date DATE
  ),
  grain (custname, event_date)
);
  
