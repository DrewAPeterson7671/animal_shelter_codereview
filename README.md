# _Animal Shelter API_

#### _Application to list products and reviews, 1/31/2020_

#### By _**Drew Peterson**_

## Description

_This Animal Shelter API is for finding a list of the animals in the shelter, for reading, posting and modifying. This project was a code review exam for Epicodus Boot Camp.  8 hours were allowed to construct it from scratch._
_Posted on Heroku at https://animal-shelter-api-codereview.herokuapp.com/animals_
_Use Postman instructions, below, to substituting "localhost:3000/animals" with the Heroku URL above to interesct with the live API_

## Setup/Installation Requirements

* Requires Ruby 2.6.5, Rails 5.2.4, Bundler, PostgreSQL and Postman (for interaction).
* Clone the project locally from github.
* From the terminal, run the following commands:
  *   run bundle install
  *   rake db:create
  *   rake db:migrate
  *   rake db:seed
  *   rails s

## Using this API with the Postman application

* Main endpoint - Open the postman application and type in "localhost:3000/animals", change the method on the left to GET, and click SEND to the right.
* To post a new pet - After the instructions above, change the method to POST from Get, and in the space below, Type in:
  * In the key space type "name" and in the value space directly to the right, type in the name of the pet.
  * In the key space type "species" and in the value space directly to the right, type in the species of the pet.
  * In the key space type "breed" and in the value space directly to the right, type in the breed of the pet.
  * In the key space type "comment" and in the value space directly to the right, type in a text description of the pet.
* To modify a post.  
  * Note the ID field listed.  
  * Change the method in the upper right from GET to PUT.  
  * Click on the KEY blank and type the id, click on the VALUE directly to the right of it and type in the ID you noted.
  * Types in the KEYS of "name", "species", "breed", "comments" and their corresponding values directly to the right of    each of those blanks.  
  * Any changes will overwrite the old entries and any fields left blank will now be blank.  
  * Click the SEND button.
* To delete a post.  
  * Note the ID field listed.  
  * Change the method in the upper right from GET to DELETE.  
  * Click on the KEY blank and type the id, click on the VALUE directly to the right of it and type in the ID you noted.
  * Click the SEND button.
* Cats endpoint - Open the postman application and type in "localhost:3000/cats"
* Dogs endpoint - Open the postman application and type in "localhost:3000/dogs"
* Most Recent endpoint - Open the postman application and type in "localhost:3000/most_recent"
* Search endpoint - Open the postman application and type in "localhost:3000/animals", make sure the method on the left is set to GET.  In the key blank below, type "search".  In the value blank directly to the right of that, type in a few letters of the species, breed, or name you are looking for.  Then click the SEND button.


## Known Bugs

_There are no known bugs at this time._

## Support and contact details

_Please contact me directly via email at drew.a.peterson@hotmail.com with any bug reports, questions, critique, or for any reason._

## Technologies Used

_Ruby 2.6.5, Rails 5.2.4, Postgres SQL, and Pry, Bundler, Sinatra, rspec_

### License

*GPL*



Copyright (c) 2020 **_Drew Peterson_**
