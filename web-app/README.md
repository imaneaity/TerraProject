# Creating the RDS table

Trying a combo of:
    DBInstanceClass: db.t2.micro
    Engine: postgres
    EngineVersion: 12.19

gave an error, a simple fix to it was to switch to a newer instance class. If you must use `db.t2.micro`, you can switch to an older PostgreSQL version (e.g., PostgreSQL 11).

