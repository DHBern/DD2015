XPath homework
==============

Cheat sheet
-----------

Here are some examples of XPath that we learned in class, plus a few bonus ones that you will need in order to do the homework.

	/	This is the path separator. A / by itself is the whole document.
	/TEI - Gets the TEI element at the top of the document.
	/child::TEI - Same as /TEI.
	/TEI/teiHeader/fileDesc/titleStmt/title - Gets the 'title' element 
		inside the 'titleStmt' element inside the 'fileDesc' element...etc.
	//text - Gets all 'text' elements anywhere in the document.
	/descendant::text - Same as //text.
	//text() - Gets all text (i.e. stuff outside of elements) anywhere in 
		the document.
	//teiHeader//text() - Gets all text anywhere in the TEI header.
	//p[5] - Get the fifth p element in the document.
	/lb[@n="5"] - Gets the lb element(s) with the attribute n=5.
	/lb/@n - Gets the attribute n of every lb element.
	/lb/attribute::n - Same as /lb/@n.
	/TEI/* - Gets all elements inside TEI.
	//* - Gets all elements.
	//note/ancestor::p - Gets the p elements that contain note elements anywhere.
	//note/ancestor::* - Gets all elements that contain note elements anywhere.
	//note/ancestor::node() - Same as //note/ancestor::*
	//note/parent::node() - Gets the element that contains a note element as a 
		direct child, no matter what it's called.
	//note/.. - Same as //note/parent::node()
	//stage/following-sibling::sp - Get all sp nodes that are at the same level 
	of a stage node, but after it.
	//stage/preceding-sibling::sp - Get all sp nodes that are at the same level 
	of a stage node, but before it.
	
Remember that, if we are dealing with a document that has a namespace set (like all TEI documents), we might have to use a namespace prefix - instead of `//ELEMENT` we say `//tei:ELEMENT`. 
	

Instructions
------------
Open the Bertrand Russell text (`YOUR-GIT-DIRECTORY/digitaldata_2015/xml_examples/russell.xml`) in oXygen. 

Provide an XPath expression that will retrieve the answer to each of the following questions.

1. How do you get the title of the work?

1. How do you get the title of the chapter? (Hint: it's not in a 'title' element.)

1. What types of div appear in the document?

1. What was said in French? (Hint: look for an element with the 'xml:lang' attribute set to 'fr-FR'.)

1. How do you get the first footnote in the text?

1. What page numbers appear in the document?

1. How do you get the contents of page 198?

1. How do you get the items in the list in the text?

1. How do you get just the second item?

1. What work (author and title) was cited in the footnote?

1. How do you get the paragraphs at the top of each page?
