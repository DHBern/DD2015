(: There can only be one main XQuery expression per document, but that 
   expression can have smaller XQuery expressions nested within it. This
   is often a useful way to get separate lines of text. For example, if
   we want our act titles as in the last example but wrapped in our own 
   'act' element... :)
   
declare namespace tei = 'http://www.tei-c.org/ns/1.0';
for $play in collection('shakespeare')
    let $playname := $play//tei:fileDesc/tei:titleStmt/tei:title/text()
    let $acts := $play//tei:text//tei:head[starts-with(., 'Act')]
    return
<play>
    <title>{$playname}</title>
    <acts>{
    for $act in $play//tei:text//tei:head[starts-with(., 'Act')]//text()
        return <act>{$act}</act>
    }</acts>
</play>