Specifications for the Sinatra Assessment

Specs: <br>
  X Use Sinatra to build the app [I used Sinatra framework to build this app] <br>
  X Use ActiveRecord for storing information in a database [when creating DB tables I used ActiveRecord::Migration]<br>
  X Include more than one model class (e.g. User, Post, Category) … [I had user and diary_entry model classes]<br>
  X Include at least one has_many relationship on your User model (e.g. User has_many Posts)... [user has many diary entries]<br>
  X Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) … [diary entry belongs to user]<br>
  X Include user accounts with unique login attribute (username or email) … [I included user’s email]<br>
  X Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Deleting … [a user has create, read, update, and delete routes]<br>
  X Ensure that users can't modify content created by other users … [The entries that don’t belong to the user will not show edit or delete links, but these links will be available to the user who owns the entries]<br>
  X Include user input validations … [user cannot create an entry which has no content]<br>
  X BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) [added flash messages to display for invalid login, successful creation of an entry, and invalid creation of entry] <br>
  X Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code … [I added all the above README specs]


Confirm<br>
  X You have a large number of small Git commits … [made commits regularly]<br>
  X Your commit messages are meaningful … [I based the commit messages on the changes made]<br>
  X You made the changes in a commit that relate to the commit message … [I based the commit messages on the changes made]<br>
  X You don't include changes in a commit that aren't related to the commit message … [I based the commit messages on the changes made]<br>
