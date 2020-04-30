# Dogbnb, le Airbnb des promenades de chiens

To start, don't forget to clean the db as follow :

```
$ rails db:drop db:create db:migrate db:seed
```
`db:drop`
drop the db. No more old data.

`db:create`
create the db. An empty file.

`db:migrate`
create all the tables :
- dogs
- dogsitters
- strolls
- cities

`db:seed`
use Faker gem to create fake data in the db.


You can now have fun with the app (in the rails console...) and create whatever new data you want.
