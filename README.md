Like vs Dislike
===============

Description
--------------------
This is a social network called Like vs Dislike.  It implements many of the typical social network features such as following users activity and interacting with users.  The main concept behind the site is seeing what the internet thinks of things.  The site is populated with “content” which can be anything from a thing in real life, to a website.  Users can either vote to like, or dislike this content.  The site then displays the ratio of likes to dislikes to show how positive or negative the internets reception of this content is.  Users are able to upload content, and vote on content.  Users are also able to “stalk” other users, which triggers that users activity to be shown in the “stalker’s” newsfeed (Similar to friending someone on Facebook, however it is not a mutual friendship). 

Instructions:
-------------------
1.  Make sure node and npm are installed
2.  You will need to install MySQL and create a table named 'n23n7wfhs9a99dd3'
3.  Import the SQLDUMP.sql file into this newly created table using something such as phpMyAdmin (It is vital that nothing is altered in any of the tables provided or else there is a good chance something will break)
4.  You will need to change db.js to have the correct user and password for your MySQL database
5.  Install all dependicies using npm
6.  You will need to install ImageMagick on your machine in order to take advantage of the upload content feature (http://www.imagemagick.org/)
7.  Run the app using 'node app'
8.  The app should be listening on port 4006
