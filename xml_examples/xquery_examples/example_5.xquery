(: An XQuery run on an eXist DB can also work across a whole series of 
   documents - this is what makes eXist a true database. For that you use 
   the 'collection' function, instead of 'doc'. :)
   
declare default element namespace 'http://www.tei-c.org/ns/1.0';

(: Here we get the title of each play in our shakespeare collection. :)
collection('shakespeare')//fileDesc/titleStmt/title/text()