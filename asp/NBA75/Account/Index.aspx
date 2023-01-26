<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="NBA75.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- CSS -->
  <link rel="stylesheet" href="/CSS/index.css" />
  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
  <!-- Site icon -->
  <link rel="apple-touch-icon" sizes="180x180" href="assets/apple-touch-icon.png" />
  <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon-32x32.png" />
  <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon-16x16.png" />
  <link rel="manifest" href="assets/site.webmanifest" />
  <!-- Font Awesome -->
  <script src="https://kit.fontawesome.com/5f389ddbdc.js" crossorigin="anonymous"></script>
  <title>NBA 75 | NBA.com</title>
</head>

<body>
  <div class="header bg-light">
    <div class="container">
      <div class="row align-items-center justify-content-center text-center">
        <div class="col-md-2">
          <img src="assets/75.png" id="logo" alt="nba75" />
        </div>
        <div class="col-md-8">
          <h1 class="site-heading">NBA 75th Annieversary</h1>
        </div>
        <div class="col-md-2">
          <nav class="navbar-nav lista">
            <a runat="server" href="~/" class="nav-link p-1 nav-item">NBA75 Home</a>
            <a runat="server" href="~/Account/CreateYourTeam.aspx" class="nav-link p-1 nav-item">Create Your Team</a>
          </nav>
        </div>
      </div>
    </div>
  </div>

  <div class="intro bg-light">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h1>Welcome to website about NBA's 75th season</h1>
          <br />
          <!-- JavaScriptom odraditi da se tekst dodaje rec po rec i ostane tu 5 sekundi i onda ispocetka -->
          <!-- 
            This webpage will take you through the 75 greatest years of NBA basketball, 75 greatest NBA players, some
            of the best coaches the game of basketball has ever seen and much more. 
          -->
          <h4 class="blink">
            This webpage will take you through the 75 greatest years of NBA
            basketball, 75 greatest NBA players, some of the best coaches the
            game of basketball has ever seen and much more.
          </h4>
        </div>
      </div>
    </div>
  </div>

  <div class="about bg-light">
    <a id="about"></a>
    <div class="container">
      <div class="row p-1 align-items-center">
        <div class="col-md-6 intro-padding">
          <h3>Simple informations about league</h3>
          <p class="p-about">
            The National Basketball Association (NBA) is a professional
            basketball league in North America. The league is composed of 30
            teams (29 in the United States and 1 in Canada) and is one of the
            four major professional sports leagues in the United States and
            Canada. It is the premier men's professional basketball league in
            the world.
          </p>
          <p>
            The league was founded in New York City on June 6, 1946, as the
            Basketball Association of America (BAA). It changed its name to
            the National Basketball Association on August 3, 1949, after
            merging with the competing National Basketball League (NBL). The
            NBA's regular season runs from October to April, with each team
            playing 82 games. The league's playoff tournament extends into
            June.
          </p>
        </div>
        <div class="col-md-6 intro-padding">
          <img src="assets/nba-team-photo.png" class="img-fluid" alt="nba-about-photo" />
        </div>
      </div>

      <div class="row p-1 align-items-center">
        <div class="col-md-6 intro-padding order-md-2">
          <h3>Early league days</h3>
          <p class="p-about">
            In 1957, rookie center Bill Russell joined the Boston Celtics,
            which already featured guard Bob Cousy and coach Red Auerbach, and
            went on to lead the franchise to eleven NBA titles in thirteen
            seasons.
          </p>
          <p>
            The 1960s were dominated by the Celtics. Led by Russell, Cousy,
            and Auerbach, Boston won eight straight championships in the NBA
            from 1959 to 1966. This championship streak is the longest in NBA
            history. They did not win the title in 1966-67, but regained it in
            the 1967-68 season and repeated in 1969. The domination totaled
            nine of the ten championship banners of the 1960s.
          </p>
        </div>
        <div class="col-md-6 intro-padding order-md-1">
          <img src="assets/early-days.jpg" class="img-fluid" alt="early-days" />
        </div>
      </div>

      <div class="row p-1 align-items-center">
        <div class="col-md-6 intro-padding">
          <h3>Surging popularity</h3>
          <p class="p-about">
            Michael Jordan entered the league in 1984 with the Chicago Bulls,
            spurring more interest in the league. In 1988 and 1989, four
            cities got their wishes as the Charlotte Hornets, Miami Heat,
            Orlando Magic, and Minnesota Timberwolves made their NBA debuts,
            bringing the total to 27 teams.
          </p>
          <p>
            The Detroit Pistons won the back-to-back NBA Championships in 1989
            and 1990, led by coach Chuck Daly and guard Isiah Thomas. Jordan
            and Scottie Pippen led the Bulls to two three-peats in eight years
            during the 1991-1998 seasons. Hakeem Olajuwon won back-to-back
            titles with the Houston Rockets in 1994 and 1995.
          </p>
        </div>
        <div class="col-md-6 intro-padding">
          <img src="assets/duo.jpg" class="img-fluid" alt="duo" />
        </div>
      </div>

      <div class="row p-1 align-items-center">
        <div class="col-md-6 intro-padding order-md-2">
          <h3>Lakers' and Spurs' dynasties</h3>
          <p class="p-about">
            In 1998, the NBA owners began a lockout that suspended all league
            business until a new labor agreement could be reached, which led
            to the season being shortened in half. The San Antonio Spurs won
            the championship at the end of the 1998-99 season, becoming the
            first former ABA team to win the NBA championship.
          </p>
          <p>
            After the breakup of the Chicago Bulls championship roster in the
            summer of 1998, the Western Conference has dominated. The Los
            Angeles Lakers of coach Phil Jackson and the San Antonio Spurs of
            Gregg Popovich combined to make 13 Finals in 16 seasons, with 10
            titles. Tim Duncan and David Robinson won the 1999 championship
            with the Spurs, and Shaquille O'Neal and Kobe Bryant started the
            2000s with three consecutive championships for the Lakers. The
            Spurs reclaimed the title in 2003 against the Nets. In 2004, the
            Lakers returned to the Finals, only to lose in five games to the
            Detroit Pistons.
          </p>
        </div>
        <div class="col-md-6 intro-padding order-md-1">
          <img src="assets/dynasty.jpg" class="img-fluid" alt="dynasty" />
        </div>
      </div>

      <div class="row p-1 align-items-center">
        <div class="col-md-6 intro-padding">
          <h3>Recent years</h3>
          <p class="p-about">
            After four seasons with the Miami Heat, LeBron James returned to
            the Cleveland Cavaliers for the 2014-15 season. He led the team to
            their second Finals appearance with the help of Kyrie Irving and
            Kevin Love. The Golden State Warriors defeated the Cavaliers in
            six games, led by the "Splash Brothers" Stephen Curry and Klay
            Thompson. The Cavaliers and the Warriors faced each other in the
            Finals a record four consecutive times. In the 2015-16 season, the
            Warriors finished the season 73-9, the best season record in NBA
            history. However, the Cavaliers overcame a 3-1 deficit in the
            Finals to win their first championship that season. In the 2016-17
            season, the Warriors benefited from the recruitment of free agent
            Kevin Durant. The Warriors won the 2017 and 2018 Finals against
            the Cavaliers.
          </p>
        </div>
        <div class="col-md-6 intro-padding">
          <img src="assets/recent.jpg" class="img-fluid" alt="recent" />
        </div>
      </div>
    </div>
  </div>

  <a id="players"></a>

  <div class="players-intro">
    <div class="container">
      <div class="row text-center">
        <h1>NBA 75 TEAM</h1>
        <br />
        <!-- JavaScriptom odraditi da se tekst dodaje rec po rec i ostane tu 5 sekundi i onda ispocetka -->
        <!-- 
          This part will present you list of 75 greatest players in honor to 75 years of NBA basketball. <br>
          Also, whole 2021-2022 season is honoring 75 years of NBA basketball with unique NBA75 logo.
         -->
        <h4 class="blink">
          This part will present you list of 75 greatest players in honor to
          75 years of NBA basketball. <br />
          Also, whole 2021-2022 season is honoring 75 years of NBA basketball
          with unique NBA75 logo.
        </h4>
      </div>
    </div>
  </div>

  <div class="players">
    <div class="container-fluid">
      <div class="row">
        <div class="col-xl-4 photo-class text-center">
          <img src="assets/big-logo2.png" class="img-fluid" alt="big-logo" />
          <h1>
            75th <br />
            Annieversary <br />
            team
          </h1>
        </div>
        <div class="col-xl-2 players-list">
          <li>Kareem Abdul-Jabbar</li>
          <li>Ray Allen</li>
          <li>Giannis Anteto.</li>
          <li>Carmelo Anthony</li>
          <li>Nate Archibald</li>
          <li>Paul Arizin</li>
          <li>Charles Barkley</li>
          <li>Rick Barry</li>
          <li>Elgin Baylor</li>
          <li>Dave Bing</li>
          <li>Larry Bird</li>
          <li>Kobe Bryant</li>
          <li>Wilt Chamberlain</li>
          <li>Bob Cousy</li>
          <li>Dave Cowens</li>
          <li>Billy Cunningham</li>
          <li>Stephen Curry</li>
          <li>Anthony Davis</li>
          <li>Dave DeBusschere</li>
        </div>
        <div class="col-xl-2 players-list">
          <li>Clyde Drexler</li>
          <li>Tim Duncan</li>
          <li>Kevin Durant</li>
          <li>Julius Erving</li>
          <li>Patrick Ewing</li>
          <li>Walt Frazier</li>
          <li>Kevin Garnett</li>
          <li>George Gervin</li>
          <li>Hal Greer</li>
          <li>James Harden</li>
          <li>John Havlicek</li>
          <li>Elvin Hayes</li>
          <li>Allen Iverson</li>
          <li>LeBron James</li>
          <li>Magic Johnson</li>
          <li>Sam Jones</li>
          <li>Michael Jordan</li>
          <li>Jason Kidd</li>
          <li>Kawhi Leonard</li>
        </div>
        <div class="col-xl-2 players-list">
          <li>Damian Lillard</li>
          <li>Jerry Lucas</li>
          <li>Karl Malone</li>
          <li>Moses Malone</li>
          <li>Pete Maravich</li>
          <li>Bob McAdoo</li>
          <li>Kevin McHale</li>
          <li>George Mikan</li>
          <li>Reggie Miller</li>
          <li>Earl Monroe</li>
          <li>Steve Nash</li>
          <li>Dirk Nowitzki</li>
          <li>Hakeem Olajuwon</li>
          <li>Shaquille O'neal</li>
          <li>Robrt Parish</li>
          <li>Chris Paul</li>
          <li>Gary Payton</li>
          <li>Bob Pettit</li>
          <li>Paul Pierce</li>
        </div>
        <div class="col-xl-2 players-list">
          <li>Scottie Pippen</li>
          <li>Willis Reed</li>
          <li>Oscar Robertson</li>
          <li>David Robinson</li>
          <li>Dennis Rodman</li>
          <li>Bill Russell</li>
          <li>Dolph Schayes</li>
          <li>Bill Sharman</li>
          <li>John Stockton</li>
          <li>Isiah Thomas</li>
          <li>Nate Thurmond</li>
          <li>Wes Unseld</li>
          <li>Dwyane Wade</li>
          <li>Bill Walton</li>
          <li>Jerry West</li>
          <li>Russell Westbrook</li>
          <li>Lenny Wilkens</li>
          <li>Dominique Wilkins</li>
          <li>James Worthy</li>
        </div>
      </div>
    </div>
  </div>

  <div class="coaches-intro bg-dark">
    <div class="container">
      <a id="coaches"></a>
      <div class="row text-center">
        <div class="row-intro">
          <h1>15 GREATEST COACHES</h1>
          <br />
          <h4>
            The NBA unveiled the 15 greatest coaches in NBA history as part of
            the continuing celebration of the league's 75th Anniversary
            Season. The list was selected by a panel of 43 current & former
            NBA head coaches in collaboration with the National Basketball
            Coaches Association.
          </h4>
          <a href="#coaches-list" class="btn dugme">Show coaches</a>
        </div>

        <div class="row pb-5">
          <div class="slider-wrapper col-12">
            <button id="left-btn"><i class="arrow"></i></button>
            <div class="slider-images">
              <img src="assets/popovich.jpg" alt="popovich">
              <img src="assets/spoelstra.png" alt="spoelstra.png">
              <img src="assets/riley.jpg" alt="riley.jpg">
              <img src="assets/rivers.jpg" alt="rivers.jpg">
            </div>
            <button id="right-btn"><i class="arrow"></i></button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="coaches bg-light bg-gradient">
    <div class="container">
      <div class="row p-1 align-items-center justify-content-center line">
        <a id="coaches-list"></a>
        <div class="col-lg-4">
          <img src="assets/coach-1.jpg" class="img-fluid coach-photo" alt="coach-1" />
        </div>
        <div class="col-lg-4">
          <h1 class="coach-name text-center">RED AUERBACH</h1>
          <ul class="acolades">
            <li class="ul-li">NBA seasons coached: 20</li>
            <li class="ul-li">Regular-Season Record: 938-479 (.662)</li>
            <li class="ul-li">NBA Championships: 9</li>
            <li class="ul-li">NBA Coach of the Year Awards: 1</li>
            <li class="ul-li">Basketball Hall of Fame Class: 1969</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>
              Guided the Boston Celtics to nine NBA championships (1956-57 and
              1958-59 - 1965-66).
            </li>
            <li>
              Ranks second in career NBA championships, behind Phil Jackson
              (11).
            </li>
            <li>
              Won a record eight consecutive NBA championships (1958-59 -
              1965-66).
            </li>
            <li>
              Ranks 12th on the all-time wins list in the regular season and
              fifth in the playoffs (99).
            </li>
            <li>
              Retired in 1966 as the winningest head coach in NBA history and
              held the record until 1995.
            </li>
            <li>
              Has the fifth-highest winning percentage in the regular season
              (min. 400 games).
            </li>
            <li>
              Named the 1964-65 NBA Coach of the Year - his second-to-last
              season as a head coach and the third season of the award.
            </li>
            <li>
              Worked as a head coach in each of the NBA's first 20 seasons.
            </li>
            <li>
              Served as a head coach in the NBA All-Star Game a record 11
              times.
            </li>
            <li>NBA Coach of the Year Award trophy is named in his honor.</li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line blue bg-gradient">
        <div class="col-lg-4">
          <img src="assets/coach-2.jpg" class="img-fluid coach-photo" alt="coach-2" />
        </div>
        <div class="col-lg-4">
          <h1 class="coach-name text-center">LARRY BROWN</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 26</li>
            <li class="ul-li">Regular-Season Record: 1,098-904 (.548)</li>
            <li class="ul-li">NBA Championships: 1</li>
            <li class="ul-li">NBA Coach of the Year Awards: 1</li>
            <li class="ul-li">Basketball Hall of Fame Class: 2002</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>
              Ranks eighth on the all-time wins list in the regular season and
              fourth in the playoffs (100).
            </li>
            <li>
              Tied for fourth place in seasons coached and ranks sixth in
              regular-season games coached (2,002).
            </li>
            <li>
              Coached an NBA-record eight different franchises to the
              playoffs: Denver Nuggets, New Jersey Nets (now Brooklyn Nets),
              San Antonio Spurs, LA Clippers, Indiana Pacers, Philadelphia
              76ers, Detroit Pistons and Charlotte Bobcats (now Charlotte
              Hornets).
            </li>
            <li>Guided Detroit to the NBA championship in 2003-04.</li>
            <li>
              Reached the NBA Finals with Philadelphia in 2000-01 and Detroit
              in 2004-05.
            </li>
            <li>Named the 2000-01 NBA Coach of the Year with the 76ers.</li>
            <li>Served as a head coach in the NBA All-Star Game twice.</li>
            <li>
              Received the Chuck Daly Lifetime Achievement Award from the
              National Basketball Coaches Association in 2021.
            </li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line">
        <div class="col-lg-4">
          <img src="assets/coach-3.jpg" class="img-fluid coach-photo" alt="coach-3" />
        </div>
        <div class="col-lg-4">
          <h1 class="coach-name text-center">CHUCK DALY</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 14</li>
            <li class="ul-li">Regular-Season Record: 638-437 (.593)</li>
            <li class="ul-li">NBA Championships: 2</li>
            <li class="ul-li">Basketball Hall of Fame Class: 1994</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>
              Guided the Detroit Pistons to back-to-back NBA titles (1988-89,
              1989-90).
            </li>
            <li>
              Ranks 25th on the all-time wins list in the regular season and
              tied for 14th in the playoffs (75).
            </li>
            <li>
              Has the 12th-highest regular-season winning percentage (min. 400
              games).
            </li>
            <li>
              Recorded a .595 winning percentage in the playoffs (75-51).
            </li>
            <li>
              Qualified for the playoffs in 12 of his 13 full seasons as an
              NBA head coach.
            </li>
            <li>
              Posted a 467-271 record (.633) in nine seasons with Detroit -
              the winningest head coach in franchise history.
            </li>
            <li>
              Led the Pistons to five straight seasons of at least 50
              victories from 1986-87 - 1990-91.
            </li>
            <li>
              Coached Detroit to the NBA Finals in 1987-88, the first of three
              appearances in a row.
            </li>
            <li>
              National Basketball Coaches Association's Lifetime Achievement
              Award is named in his honor.
            </li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line blue bg-gradient">
        <div class="col-lg-4">
          <img src="assets/coach-4.jpg" class="img-fluid coach-photo" alt="coach-4" />
        </div>
        <div class="col-lg-4">
          <h1 class="coach-name text-center">RED HOLZMAN</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 18</li>
            <li class="ul-li">Regular-Season Record: 696-603 (.536)</li>
            <li class="ul-li">NBA Championships: 2</li>
            <li class="ul-li">NBA Coach of the Year Awards: 1</li>
            <li class="ul-li">Basketball Hall of Fame Class: 1986</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>
              Ranks 20th on the all-time wins list in the regular season and
              19th in the playoffs (58).
            </li>
            <li>
              Retired in 1982 as the second-winningest head coach in NBA
              history.
            </li>
            <li>
              Guided the New York Knicks to two NBA championships (1969-70,
              1972-73).
            </li>
            <li>
              Led New York to a 613-483 record (.559) in 14 seasons - the
              winningest head coach in franchise history.
            </li>
            <li>Coached the Knicks to the NBA Finals in 1971-72.</li>
            <li>
              Named the 1969-70 NBA Coach of the Year - the first winner of
              the award in Knicks history.
            </li>
            <li>Served as a head coach in the NBA All-Star Game twice.</li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line">
        <div class="col-lg-4">
          <img src="assets/coach-5.jpg" class="img-fluid coach-photo" alt="coach-5" />
        </div>
        <div class="col-lg-4">
          <h1 class="coach-name text-center">PHIL JACKSON</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 20</li>
            <li class="ul-li">Regular-Season Record: 1,155-485 (.704)</li>
            <li class="ul-li">NBA Championships: 11</li>
            <li class="ul-li">NBA Coach of the Year Awards: 1</li>
            <li class="ul-li">Basketball Hall of Fame Class: 2007</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>
              Holds the record for most NBA championships as a head coach.
            </li>
            <li>
              Won six NBA championships with the Chicago Bulls (1990-91,
              1991-92, 1992-93, 1995-96, 1996-97 and 1997-98) and five with
              the Los Angeles Lakers (1999-00, 2000-01, 2001-02, 2008-09 and
              2009-10).
            </li>
            <li>Has the most career playoff victories (229).</li>
            <li>Ranks seventh on the all-time regular-season wins list.</li>
            <li>
              Owns the highest winning percentage in the regular season (min.
              400 games) and second-highest winning percentage in the playoffs
              at .688 (min. 25 games).
            </li>
            <li>
              Won three consecutive NBA championships twice with the Bulls and
              once with the Lakers.
            </li>
            <li>
              Named NBA Coach of the Year for 1995-96 after leading the Bulls
              to a then-record 72 wins.
            </li>
            <li>
              Worked as a head coach in the NBA Finals a record 13 times.
            </li>
            <li>
              Served as a head coach in the NBA All-Star Game four times.
            </li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line blue bg-gradient">
        <div class="col-lg-4">
          <img src="assets/coach-6.jpg" class="img-fluid coach-photo" alt="coach-6" />
        </div>
        <div class="col-lg-4">
          <h1 class="coach-name text-center">K.C. JONES</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 10</li>
            <li class="ul-li">Regular-Season Record: 522-252 (.674)</li>
            <li class="ul-li">NBA Championships: 2</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>
              Has the fourth-highest regular-season winning percentage (min.
              400 games)
            </li>
            <li>
              Guided the Boston Celtics to two NBA championships (1983-84 and
              1985-86).
            </li>
            <li>
              Led the Celtics to four consecutive NBA Finals appearances
              (1983-84 - 1986-87).
            </li>
            <li>
              Posted a winning percentage of .751 (308-102) in five seasons as
              Boston's head coach.
            </li>
            <li>
              Coached the Washington Bullets (now Washington Wizards) to NBA
              Finals in 1974-75.
            </li>
            <li>Ranks ninth on the all-time playoff wins list (81).</li>
            <li>
              Compiled a record of .500 or better in every season as an NBA
              head coach.
            </li>
            <li>
              Served as a head coach in the NBA All-Star Game five times.
            </li>
            <li>
              Co-recipient (with Jerry Sloan) of the Chuck Daly Lifetime
              Achievement Award from the National Basketball Coaches
              Association in 2016.
            </li>
            <li>
              Elected to the Naismith Memorial Basketball Hall of Fame as a
              player (1989).
            </li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line">
        <div class="col-lg-4">
          <img src="assets/coach-7.jpg" class="img-fluid coach-photo" alt="coach-7" />
        </div>
        <div class="col-lg-4">
          <h1 class="coach-name text-center">STEVE KERR</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 8</li>
            <li class="ul-li">Regular-Season Record: 417-184 (.694)</li>
            <li class="ul-li">NBA Championships: 3</li>
            <li class="ul-li">NBA Coach of the Year Awards: 1</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>
              Guided the Golden State Warriors to three NBA championships in
              his first four seasons as a head coach (2014-15, 2016-17,
              2017-18).
            </li>
            <li>
              Stands as one of six head coaches to win three or more NBA
              championships.
            </li>
            <li>
              Led Golden State to five consecutive NBA Finals appearances
              (2014-15 - 2018-19), the second-longest streak in league
              history.
            </li>
            <li>
              Has the highest playoff winning percentage in NBA history (min.
              25 games) at .733 (77-28).
            </li>
            <li>
              Ranks third in career regular-season winning percentage (min.
              400 games).
            </li>
            <li>
              Joined assistant coach/interim head coach Luke Walton in leading
              the Warriors to an NBA-record 73 wins in 2015-16.
            </li>
            <li>Named NBA Coach of the Year for 2015-16.</li>
            <li>
              Coached the Warriors to NBA records for the most playoff
              victories in a row (15) and the best single-season playoff
              winning percentage (.941; 16-1 record), both in the 2016-17
              season.
            </li>
            <li>
              Has served as a head coach in the NBA All-Star Game twice.
            </li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line blue bg-gradient">
        <div class="col-lg-4">
          <img src="assets/coach-8.jpg" class="img-fluid coach-photo" alt="coach-8" />
        </div>
        <div class="col-lg-4">
          <h1 class="coach-name text-center">DON NELSON</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 31</li>
            <li class="ul-li">Regular-Season Record: 1,335-1,063 (.557)</li>
            <li class="ul-li">NBA Coach of the Year Awards: 3</li>
            <li class="ul-li">Basketball Hall of Fame Class: 2012</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>Has the most regular-season victories in NBA history.</li>
            <li>
              Surpassed Lenny Wilkens on April 7, 2010, as the winningest head
              coach in NBA history.
            </li>
            <li>
              Ranks second in seasons coached and regular-season games coached
              (2,398).
            </li>
            <li>
              Named NBA Coach of the Year for 1982-83, 1984-85 and 1991-92.
            </li>
            <li>
              Shares the NBA record for most Coach of the Year awards (along
              with Pat Riley and Gregg Popovich).
            </li>
            <li>
              Won at least 300 games with three different franchises:
              Milwaukee Bucks (540), Golden State Warriors (422) and Dallas
              Mavericks (339).
            </li>
            <li>
              Recorded 13 seasons with 50 or more wins, including two with 60
              victories.
            </li>
            <li>Served as a head coach in the NBA All-Star Game twice.</li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line">
        <div class="col-lg-4">
          <img src="assets/coach-9.jpg" class="img-fluid coach-photo" alt="coach-9" />
        </div>
        <div class="col-lg-4">
          <h1 id="greg" class="coach-name text-center">GREGG POPOVICH</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 26</li>
            <li class="ul-li">Regular-Season Record: 1,330-687 (.661)</li>
            <li class="ul-li">NBA Championships: 5</li>
            <li class="ul-li">NBA Coach of the Year Awards: 3</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>
              Ranks third on the all-time wins list in both the regular season
              and playoffs (170).
            </li>
            <li>
              Has the most combined victories across the regular season and
              playoffs (1,496).
            </li>
            <li>
              Guided the San Antonio Spurs to five NBA championships: 1998-99,
              2002-03, 2004-05, 2006-07 and 2013-14.
            </li>
            <li>
              Tied for the third-most NBA championships (along with John
              Kundla and Pat Riley).
            </li>
            <li>
              Named NBA Coach of the Year for 2002-03, 2011-12 and 2013-14.
            </li>
            <li>
              Shares the NBA record for most Coach of the Year awards (along
              with Don Nelson and Pat Riley).
            </li>
            <li>
              Has coached San Antonio for 26 seasons, the longest tenure with
              one franchise in NBA history.
            </li>
            <li>
              Ranks sixth in career regular-season winning percentage (min.
              400 games).
            </li>
            <li>
              Served as a head coach in the NBA All-Star Game four times.
            </li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line blue bg-gradient">
        <div class="col-lg-4">
          <img src="assets/coach-10.jpg" class="img-fluid coach-photo" alt="coach-10" />
        </div>
        <div class="col-lg-4">
          <h1 class="coach-name text-center">JACK RAMSAY</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 21</li>
            <li class="ul-li">Regular-Season Record: 864-783 (.525)</li>
            <li class="ul-li">NBA Championships: 1</li>
            <li class="ul-li">Basketball Hall of Fame Class: 1992</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>Ranks 14th on the all-time regular-season wins list.</li>
            <li>Retired as the second-winningest coach in NBA history.</li>
            <li>
              Led the Portland Trail Blazers to the NBA championship in
              1976-77.
            </li>
            <li>
              Coached four different franchises to the playoffs: Trail
              Blazers, Philadelphia 76ers, Buffalo Braves (now LA Clippers)
              and Indiana Pacers.
            </li>
            <li>
              Guided Portland to the playoffs in nine of his 10 seasons as its
              head coach.
            </li>
            <li>
              Winningest head coach in Trail Blazers history (453
              regular-season victories).
            </li>
            <li>
              Led Buffalo to the first three playoff berths in franchise
              history.
            </li>
            <li>
              Named co-recipient (along with Tex Winter) of the Chuck Daly
              Lifetime Achievement Award from the National Basketball Coaches
              Association in 2010.
            </li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line">
        <div class="col-lg-4">
          <img src="assets/coach-11.jpg" class="img-fluid coach-photo" alt="coach-11" />
        </div>
        <div class="col-lg-4">
          <h1 class="coach-name text-center">PAT RILEY</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 24</li>
            <li class="ul-li">Regular-Season Record: 1,210-694 (.636)</li>
            <li class="ul-li">NBA Championships: 5</li>
            <li class="ul-li">NBA Coach of the Year Awards: 3</li>
            <li class="ul-li">Basketball Hall of Fame Class: 2008</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>
              Ranks fifth on the all-time wins list in the regular season and
              second in the playoffs (171).
            </li>
            <li>
              Led the Los Angeles Lakers to four NBA championships (1981-82,
              1984-85, 1986-87 and 1987-88) and the Miami Heat to one
              (2005-06).
            </li>
            <li>
              Tied for the third-most NBA championships (along with John
              Kundla and Gregg Popovich).
            </li>
            <li>
              Named NBA Coach of the Year for 1989-90, 1992-93 and 1996-97.
            </li>
            <li>
              Shares the NBA record for most Coach of the Year awards (along
              with Don Nelson and Gregg Popovich).
            </li>
            <li>
              Only head coach to be selected as NBA Coach of the Year with
              three different franchises (Lakers, Heat and New York Knicks).
            </li>
            <li>
              Has the seventh-highest winning percentage in the regular season
              (min. 400 games).
            </li>
            <li>
              Served as a head coach in the NBA All-Star Game nine times.
            </li>
            <li>
              Received the Chuck Daly Lifetime Achievement Award from the
              National Basketball Coaches Association in 2012.
            </li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line blue bg-gradient">
        <div class="col-lg-4">
          <img src="assets/coach-12.jpg" class="img-fluid coach-photo" alt="coach-12" />
        </div>
        <div class="col-lg-4">
          <h1 class="coach-name text-center">DOC RIVERS</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 22</li>
            <li class="ul-li">Regular-Season Record: 1,024-725 (.585)</li>
            <li class="ul-li">NBA Championships: 1</li>
            <li class="ul-li">NBA Coach of the Year Awards: 1</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>
              Ranks 10th on the all-time wins list in the regular season and
              tied for sixth in the playoffs (98).
            </li>
            <li>Led the Boston Celtics to the 2007-08 NBA championship.</li>
            <li>Guided Boston to the NBA Finals in 2009-10.</li>
            <li>Ranks 11th in regular-season games coached (1,749).</li>
            <li>
              Has coached four different franchises to the playoffs: Celtics,
              Orlando Magic, LA Clippers and Philadelphia 76ers.
            </li>
            <li>
              Named NBA Coach of the Year for 1999-2000 with Orlando - his
              first season as an NBA head coach.
            </li>
            <li>
              Winningest head coach in Clippers history (356 regular-season
              victories).
            </li>
            <li>
              Qualified for the playoffs in 17 of his previous 22 seasons as
              an NBA head coach.
            </li>
            <li>
              Served as a head coach in the NBA All-Star Game three times.
            </li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line">
        <div class="col-lg-4">
          <img src="assets/coach-13.jpg" class="img-fluid coach-photo" alt="coach-13" />
        </div>
        <div class="col-lg-4">
          <h1 class="coach-name text-center">JERRY SLOAN</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 26</li>
            <li class="ul-li">Regular-Season Record: 1,221-803 (.603)</li>
            <li class="ul-li">Basketball Hall of Fame Class: 2009</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>Ranks fourth on the all-time regular-season wins list.</li>
            <li>Has the sixth-most victories in the playoffs (98).</li>
            <li>
              Served as head coach of the Utah Jazz for 23 seasons, the
              second-longest tenure with a team in NBA history.
            </li>
            <li>
              Coached in the fourth-most games in both the regular season
              (2,024) and playoffs (202).
            </li>
            <li>
              Guided the Jazz to back-to-back NBA Finals appearances in
              1996-97 and 1997-98.
            </li>
            <li>
              Led Utah to 15 straight playoff appearances from 1988-89 -
              2002-03.
            </li>
            <li>
              First head coach to win 1,000 regular-season games with one
              team.
            </li>
            <li>
              Recorded three seasons with 60 or more wins and 13 seasons with
              50 or more wins.
            </li>
            <li>
              Named co-recipient (with K.C. Jones) of the Chuck Daly Lifetime
              Achievement Award from the National Basketball Coaches
              Association in 2016.
            </li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line blue bg-gradient">
        <div class="col-lg-4">
          <img src="assets/coach-14.jpg" class="img-fluid coach-photo" alt="coach-14" />
        </div>
        <div class="col-lg-4">
          <h1 id="spo" class="coach-name text-center">ERIK SPOELSTRA</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 14</li>
            <li class="ul-li">Regular-Season Record: 642-444 (.591)</li>
            <li class="ul-li">NBA Championships: 2</li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>
              Guided the Miami Heat to back-to-back NBA championships in
              2011-12 and 2012-13.
            </li>
            <li>
              Ranks 24th on the all-time wins list in the regular season and
              eighth in the playoffs (85).
            </li>
            <li>
              Led Miami to five NBA Finals appearances and 10 playoff berths
              in the previous 13 seasons.
            </li>
            <li>
              Coached the Heat to four straight NBA Finals appearances
              (2010-11 - 2013-14), one of five head coaches to reach four
              Finals in a row.
            </li>
            <li>
              Has served as Miami's head coach for 14 seasons, tied for the
              fourth-longest tenure with a franchise in NBA history. One of
              nine head coaches to win an NBA championship in consecutive
              seasons.
            </li>
            <li>
              Winningest head coach in Heat history (642 regular-season
              victories).
            </li>
            <li>
              Set to serve as a head coach in the NBA All- Star Game for the
              second time.
            </li>
          </ul>
        </div>
      </div>

      <div class="row p-1 align-items-center justify-content-center line">
        <div class="col-lg-4">
          <img src="assets/coach-15.jpg" class="img-fluid coach-photo" alt="coach-15" />
        </div>
        <div class="col-lg-4">
          <h1 id="lenny" class="coach-name text-center">LENNY WILKENS</h1>
          <ul class="acolades">
            <li class="ul-li">NBA Seasons Coached: 32</li>
            <li class="ul-li">Regular-Season Record: 1,332-1,155 (.536)</li>
            <li class="ul-li">NBA Championships: 1</li>
            <li class="ul-li">NBA Coach of the Year Awards: 1</li>
            <li class="ul-li">
              Basketball Hall of Fame Class: 1998 ( Coach)
            </li>
          </ul>
        </div>
        <div class="col-lg-4">
          <ul class="facts">
            <li>
              Ranks second on the all-time regular-season wins list. Holds NBA
              records for seasons coached and regular-season games coached
              (2,487).
            </li>
            <li>
              Surpassed Red Auerbach on Jan. 6, 1995, as the winningest head
              coach in NBA history - a record that Wilkens held until 2010.
            </li>
            <li>
              First NBA head coach to win 1,000 regular-season games. Guided
              the Seattle SuperSonics to the NBA championship in 1978-79.
            </li>
            <li>
              Named the 1993-94 NBA Coach of the Year with the Atlanta Hawks.
            </li>
            <li>
              Served as a head coach in the NBA All-Star Game four times.
            </li>
            <li>
              Received the Chuck Daly Lifetime Achievement Award from the
              National Basketball Coaches Association in 2011.
            </li>
            <li>
              Elected to the Naismith Memorial Basketball Hall of Fame as a
              coach and a player (1989).
            </li>
            <li>
              Recently selected to the NBA 75th Anniversary Team as a player.
            </li>
          </ul>
        </div>
      </div>

      <div class="row align-items-center justify-content-center">
        <div class="bg-gradient more">
          <h1 class="text-center">
            More about them you can find
            <a href="https://www.nba.com/stories/75-season-top-coaches" target="_blank">here</a>.
          </h1>
        </div>
      </div>
    </div>
  </div>

  <div class="newsletter bg-light bg-gradient">
    <div class="container">
      <div class="row p-3 align-items-center justify-content-center">
        <div class="col-lg-6 text-center">
          <img src="assets/nba.png" alt="nba-logo" class="img-fluid newsletter-img" />
          <h1>
            NBA <br />
            Newsletter
          </h1>
        </div>
        <div class="col-lg-6">
          <form method="post" runat="server">
            <div>
              <label for="name" class="form-label">Your first name:</label>
              <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div>
              <label for="surname" class="form-label">Your last name:</label>
              <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div>
              <label for="mail" class="form-label">Your email:</label>
              <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <label for="tarea" class="form-label">Your comment:</label>
            <div>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="text-center p-3">
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary buttons" OnClick="Button1_Click" />
                <input type="reset" value="Reset" class="btn btn-danger buttons button-space" />
              <!--
                  <input type="submit" value="Submit" class="btn btn-primary buttons" />
                 <input type="reset" value="Reset" class="btn btn-danger buttons button-space" />
                  -->
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <div class="footer">
    <div class="container-fluid bg-dark">
      <div class="row p-4 align-items-center justify-content-center">
        <div class="col-md-4">
          <h4 class="text-center">NBA's socials</h4>
          <ul class="nba-socials">
            <li>
              <a href="https://www.instagram.com/nba/?hl=en" target="_blank">
                <i class="fa-brands fa-instagram insta icons"></i>
              </a>
            </li>
            <li>
              <a href="https://www.tiktok.com/@nba" target="_blank">
                <i class="fa-brands fa-tiktok tiktok icons"></i>
              </a>
            </li>
            <li>
              <a href="https://twitter.com/NBA" target="_blank">
                <i class="fa-brands fa-twitter twitter icons"></i>
              </a>
            </li>
            <li>
              <a href="https://www.youtube.com/user/NBA" target="_blank">
                <i class="fa-brands fa-youtube yt icons"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <h4 class="text-center">lakivicsa's socials</h4>
          <ul class="vicsa-socials">
            <li>
              <a href="https://www.instagram.com/vicsalaki/" target="_blank">
                <i class="fa-brands fa-instagram insta icons"></i>
              </a>
            </li>
            <li>
              <a href="mailto:savicl2004@gmail.com" target="_blank">
                <i class="fa-solid fa-envelope gmail icons"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <p class="text-center h5">Created by Lazar 'lakivicsa' Savić</p>
        </div>
      </div>
    </div>
  </div>

  <script src="/JS/script.js"></script>
</body>

</html>
