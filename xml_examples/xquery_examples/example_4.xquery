(: XQuery is the usual way of getting information out of an XML database
   such as eXist. For that to work, you have to be sure that you are using
   a "transformation scenario" (the wrench-and-play button above) that has
   exist-db set as its transformer. 
   
   Here is an example of querying an XML document in eXist. Note that you 
   only changed the contents of the doc() statement.  Also note that, when 
   you use eXist, you have no need to declare an option for Saxon. :)
declare default element namespace 'http://www.tei-c.org/ns/1.0';
doc('shakespeare/5715.xml')//stage