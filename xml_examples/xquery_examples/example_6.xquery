(: We can transform the information we get into any format we like! So far we 
   have been printing out the elements we retrieve, or maybe just their text; 
   once we joined the bits of text into a single string with line breaks. But 
   we can also make, e.g., an HTML document for each text. :)
   
(: This time we don't want a default namespace, since HTML has no namespace!
   So we will make a tei namespace and use it in our XPath expressions. :)
declare namespace tei = 'http://www.tei-c.org/ns/1.0';

(: For each play we will get its title, and we will get the list of acts. We
   recognize acts because they are <head> elements whose text begins with the
   characters 'Act'. :)
for $play in collection('shakespeare')
    let $playname := $play//tei:fileDesc/tei:titleStmt/tei:title/text()
    let $acts := $play//tei:text//tei:head[starts-with(., 'Act')]/text()
    return
<play>
    <title>{$playname}</title>
    <acts>{string-join($acts, '&#xa;')}</acts>
</play>

(: That gobbledygook in the string-join() is the XML way of saying "new line". :)
