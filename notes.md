Sinatra Project Notes: User can create, read, update, and delete a review

Schedule<br>
 ✔set up models / classes<br>
 ✔set up database<br>
 ✔set up controllers<br>
 ✔set up views<br>

Interface:<br>
 ✔User can view diary entry form<br>
 ✔User can submit a diary entry form<br>
 ✔User can edit their diary entry<br>
 ✔User can delete or cancel their diary entry<br>

User class<br>
 ✔attributes => name, email, password <br>
 ✔user signs up / logs in<br>
 ✔user has many diary entries<br>

User controller and views<br>
 ✔“/signup” => renders signup form<br>
 ✔“/signup” => processes signup form, creates user, post<br>
 ✔“/login” => renders login form<br>
 ✔“/login” => processes login form, post<br>
 ✔user can view their diary entries, “/users/:id/diary_entries”<br>

Diary Entries class<br>
 ✔attributes => title, content,created at, updated at , user_id <br>
 ✔diary entries belong to the user<br>

Diary Entry controller and views<br>
 ✔“/diary entries/new” => renders new diary entry form<br>
 ✔“/diary entries” => submits diary entry<br>
 ✔“/diary entries/:id” => renders one diary entry instance<br>
 ✔“/diary entries/:id/edit” => renders update form for an instance<br>
 ✔“/diary entries/:id” => updates an instance, patch<br>
 ✔“/diary entries/:id/delete” => deletes an instance<br>

User authentication<br>
 ✔use bcrypt gem<br>
 ✔ensure user model has_secure_password<br>
 ✔ensure users table should have password => password_digest<br>

Logged in user<br>
 ✔redirect to home page<br>
 ✔should not see signup or login if already logged in<br>

Helper methods<br>
 ✔the helper methods should be available to the other controllers via the application controller
