MODEL (
  name sqlmesh_example.full_model_balance,
  kind FULL,
  owner Darren,
  cron '@daily',
  grain account,
);

SELECT
  account,
  SUM(balance) AS totalbalance,
FROM
  sqlmesh_example.incremental_model_balance GROUP BY account
  