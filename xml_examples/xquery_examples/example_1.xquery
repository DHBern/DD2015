declare option saxon:output "omit-xml-declaration=yes";
(: This is an XPath comment. Everything between the left smiley and
   the right smiley will be ignored by the XPath transformer. :)
   
(: The simplest sort of XQuery is a single XPath expression. :)
"hello world"

(: Instead of "hello world", you can have anything that evaluates to a
   number, or a string of text, or even a date. You can try replacing
   the "hello world" above with either of the following, and see what you get.
   2+2
   current-time()
:)