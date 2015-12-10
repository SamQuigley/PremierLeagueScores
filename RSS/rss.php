<?php

/*
 * PHP SimpleXML
 * Loading a XML from a file, adding new elements and editing elements
 */

$match = $_POST["week"];

if (file_exists('RssTest.xml')) {
    //loads the xml and returns a simplexml object
    $xml = simplexml_load_file('RssTest.xml');

    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
    //displaying the element in proper format
    echo '<u><b>This is the RSS code from RssTest.xml:</b></u>
     <br /><br />
     <pre>' . htmlentities($xmlFormat, ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre><br /><br />';

    //adding new child to the xml
    $newChild = $xml->addChild('match');
    $newChild->addChild('homeTeam');
    $newChild->addChild('awayTeam');
    $newChild->addChild('date');
    $newChild->addChild('homeTeamGoals');
    $newChild->addChild('awayTeamGoals');
    
  
    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
    //displaying the element in proper format
    echo '<u><b>This is the xml code from test2.xml with new elements added:</b></u>
     <br /><br />
     <pre>' . htmlentities($xmlFormat, ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre>';

    //changing the nodes values
    //in this case we are changing the value 
    //of all children called <name>
    foreach ($xml->children() as $child)
        $child->gameWeek = "CHANGED";
    foreach ($xml->children() as $child)
        $child->homeTeam = "CHANGED";
        foreach ($xml->children() as $child)
        $child->awayTeam = "CHANGED";
    //displaying the element in proper format
    echo '<br /><u><b>This is the xml code from RssTest.xml with all genre changed:</b></u>
     <br /><br />
     <pre>' . htmlentities($xml->asXML(), ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre>';
} else {
    exit('Failed to open RssTest.xml.');
}
    file_put_contents('RssTest.xml', $xml->asXML());
    
    writeRSS();
    function writeRSS(){
        if (file_exists('RSS/RssTest.xml')) {
            //loads the xml and returns a simplexml object
            $rssxml = simplexml_load_file('RssTest.xml');
            $newChild = $xml->addChild('match');
            $newChild->addChild('homeTeam');
            $newChild->addChild('awayTeam');
            $newChild->addChild('date');
            $newChild->addChild('homeTeamGoals');
            $newChild->addChild('awayTeamGoals');
            file_put_contents('RssTest.xml', $rssxml->asXML());
    
        }
    }
?>
