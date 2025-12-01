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
  custname::STRING,
  account::STRING,
  balance::DECIMAL(15,2),
  event_date::DATE,
  @VAR('myvar')::INT AS variablesdd,
  balance + @VAR('myvar') AS NewBal
FROM sqlmesh_example.seed_balances_model
WHERE
  event_date BETWEEN @start_date AND @end_date