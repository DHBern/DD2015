(: The simplest form of useful XQuery is an XPath statement, run against an
   XML document somewhere in the world. The document is given with the doc()
   statement, and can be either a URL or a path to a file on your computer. 
   
   Since we are looking at TEI files, we need to be using the TEI namespace!
   The first line here declares the TEI namespace to be the default.  :)
declare default element namespace 'http://www.tei-c.org/ns/1.0';

(: Now we can get, e.g. all the stage directions in one play. :)
doc('https://raw.githubusercontent.com/DHBern/digitaldata_2015/master/xml_examples/merchant_venice.xml')//stage

(: You can try this with different XPath expressions after the doc(), such as:
   //lb[@n="37"]
   //head[@rend="italic"]/following-sibling::stage[1]/following-sibling::sp[1]/ab/text()
   :)