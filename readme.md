##Setup##

`insert_data.sql` is generated by running 

```
   python3 {path_to_file}/project1_insert_data.sql 
```

After `schema.sql` and `insert_data.sql` is ready, login to postgres as a superuser and run these 2 scripts to set up database with the tables and generated dummy data.

```
   \i {path_to_file}/schema.sql
   \i {path_to_file}/project1_insert_data.sql
```