# Write your MySQL query statement below
SELECT
    account_id,
    day,
    sum(if(type = 'Deposit', amount, -amount)) OVER (
        PARTITION BY account_id
        ORDER BY day
    ) AS balance
FROM Transactions
ORDER BY 1, 2;
