# README

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
After that we proceeded with a BDD (Behaviour Driven Development) approach, writing test cases and features and developing the functions and structure of the web application while testing using the Cucumber gem. We implemented almost 100 scenarios for about 8 features, introducing buttons and links when necessary or when it made the pages easier to understand and use.
In the end we implemented the last functions and defined the layout of the pages, making them more accessible and intuitive.



Bill Project, Group: Anzelini, Salani, Buisic
Added entities and reletion
Added validation
Added graphic design
Added features
