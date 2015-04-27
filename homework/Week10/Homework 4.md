Homework for Week 10
===================

Your assignment this week is to get comfortable with XQuery in eXist, by
both reading XML data and updating it.

Step 1
------
Make me a list of all the play titles in your Shakespeare collection,
wrapped in a `<title>` element inside a `<play>` element.

Step 2
------
Now get the list of characters in each play. The characters appear in the
plays as the text of the `<speaker>` element. Put each of them in your own
`<speaker>` element, after the `<title>` inside your `<play>`.

Step 3
------
You'll have a huge list from the above! You can make it smaller with the
XPath/XQuery function distinct-values(). So, for example,

	for $part in distinct-values($play//tei:speaker)	
Change your XQuery so that you are listing only the distinct speakers.

Step 4
------
Now you'll probably start to see examples of the same speaker spelled in
different ways. You can make this more obvious using an 'order by'
statement, which is the O in FLWOR. Just put a line

	order by $speaker
directly underneath the for statement from the last step.

Step 5
------
It's time to start cleaning your data! Save the XQuery file as you have it
so far to your personal Github directory, and commit and push it. 

Now move to the shared class repository, do a `git pull` to get the latest
files, and open the file `xml_examples/xquery_examples/example_9.xquery`
there. This is our example in class of how to update files in eXist. Use
this as a template to do your own data cleanup on your choice of play. Look
for the different variants of a single name and put them in $variants, and
put the canonical form of the name in $correct_name. Let loose your
perfectionist tendencies! (Or borrow some perfectionist tendencies from a
friend.)

Step 6
------
Look for other things to update in the same way, in the plays. For example,
you could add a 'type' attribute to distinguish the headers for acts from
the headers for scenes. Or else you could number them with an 'n'
attribute. Here's how you add an attribute to an element in eXist XQuery:

	update insert attribute name {'value'} into $element
where `name` is the attribute name, `value` is the attribute value, and
`$element` contains the element that you want to add the attribute to.