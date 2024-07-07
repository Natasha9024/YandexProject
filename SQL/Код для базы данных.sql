
scooter_rent=# select c.login,
scooter_rent-#  count(*)
scooter_rent-#  from "Couriers" as c
scooter_rent-#  inner join "Orders" as o on c.id=o."courierId"
scooter_rent-#  where o."inDelivery" = true
scooter_rent-#  group by c.login;
 login | count
-------+-------
 ivan  |     2
(1 row)

scooter_rent=# SELECT track,
scooter_rent-# finished,
scooter_rent-# cancelled,
scooter_rent-# "inDelivery",
scooter_rent-# CASE
scooter_rent-# WHEN finished = true THEN 2
scooter_rent-# WHEN cancelled = true THEN -1
scooter_rent-# WHEN "inDelivery" = true THEN 1
scooter_rent-# ELSE 0
scooter_rent-# END AS status
scooter_rent-# FROM "Orders";
 track  | finished | cancelled | inDelivery | status
--------+----------+-----------+------------+--------
 816278 | f        | f         | f          |      0
 559227 | f        | f         | f          |      0
 447388 | f        | f         | t          |      1
 447388 | f        | f         | t          |      1
 575692 | f        | t         | f          |     -1
(5 rows)
