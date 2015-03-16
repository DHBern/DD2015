Download the whole "Hollywood" database from here: http://students.digihum.ch/hollywood.sql - make sure to save it as "plain text" or "source", if you are asked, and make a note of where you saved it!

Open SQLite and read in the 'hollywood' data that you just downloaded.

    .read hollywood_sql.txt

This will run all the CREATE and INSERT statements in that file, and create you a database with a bunch of data. Check that it's there with this command:

    .schema

Now try some queries!

    SELECT name FROM people;
    SELECT title FROM movies;
    SELECT title FROM movies WHERE tagline NOT NULL;

Seeing results? Good! Try a few more SELECT statements, to look at the data you have.

*******
Part 1.

We are going to practice some SELECT statements. Remember that the syntax looks like this:

    SELECT [column(s)] FROM [table] WHERE [filter];

and if you want to draw on more than one table, it looks like this:

    SELECT [table1.column, table2.column, ...] FROM [table1]
        JOIN [table2] ON [table2.refcolumn] = [table1.id]
        WHERE [filter];

Here is an example adapted from class, to get the list of who directed what movie after 1999:

    SELECT people.name, movies.title FROM people 
        JOIN directed ON people.id = directed.director
        JOIN movies ON movies.id = directed.movie
        WHERE movies.released > 1999;

Now tell me the query you use to answer the following questions, by copying each query into your text editor (that's probably Notepad++ or TextMate) and saving it to a file called "homework1_answers.txt". 

(Hint: you can write the queries in your text editor, and then copy them to the SQLite command line to try them out, if you don't want to re-type everything in SQLite after every mistake!)

1. When was 'Jerry Maguire' released?
2. When was Kevin Bacon born?
3. What is the tagline of 'The Matrix Reloaded'?

4. Which movies have reviews?
5. What roles were acted in 'Unforgiven'?
6. What roles were acted in 'Cloud Atlas'?
7. How many different people acted in 'Cloud Atlas'?

8. Who acted in movies released in 1995?
9. Who reviewed 'Jerry Maguire'?

10. Extra credit: Who has both produced and directed a movie? (Hint: the WHERE clause can understand "and" and "or", e.g. 
 `SELECT name FROM people WHERE born > 1960 AND name LIKE "John%";`

**********
Part 2.

Here is a query that will list the actors and their roles in all movies released in 1999. 

    SELECT people.name, roles.role, movie.title FROM people 
    	JOIN roles ON people.id = roles.actor 
    	JOIN movies ON movie.id = roles.movie 
    	WHERE movie.released = 1999;

You can get the results of any query out of SQLite into CSV format like this:

    .mode csv
    .output <YOUR FILENAME HERE>.csv
    [RUN YOUR SELECT STATEMENT HERE]
	.output stdout

Notice that your 'select' statement did not show you anything! That's because it went into the file instead. Now do the following:

1. Quit SQLite (with the `.quit` command)
2. Find the CSV file you just made
3. Move it to your personal Git repository (that is, not the shared class one!)
4. Move your "homework1_answers.txt" file to your Git repository too
4. Add them to Git, commit, and push it all to GitHub.