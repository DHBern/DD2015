declare namespace tei = 'http://www.tei-c.org/ns/1.0';
(: Here is a very nested XQuery that will return a single list, in <plays>,
   of each play, its title, and the list of acts it has. :)
<plays>{
    for $play in collection('shakespeare')
        return
    <play>
        <title>{$play//tei:fileDesc/tei:titleStmt/tei:title/text()}</title>
        <acts>{
            for $act in $play//tei:text//tei:head
                where starts-with($act, 'Act')
                return
            <act>{$act/text()}</act>
        }</acts>
    </play>
    }
</plays>