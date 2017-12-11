# README

## THE PROJECT 
We've been asked to develop a web application which allows to use and manage an invoice system. The application should keep track of the invoices inserted by a user and the clients involved. 

In order to create it we followed many steps:
First of all, we wrote the user stories, which are basically the functions we want to use. These are the main features we wanted to offer to the users:
  -Insert clients in the database
  -Insert invoices related to specific clients
  -Find the client related to a specific invoice
  -Calculate the daily bill (given by the sum of the bills of the invoices not payed yet)
  -Opportunity to sign up in the system
  -Log in function
 
In second place, using Ruby on Rails, we developed the skeleton of the app, creating a DB, which allows us to keep all the information we need, and a main page.
After that we proceeded with a BDD (Behaviour Driven Development) approach, writing test cases and features and developing the functions and structure of the web application while testing using the Cucumber gem.
In the end we implemented the last functions and defined the layout of the pages, making them more accessible and intuitive.
## HOW TO USE INSTALL THE APPLICATION

Clone the repository using git clone https://github.com/SalaniUNITN/SAB-INGEGNERIASW2.git.
Then from terminal type:
cd Assignments/AppFatturazione/ # to go into the app directory.
Bundle install: to install all the gems NEEDED FROM THIS APP.
rails db:migrate:to create the db and execute all the migrations
rails server: to launch the webserver and to be able to run our app in your browser(http://localhost:3000/).
Now you are ready to go you just need to USE THE WEBSITE

## HOW TO USE THE APPLICATION
Visiting the main page of the application we find two buttons on the upper-right side of the screen. Clicking on **My Clients** we'll be redirected to a page showing the list of the clients and the buttons to manage it. On this page we will find another link "New Client" which will allow us to insert a new client in the database. We also find a search bar, which unfortunately doesn't work yet.

The **My Invoices** button shows a list of the invoices stored in the db. For each of them in the table will be shown the name of the user who created the invoice, his email, the client's name, the hourly wage, the number of hours, the status (paid/not paid) and the total bill, which is calculated by multiplying hourly wage by number of hours. 
The "Total bill" shown at the bottom of the page is the sum of the single bills of the invoices which are already payed. 
Again, the "New Invoice" button allows us to create an invoice and insert it in the database.

In the main page we also find a sign up/log in form. It is not functioning yet, but it will allow a user to see the invoices created by him and the clients who he works with, in order to prevent other users to access sensible information about clients or invoices not related to them.



## WHAT WORKED WELL
The coordination between the members was very good, we all worked together without creating problems to our collegues getting help when needed without creating problems to our collegues.

## MAJOR PROBLEMS ENCOUNTERED DURING THE DEVELOPMENT
We had some problems during the creation of the skeleton app. In fact, due to a misunderstanding between the members. we added an unnecessary table to the database, called invoices. This was the table meant to keep the information about the invoices inserted, but it had the wrong fields so we added a table "add_hours", which is now used as "Invoice" table. Unfortunately we fixed this only in the last part of the development, so we left the invoice table in the db in order to avoid having problems with the system. 

It has also been difficult to test the features defined with cucumber. It turned out we were not so sure on how to use the cucumber gem and implement the step definitions, so there are a few scenario failing when raking cucumber.

At last, we didn't implement the search bar, the sign up and the login functions because we spent a lot of time trying to fix the testing problems.

## LICENCE OF USE
Copyright (c) 2017 Francesco Salani, Simone Anzelini, Luka Buisic

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

Invoice system Project 
Group: Simone Anzelini, Francesco Salani, Luka Buisic
