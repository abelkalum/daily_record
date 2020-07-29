Sinatra Project Notes: User can create, read, update, and delete a review

Schedule
 ✔set up models / classes
 ✔set up database
 ✔set up controllers
 ✔set up views

Interface:
 ✔User can view diary entry form
 ✔User can submit a diary entry form
 ✔User can edit their diary entry
 ✔User can delete or cancel their diary entry
User class
 ✔attributes => name, email, password 
 ✔user signs up / logs in
 ✔user has many diary entries
User controller and views
 ✔“/signup” => renders signup form
 ✔“/signup” => processes signup form, creates user, post
 ✔“/login” => renders login form
 ✔“/login” => processes login form, post
 ✔user can view their diary entries, “/users/:id/diary_entries”

Diary Entries class
 ✔attributes => title, content,created at, updated at , user_id 
 ✔diary entries belong to the user

Diary Entry controller and views
 ✔“/diary entries/new” => renders new diary entry form
 ✔“/diary entries” => submits diary entry
 ✔“/diary entries/:id” => renders one diary entry instance
 ✔“/diary entries/:id/edit” => renders update form for an instance
 ✔“/diary entries/:id” => updates an instance, patch
 ✔“/diary entries/:id/delete” => deletes an instance

User authentication
 ✔use bcrypt gem
 ✔ensure user model has_secure_password
 ✔ensure users table should have password => password_digest

Logged in user
 ✔redirect to home page
 ✔should not see signup or login if already logged in

Helper methods
 ✔the helper methods should be available to the other controllers via the application controller
