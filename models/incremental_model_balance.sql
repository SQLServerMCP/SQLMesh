MODEL (
  name sqlmesh_example.incremental_model_balance,
  kind INCREMENTAL_BY_TIME_RANGE (
    time_column event_date
  ),
  start '2020-01-01',
  cron '@daily',
  grain (account, event_date)
);

SELECT
  custname,
  account,
  balance,
  event_date
FROM
  sqlmesh_example.seed_balances_model
WHERE
  event_date BETWEEN @start_date AND @end_date
  