Graph patterns and Cypher
========================

Start up your Neo4J instance (if you shut it down after class - otherwise it's already running!), go to http://localhost:7474/ in a browser, and make sure your Hollywood data is still there.

	MATCH (n) RETURN count(n)

If you do not get an answer in the hundreds of nodes, then you will need to recreate the database by going to the movie graph tutorial, finding the 'Create' panel, and running the query found there.

Here is a little Cypher cheat sheet. You can also have a look at the [reference card](http://neo4j.com/docs/stable/cypher-refcard/) - though it is not the easiest thing in the world to understand - or the full [manual](http://neo4j.com/docs/stable/cypher-query-lang.html).

	// Return all nodes
	MATCH (n) RETURN n
	// Return all Person nodes
	MATCH (n:Person) RETURN n
	// Return whoever was born in 1962, and the movies they acted in
	MATCH (n {born:1962}-[:ACTED_IN]->(m) RETURN n, m
	// Return the release dates of movies, in order
	MATCH (m:Movie) RETURN m.released ORDER BY m.released
	// Return the movies that got good reviews
	MATCH (p)-[r:REVIEWED]->(m:Movie) WHERE r.rating > 70 RETURN m
	// Return the directors of the movies that Meg Ryan was in
	MATCH (meg {name:'Meg Ryan'})-->(m:Movie), (d)-[:DIRECTED]->(m) RETURN d, m

*******

Questions
---------

This is the same set of questions as you were given in the homework for Week 4, on SQL. You should compare your Cypher answer to your SQL answer, and observe what is easy in SQL but hard in Cypher, and vice versa.

1. When was 'Jerry Maguire' released?
2. When was Kevin Bacon born?
3. What is the tagline of 'The Matrix Reloaded'?

4. Which movies have reviews?
5. What roles were acted in 'Unforgiven'?
6. What roles were acted in 'Cloud Atlas'?
7. How many different people acted in 'Cloud Atlas'?

8. Who acted in movies released in 1995?
9. Who reviewed 'Jerry Maguire'?

10. Who has both produced and directed a movie?
11. (Extra credit) What are the birth years of actors in movies released between 1995 and 2005?

