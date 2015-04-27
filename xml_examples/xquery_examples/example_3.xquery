(: XQuery comes into its own when we want to do things that are complex, that
   stretch XPath to its limit. For example, if we want to get a bunch of text
   nodes and print them on separate lines, or join them with a comma, or stick
   them in formatted XML elements. :)
declare default element namespace 'http://www.tei-c.org/ns/1.0';
declare option saxon:output "omit-xml-declaration=yes";
let $addr := doc('http://bit.ly/1PKTFBy')//address/addrLine/text()
return string-join($addr, '
')

(: Possible parts of an XQuery are the statements, 'for', 'let', 'where', 
   'order by', and 'return'. The mnemonic for this is FLWOR. :)