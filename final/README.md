Management of Digital Research Data 
===================================
Final Exam FS2015
-----------------

The exam consists of three sections, testing your understanding of relational (SQL) databases, XML databases, and graph databases. Please answer as many of the questions as you can, as completely as you can, and record your answers using your text editor (probably either Notepad++ or TextMate) in a file called `final_exam.txt`. Your final_exam document must be emailed to me by **TUESDAY 26 MAY at 11:59PM**. 

You should be able to answer all the questions without seeking outside help, based on what we covered in class over the course of the term (although you are perfectly welcome to use any online guide or documentation that you can find.) However, as collaboration is part of life inside and outside academia, if you do get help, please make a note of who helped you to do what, and how far you got before seeking help.

If you have any questions or unexpected problems, please do ask! (Remember that you are the first students who have ever taken this exam, so that means that if there are any difficulties I've overlooked, I need you to alert me to them.) You will need to figure out the answers to the test questions yourselves, but don't let an unexpected problem or error prevent you from getting to the questions in the first place. I'm here to help!


Part 1. Relational databases
----------------------------

In order to complete these questions, you will need the `world.db` file in this directory, which is an SQLite database. Once you have pulled the class repository from Github, you can open it in SQLite with the command

	sqlite3 PATH/TO/digitaldata_2015/final/world.db
	
in a PowerShell or Terminal window, where `/PATH/TO` should be replaced with the directory path to where you have saved the file. Alternatively you can run sqlite3 directely and use the command 

	.open PATH/TO/digitaldata_2015/final/world.db
	
at the `sqlite>` prompt.

For each of these problems, write an SQL statement that answers it and paste the SQL into your `final_exam` document, numbered accordingly.


1. What tables are there in this database?

2. How are they related to each other?

4. What are the names of the countries in Oceania?

5. How many cities have a population greater than 1 million?

6. What is the most populous country? What is its population?

7. How many official languages are there in the world?

8. In which countries is Armenian spoken?

10. In what district is the capital city of South Africa?

9. In which countries is French an official lanugage?

3. What is the total population of countries with English as an official language? (Hint: you can use the `sum` function, which works a lot like `count`, to add up a column of numbers.)

11. According to the CIA World Factbook, 4.2% of the Swiss population are English speakers. Add a record to the CountryLanguage table to indicate this.

11. Who is the head of state in the countries where Dutch is spoken?

12. Hm, some of those are a bit out of date - Queen Beatrix abdicated in 2013! Update the relevant records to reflect that the head of state is now Willem-Alexander.

13. In what country and district is Sevastopol?

14. Oops, that changed too since this database was made. Change the records for all Crimean cities to reflect that they are in Russia.

15. Let's say that we want to start tracking the religions of the world. Create a table to hold the following information;
  * Country
  * Religion name
  * Adherents, by percentage of population
  * Whether the religion is an established one in the country.
  
  For extra credit, do this with two tables, where one is a table to list basic facts about the religion and the other is a junction table between religion and country.
  
  
Part 2. XML databases
---------------------

In order to complete these questions, you will need the set of XML files in the `archimedes` directory, as well as the file `archie-tei.rng`. (You won't do anything with that file, but oXygen needs it in order to validate the XML.) You have two options for loading them into oXygen:

* Make a new collection (alongside the 'shakespeare' collection; you might call it 'archimedes') in your eXist-DB on your computer, and use the eXist-db XQuery transformer to run your queries, as we did with the Shakespeare files. (If you are unable to make the new collection via the web dashboard - some people, including me, have had this problem! - try opening the Java Admin Client instead and make the collection there.)
* Use the default Saxon-PE XQuery transformer, and refer to the collection with the full path of the directory they are in on your computer, e.g. 
		/PATH/TO/digitaldata_2015/final/archimedes


These files are TEI XML transcriptions of the pages of the [Archimedes Palimpsest](http://archimedespalimpsest.org), taken from their website. Take a quick look at one of the XML files to see its structure - you will find the familiar `teiHeader` element with information about the document, and then a `facsimile` element that would link this transcription to pictures of the palimpsest if we had downloaded them, and finally the `text` element that contains the transcription. If you like, you can look for the pictures of the manuscript on their website, but palimpsests are by their nature very difficult to read! Fortunately, someone else has made these transcriptions for us.

For each of these problems, write an XQuery document that answers it and paste the XQuery into your `final_exam` document, numbered accordingly.


1. Create a new XQuery document and set up a transformation scenario for it, either with or without eXist.

2. Start to investigate what you have - write an XQuery that lists out the titles of all the documents. Don't forget to deal with the namespace of the TEI document!

4. Look at the teiHeader of one of the documents - you can see that there is a list of contributors. 
  * First list out the contributors - there are a lot of repeats! 
  * Now remove the duplicates. If you have your contributors in a variable `$helped`, then you can remove the duplicates with `distinct-values($helped)`. 

5. Now let's make a simple XML document that contains the title of each document - which represents a page - and a count of the number of lines on the page. It should look something like this:

		<doc>
		   <page>
			  <title>Transcription of folios 0000-100r of the Archimedes Palimpsest. (= Archimedes folio Arch53v,
							Sphere and Cylinder)</title>
			  <lines>31</lines>
		   </page>
		   <page>
			  <title>Transcription of folios 0000-100v of the Archimedes Palimpsest. (= Archimedes folio Arch53r,
							Sphere and Cylinder)</title>
			  <lines>33</lines>
		   </page>
		   <!-- carry on for the rest of the pages! -->
		</doc>

   If you have a set of elements in a variable such as `$lines`, you can get a count of them by using the function `count($lines)`.
   
3. Pick one of the files - it doesn't matter which one - and extract all of its Greek text. It's okay if the text isn't formatted very nicely.

4. Look more closely at the file - you will see that the text is represented with a fairly dense combination of elements such as:
	* `w` (word), 
	* `supplied` (illegible but guessed at by the editor), 
	* `unclear` (semi-legible and the editor's best guess), 
	* `pc` (punctuation character), 
	* `gap` (missing or illegible and the editor has no idea)
 
   and so on. All of this is inside an `ab` (anonymous block) element. 
   
   Extract all the child elements of that anonymous block to see what they are.
 
7. Choose the elements that look like they contain words (hint: `lb` isn't going to be one of them) and write an XQuery to select only those elements. Extract all the text from each element in turn and return it like this:

		return ($text, ' ')

   so that the words are space-separated.
   
8. Now put that together with your answer to #5. Use XQuery to make a document that looks like this:

		<doc xmlns="http://www.tei-c.org/ns/1.0">
		   <page>
			  <title>Transcription of folios 0000-100r of the Archimedes Palimpsest. (= Archimedes folio Arch53v,
							Sphere and Cylinder)</title>
			  <lines>31</lines>
			  <words>κῶνος κώνωι κώνου κώ νου ὕψος ῥόμ βωι Β ἐπι φανείας τμηθῆι κο ρυφὴν ἑ τέρωι ῥόμ βου ἀφαι ρεθῆ τῶι περιλείμματι τῆι ἐπιφανείαι μεταξὺ ἐπι πέδων ὕψος ἴσον </words>
		   </page>
		   <page>
			  <title>Transcription of folios 0000-100v of the Archimedes Palimpsest. (= Archimedes folio Arch53r,
							Sphere and Cylinder)</title>
			  <lines>33</lines>
			  <words>ὕψος αὐτοῦ τὸ ΝΟ ἐπεὶ οὖν ἡ ΝΟ κῶ νον κῶνον κῶνον ἐπιφά νεια ἰδίαν βάσις Μ Ξ ἐπι φάνεια κῶ νος γενόμε νος παραλλή λων </words>
		   </page>
   		   <!-- carry on for the rest of the pages! -->
		</doc>


Part 3. Graph databases
-----------------------

For this section you will turn the SQL databases you made as homework into graph databases. You will need a running Neo4J instance, and you will be trying out some Cypher commands. This is a more free-form section than the previous two - as long as you have a graph at the end that represents the scenario you are trying to model, then you will get credit.

1. Pick TWO of the three scenarios you chose from [Homework 2](https://github.com/DHBern/digitaldata_2015/blob/master/homework/Week5/Homework%202.md). Record in your `final_exam` document which scenarios you picked.

2. Write down five concrete examples of the scenario described (e.g., for problem 1, a concrete scenario would be "John Brown has borrowed the book *The Grapes of Wrath*, and it is due back on 24 June." Ideally there will be some overlap between the examples, e.g. the same person borrowing multiple books. Record these examples in your `final_exam` document.

3. From the concrete examples in #2, decide what your entities (nodes) are, what their labels should be, and what properties they might have (e.g. John Brown, a person, with an address and a library membership that expires at the end of 2015). Write down the list of entities in Cypher pattern syntax, for example:

	 	(john:Patron {name: 'John Brown', address: '123 Main Street', membership_expires: '2015-12-31'})
	 	
4. From the concrete examples in #2, decide what your relationships (edges) are, what their types should be, and what properties they might have (e.g. John BORROWED the book, with a due date of 24 June.) Write down the relationships in Cypher pattern syntax, for example:

		(john)-[:BORROWED {due:'2015-06-24'}]->(thebook)
		
5. Now take all your entities and all your relationships and create them in Neo4J. You can use the CREATE command for this, and if you have given your entities unique names, then you can simply join together all of your patterns like this, listing the entities BEFORE the relationships:

		CREATE 
			(john:Patron {name: 'John Brown', address: '123 Main Street', membership_expires: '2015-12-31'}),
			(thebook:Book {AND ITS ATTRIBUTES}), 
			(john)-[:BORROWED {due:'2015-06-24'}]->(thebook),
			AND SO ON WITH EVERYTHING ELSE
			
6. Now write a Cypher MATCH statement to answer two of the following questions, depending on which scenarios you have chosen:
	1. Which books are currently lent out from your library?
	2. What were the student scores on the last test that was given?
	3. What pieces of music were played at performances that were reviewed in a newspaper?
	4. What journal articles were NOT accepted for publication?
	5. What characters (if any) appear in more than one play?


You're finished! Enjoy the summer.
----------------------------------
