# Voter API

This is a Rails-based application which only serves up an API. The API responds with JSON.


#### Day One Tasks

- [x] Review the requirements and create an ERD
    - [Link to ERD](https://www.lucidchart.com/invitations/accept/c1b61a37-4139-4172-8ce0-4f24cd19dfe8)
- [x] Create a new Rails app
- [x] Create migrations and models as needed
- [x] Add associations and validations
- [x] Push to GitHub
- [x] Create at least two unit tests for each model
- [x] Make sure that you can run rake successfully to run the tests
- [x] Create the candidates controller with index, show, and create actions.
- [x] Make the index action return a JSON representation of all the candidates.
- [x] Make the show action return the first candidate.
- [x] Make the create action create a new candidate (in the database). It can have any properties for now.
- [x] Make sure that you can run rails server and access the candidates index page in your browser.
- [x] Delete README.rdoc and make your own (filled in) README.md
- [x] Push to GitHub
- [x] Create an estimate for the number of hours you expect to need to complete this assignment tomorrow night

##### Estimate For Day Two Completion Time
I predict it will take 3.5 hours to complete the remainder of the assignment on Day Two.

#### Day Two Tasks
- [x] Create the voters controller with create, show, and update actions.
- [x] Make the create action create a new voter (in the database).
- [x] Make the show action show the voter with token authentication.
- [ ] Make the update action update the voter with token authentication.
- [x] Create the votes controller with create, destroy, and index actions.
- [ ] Make the votes controller only allow one vote per voter.
- [ ] Make the create action create a new vote (in the database), using voter token authentication.
- [ ] Make the destroy action destroy a vote (in the database), using voter token authentication.
- [ ] Make the index action return a JSON representation of all the candidates and number of votes for each.
- [ ] Make tests for the controllers
