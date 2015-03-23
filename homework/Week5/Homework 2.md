Homework for Week 5
===================

You'll find a file in this directory called 'schema_example.txt'. This is
an example of how we will write our relational database designs. Open that
in your text editor (Notepad++ on Windows, or TextMate on Mac) and take a
look at the file to see how it works for our 'Hollywood' database. 

Each table is named on a line by itself, and its columns are given, each
preceded by a * or a -. The * means that this column is the primary key for
the table; the - is for all other columns. We then give the column name,
and if it isn't a column that REFERENCES another one, then we give its data
type (that is, 'integer' or 'text' or 'date' or 'float'.) For example:

	people
	* id integer
	- name text
	- born date
	
If a column should REFERENCE another column, it looks instead like this: we
name the column, write `=>` to say "references", and note the table and
column that we want to link to. Here we *don't* need to give the data type,
because it's implied by the link! The `movie` column in this table will
have the same data type as you have already assigned to `id` in the
`movies` table.

	- movie => movies.id


Problems
--------

Make a schema, in the style described above, for any three of these five
situations. When you've made each schema file, commit it and push it to
your personal Github repository.

1. You are setting up a library, and need to keep track of what books you
have, who they have been lent out to, and when they are due back.

2. You are teaching a class, and you need to keep track of who your
students are (knowing that some might drop the class along the way!), their
attendance record, what their scores are on each homework assignment and
each test in class, and how they have divided themselves into groups for
the class final project.

3. You are studying popular reception of music in the nineteeth century,
and have a large stack of performance playbills and newspaper reviews. You
need to keep track of what piece of music was performed when and where, by
whom, and what kind of review it got (as well as who wrote the review).

4. You are the editor of an academic journal. You need a database of
articles that have been submitted to your journal, so that you can find out
what has been submitted, who wrote it, who reviewed it, whether it was
accepted for publication, and (if so) which journal issue it appeared in.

5. You are making a database of sixteenth-century English plays. You want
to be able to keep track of information about the play (when it was
written, by whom, whether it is a comedy, tragedy, or history, etc.); you
also want to examine each play by act, by scene, by speaking line, or by
character.

