Flags
-----
Regular expressions usually take some set of *flags* that alter how the expression is treated. The most useful one to know about is the one we used:

    re.I   (Case-insensitive: don't pay attention to upper- or lowercase)
    re.M   (The text is a multi-line file; make ^ and $ work on every line.)
    

Characters, metacharacters, and patterns
----------------------------------------

A regular expression is a *pattern* specified using *characters* and *metacharacters*. A character is, well, any old thing that can appear in a text file. A metacharacter is a character that doesn't get treated as itself, but rather signals to the regular expression engine that you want to express something more complicated. Typical metacharacters are:

    .       (Match any character)
    [,+;]   (Match the character if it is any of the things inside the [])
    (abc)   (Make abc a group: apply any of the following to the whole thing.)
    +       (Match the previous character or group one or more times)
    {3}     (Match the previous character or group exactly three times)
    {1,4}   (Match the previous character or group between 1 and 4 times)
    *       (Match the previous character or group zero or more times)
    ?       (If the previous character or group isn't there, treat the pattern as a match anyway)
    \       (The thing that follows is a metacharacter (if normally not) or a character (if normally meta))
    
So this means that:

* `(abc)+` will match `abc` or `abcabc` but not `abac`.
* `[abc]+` will match `a` or `b` or `abac` or really any combination of a, b, and c.
* If you want to match anything at all, you match `.*`. 
* If you want to match anything except the empty string, you match `.+`.
* If you want to match a period, you match `\. `; for a plus sign, `\+ `.

There are a few more metacharacters that you should know about:

    \w   (match a "word" character, which is usually A-Z, a-z, 0-9, and _)
    \d   (match a "digit" character, which is generally 0-9)
    \s   (match any sort of "space" character, including space, tab, carriage return, etc.)
    
    ^   The beginning (of the string, or of the line with re.M)
    $   The end (of the string, or of the line with re.M)

