Questions for Micah



1.Data in rake console vs what I SEE on the site.
  How to keep it the same?

2. Errors for length validates
*•
3. layout.erb = line: 22 | Can I place logout into nav

4. How to add choose a House as an option for signup  

5. Jquery/Javascript for DELETE/completed?

6. current_user only I DID IT•* but want to kow if i can make it a helper & place in controller

#User has many Tasks
#Task belongs_to User  

•Login/logout *DONE*
•Signup  *DONE*
•view Tasks *DONE*
•make Tasks  *DONE*
•edit Tasks *DONE*
•delete Tasks *DONE*
•Current users can't see signup/login page *DONE*
•Add Houses option in SignUp *DONE*
•User VIEW their OWN Tasks & own Profile Page  *DONE*
•Change Home to be Profile Page *DONE*
•Extra Validation for name and username *DONE*
•Once a task is completed points goes to their House *DONE*
#Do the skeleton/HTML first than give it flesh/CSS. muahahahahaha
•UI for homepage *DONE*
•UI for Tasks *DONE*
•UI for new task *DONE*
•UI FOR EDIT task *DONE*
•UI for houses *DONE*
•UI for new users signup *DONE*
•UI for login *DONE*
•UI for 404 page *DONE-ish*
•user delete account
• Place logout somewhere *DONE*
•Completed , you earn something points. good job! cylce through encouragement
• KISS CSS for houses colors. *working*

*SignUp*
Name:
Username:
Hogwarts House:  Gryffindor,Slytherin,Ravenclaw,Hufflepuff  *how will i do this???
I want it to be a dropdown*
Password:
Password Confirmation

*Profile Page*
Name:
Username:
Bio:
House:
User's House points:
User's points gained for house:

*House Page*
Everyone can view houses points
Timeline of when task completed

RESTFUL ROUTES
https://learn.co/tracks/online-software-engineering-structured/sinatra/activerecord/sinatra-restful-routes

STUDY FROM
https://flatironschool.com/blog/how-to-build-a-sinatra-web-app-in-10-steps
https://github.com/matt297/sinatra-dev-cheatsheet#adding-a-stylesheet

REREAD MICAH BLOG Post
https://dev.to/micahshute/developing-style-sinatra-security-decorator-design-pattern-4lao

CTRL FIND SESSION_SECRET
http://sinatrarb.com/intro.html

hotel del luna ep.12 :BREAK WATCH 17:56
https://www4.dramacool.video/hotel-del-luna-episode-12.html

GOOGLE FLASH
https://www.blog.google/products/chrome/saying-goodbye-flash-chrome/


SinatraCRUD pt1
34.01 Session talk
41.00 session secret

    <% if task.user == current_user && task.completed == true %>    <
