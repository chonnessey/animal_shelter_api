# Animal Shelter API
## By Adrian Camacho :electric_plug:

---

### Project Description :pencil:

* This project is a mock animal shelter database that is populated using the _**faker gem**_.
---
### Tech Stack :floppy_disk:
1. _Ruby 2.6.3_
2. _Rails 6.1.4_
3. _**[Faker gem](https://github.com/faker-ruby/faker)**_
4. _**[Kaminari gem](https://github.com/kaminari/kaminari)**_
---
### Installation Instructions :pushpin:
1. Clone this repo: `https://github.com/chonnessey/repo.git`
2. Enter new directory `cd directory`
3. Install dependencies with the `bundle` command.
4. To run a serverside database use the command `rake db:create`.
6. Run `rake db:seed` to populate the database.
5. To run the Rails local server run the command `rails s` and then navigate to `localhost:3000`.
6. Checkout the _**Endpoints**_ section to see all the ways you can query this database!
---
### Endpoints :stop_sign:
* The index to this database is `localhost:3000/animals`. This will bring up the first 25 animals from the shelter.
* I've added pagination via the _**faker gem**_ to this database so each page will have have 25 animals on it. To query this you'll use the `localhost:3000/animals?page=*PAGE NUMBER*`.
* `localhost:3000/animals?page=1` is the same as the index so start at `2` to view more animals.
* Remember, there is 25 animals per page so keep that in mind when querying this endpoint.
* You can view dogs only with `localhost:3000/animals/dogs`.
* Same thing with cats `localhost:3000/animals/cats`.
* You can also view animals with a cheap adoption fee with `localhost:3000/animals/cheap_fee`.
___
### Known Bugs :bug:
1. No Known Bugs.
2. Please open a pull request if you have any issues!
---
### Contact Info :inbox_tray:

You can reach me at: <adriancamacho18@gmail.com> :rocket:
___
### License is GPLv3 and I make no claim to copyright. :guardsman:
<br />

> You can't steal what is freely given. Enjoy!

<br />
<br />
<br />
<br />
<p align="center">
  <small>Made in Portland, Oregon.</small>
</p>
