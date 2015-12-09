<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<head>
		<title>Premier League</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<link href="css/bootstrap.min.css" rel="stylesheet"/> 
		<link href="css/custom.css" rel="stylesheet"/>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/buttonScript.js"></script>
		<script src="js/jquery.bxslider/plugins/jquery.easing.1.3.js"></script>
    </head>
 <body>
      
        <div id="banner">
            <img src="img/PL_Banner.png" class="img-responsive" alt="Premier League Banner"/>
        </div>
      
        <div class="container">
            <div class="col-md-6">
                <div id="fixturesDiv">
            <button  id="Btn1" class="btn btn-primary" type="button">Week 1 Results</button><br /><br />
            <table id="week1" class="table table-responsive table-hover table-condensed">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W1']/match">
            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
       
            </table>


            <button id="Btn2" class="btn btn-primary" type="button">Week 2 Results</button><br /><br />
            <table id="week2"  class="table table-responsive table-hover table-condensed">

            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W2']/match">
             <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>

            <button id="Btn3" class="btn btn-primary" type="button">Week 3 Results</button><br /><br />
            <table id="week3"  class="table table-responsive table-hover table-condensed">

            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W3']/match">
            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>


            <button id="Btn4" class="btn btn-primary" type="button">Week 4 Results</button><br /><br />
            <table id="week4"  class="table table-responsive table-hover table-condensed">

            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W4']/match">
            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>


            <button id="Btn5" class="btn btn-primary" type="button">Week 5 Results</button><br /><br />
            <table id="week5"  class="table table-responsive table-hover table-condensed">

            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W5']/match">
            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>

            <button id="Btn6" class="btn btn-primary" type="button">Week 6 Results</button><br /><br />
            <table id="week6"  class="table table-responsive table-hover table-condensed">

            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W6']/match">
            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>


            <button id="Btn7" class="btn btn-primary" type="button">Week 7 Results</button><br /><br />
            <table id="week7"  class="table table-responsive table-hover table-condensed">

            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W7']/match">
            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>

           <button id="Btn8" class="btn btn-primary" type="button">Week 8 Results</button><br /><br />
            <table id="week8"  class="table table-responsive table-hover table-condensed">

            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W8']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn9" class="btn btn-primary" type="button"> Week 9 Results</button><br /><br />
            <table id="week9"  class="table table-responsive table-hover table-condensed">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W9']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn10" class="btn btn-primary" type="button"> Week 10 Results</button><br /><br />
            <table id="week10"  class="table table-responsive table-hover table-condensed">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W10']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn11" class="btn btn-primary" type="button"> Week 11 Results</button><br /><br />
            <table id="week11"  class="table table-responsive table-hover table-condensed">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W11']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn12" class="btn btn-primary" type="button"> Week 12 Results</button><br /><br />
            <table id="week12"  class="table table-responsive table-hover table-condensed">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W12']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn13" class="btn btn-primary" type="button"> Week 13 Results</button><br /><br />
            <table id="week13"  class="table table-responsive table-hover table-condensed">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W13']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn14" class="btn btn-primary" type="button"> Week 14 Results</button><br /><br />
            <table id="week14"  class="table table-responsive table-hover table-condensed">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W14']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            
            <button id="Btn15" class="btn btn-primary" type="button"> Week 15 Results</button><br /><br />
            <table id="week15"  class="table table-responsive table-hover table-condensed">


            <tr bgcolor="#9acd32">
                <th style="text-align:left">Date</th>
                <th style="text-align:left">Home Team</th>
                <th style="text-align:left">Result</th>
                <th style="text-align:left">Away Team</th>
            </tr>
            <xsl:for-each select="premierleague/fixtures/week[@id='W15']/match">


            <tr>
                <td><xsl:value-of select="date"/></td>
                <td><xsl:value-of select="homeTeam"/></td>
                <td><xsl:value-of select="Goals/homeTeamGoals"/>:
                <xsl:value-of select="Goals/awayTeamGoals"/></td>
                <td><xsl:value-of select="awayTeam"/></td>
            </tr>
            </xsl:for-each>
            </table>
            </div>
            
                <br/>
                
                
                
                
            </div>
        <div class="col-md-6">
            <div id="slideshow">
            <h1>jquery slideshow</h1>
            </div>
            <br/>
            <div id="updateFormDiv">
                    <form id="newMatchForm" action="updateXml.php" method="post" class="form-inline">
                        <input type="text" class="form-control" name="gameWeek" placeholder="Gameweek" id="W16">
                        </input>

                        <input type="text" class="form-control" name="homeTeam" placeholder="Home Team">
                        </input>

                        <input type="text" class="form-control" name="awayTeam" placeholder="Away Team">
                        </input>

                        <input type="date" class="form-control" name="date" placeholder="Date">
                        </input>

                        <input type="text" class="form-control" name="homeTeamGoals" placeholder="Home Team Goals">
                        </input>

                        <input type="text" class="form-control" name="awayTeamGoals" placeholder="Away Team Goals">
                        </input>
                
                        <input type="submit" value="Add Result" id="submitBtn" class="btn btn-primary"/>
                    </form>
                </div>
        </div>
               <div id="rss">
                    <!--https://preview.c9users.io/charford/ria/RSS/RssTest.xml?_c9_id=livepreview2&_c9_host=https://ide.c9.io -->
                    <a href="RSS/RssTest.xml">
                    <img src="http://www-prod-storage.cloud.caltech.edu.s3.amazonaws.com/RSS_button_1021.png" width="50" height="50"/>
                    Subscribe to What's New!
                    </a>
                </div> 
        </div> <!--close container div-->
        
             <!--   <div class="navbar navbar-inverse navbar-default navbar-fixed-bottom">
                    <p class="navbar-text pull-left">Created by Sam Quigley, Cian Harford &amp; Mateusz Matuszczyk.</p>
                    </div> -->
    </body>
</html>
</xsl:template>
</xsl:stylesheet>