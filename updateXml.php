

<?php
/*
 * Loading a XML from a file, adding new elements and editing elements
 */
ini_set('display_errors', 'On');
error_reporting(E_ALL);
//get entry from form
$gameWeek = $_POST["gameWeek"];
$homeTeam = $_POST["homeTeam"];
$awayTeam = $_POST["awayTeam"];
$date = $_POST["date"];
$homeTeamGoals = $_POST["homeTeamGoals"];
$awayTeamGoals = $_POST["awayTeamGoals"];

if (file_exists('xml/PL.xml')) {
    //loads the xml and returns a simplexml object
    $xml = simplexml_load_file('xml/PL.xml');
    //print_r($xml);
    
    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
    //echo htmlentities($xmlFormat);


    //displaying the element in proper format
    //echo '<u><b>This is the xml code from PL.xml:</b></u>
    //<br /><br />
    //<pre>' . htmlentities($xmlFormat, ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre><br /><br />'; 

    //adding new child to the xml
    $newChild = $xml->addChild('week');
    $newChild->addChild('homeTeam', $homeTeam);
    $newChild->addChild('awayTeam', $awayTeam);
    $newChild->addChild('date', $date);
    $newChild->addChild('homeTeamGoals', $homeTeamGoals);
    $newChild->addChild('awayTeamGoals', $awayTeamGoals);
  
    //transforming the object in xml format
    $xmlFormat = $xml->asXML();
   // echo htmlentities($xmlFormat);

    //displaying the element in proper format
   echo '<u><b>This is the xml code from product.xml with new elements added:</b></u>
     <br /><br />
     <pre>' . htmlentities($xmlFormat, ENT_COMPAT | ENT_HTML401, "ISO-8859-1") . '</pre>';

file_put_contents('xml/updatedPL.xml', $xml->saveXML());


} else {
    exit('Failed to open product.xml.'); 
}

writeRSS();
function writeRSS(){
    if (file_exists('RSS/RssTest.xml')) {
        $gameWeek = $_POST["gameWeek"];
        $homeTeam = $_POST["homeTeam"];
        $awayTeam = $_POST["awayTeam"];
        $date = $_POST["date"];
        $homeTeamGoals = $_POST["homeTeamGoals"];
        $awayTeamGoals = $_POST["awayTeamGoals"];
        
        $title = $date;
        $description = $homeTeam;
        
        //loads the xml and returns a simplexml object
        $rssxml = simplexml_load_file('RSS/RssTest.xml');
        $newChild = $rssxml->channel->addChild('item');
        $newChild->addChild('title', $title);
        $newChild->addChild('link', 'xml/updatedPL.xml');
        $newChild->addChild('description', $description);
        file_put_contents('RSS/RssTest.xml', $rssxml->asXML());
    }
}
    
?>
