MODEL (
  name sqlmesh_example.full_model_balance,
  kind FULL,
  owner 'Darren',
  cron '@daily'
);

SELECT
  account,
  SUM(balance) AS totalbalance,
  SUM(NewBal) AS TotalNewBal::DECIMAL(15,2)
FROM
  sqlmesh_example.incremental_model_balance 
GROUP BY account
  