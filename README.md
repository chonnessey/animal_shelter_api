# Animal Shelter API :dog: :cat:
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
5. _Postman_
---
### Installation Instructions :pushpin:
1. Clone this repo: `https://github.com/chonnessey/animal_shelter_api.git`
2. Enter new directory `cd animal_shelter_api`
3. Install dependencies with the `bundle` command.
4. To run a serverside database use the command `rake db:create`.
5. Run `rake db:migrate` after you create the database.
6. Run `rake db:seed` to populate the database.
7. To run the Rails local server run the command `rails s` and then navigate to `localhost:3000`.
8. Checkout the _**Endpoints**_ section to see all the ways you can query this database!
---
### Endpoints :stop_sign:
* Open up the _**Postman**_ app to test out this API!
* The index to this database is `localhost:3000/animals`. This will bring up the first 25 animals from the shelter.
* I've added pagination via the _**kaminari gem**_ to this database so each page will have have 25 animals on it. To query this you'll use the `localhost:3000/animals?page=*PAGE NUMBER*` endpoint.
* `localhost:3000/animals?page=1` is the same as the index so start at `2` to view more animals.
* Remember, there is 25 animals per page so keep that in mind when querying this endpoint.
* This API has full CRUD functionality so within _**Postman**_ you can use GET(view animals), POST(create an animal), PUT(update an animal), and DELETE(delete an animal) calls as you wish.
* The dropdown box to select either of these calls is located to the left of the url bar.
* You can view dogs with `localhost:3000/animals/dogs`.
* Same thing with cats `localhost:3000/animals/cats`.
* You can also view animals that have a cheap adoption fee with `localhost:3000/animals/cheap_fee`.
* To add a cat or dog you need to select the _**POST**_ call with this endpoint `localhost:3000/animals`.
* Before hitting send you need to fill out the _Keys_ and _Values_ within the _Body_ tab located right below url bar.
* There is a drop down box right below the _Body_ tab, select the _form-data_ option.
* The _Keys_ for this API are **animal_type**, **breed**, **age**, **sex**, **color**, **weight**, **date**, **adoption_fee** and **name**.
* The _Values_ are what you input for said _Keys_! Now you can hit send and boom! You created an animal for the shelter!
* In order to update an animal you need the _id_ of the animal. Once you have it, select the _**PUT**_ option and the endpoint looks like this `localhost:3000/animals/*ID OF ANIMAL*`.
* Edit the _Value_ of whichever _Key_ you would like to update and hit send. You should get a success message saying your update was successful!
* Same thing for deleting an animal, you need their _id_ but this time select the _**DELETE**_ option. Endpoint looks exactly like the update one `localhost:3000/animals/*ID OF ANIMAL*`.
* Now hit send and you'll get a message that states you've deleted the animal successfully!
* Feel free to use these endpoints at your heart's desire!
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
