<?php
    include 'includes/connect.php';
    
    $cse_sql = "SELECT * FROM `faculties` WHERE `department` = \"Computer Science Engineering\";";
    $eee_sql = "SELECT * FROM `faculties` WHERE `department` = \"Electrical " . "and Electronics Engineering\";";
    $ett_sql = "SELECT * FROM `faculties` WHERE `department` = \"Electronics & Telecommunication Engineering\";";
    $me_sql = "SELECT * FROM `faculties` WHERE `department` = \"Mechanical Engineering\";";
    $ce_sql = "SELECT * FROM `faculties` WHERE `department` = \"Civil Engineering\";";
    $phy_sql = "SELECT * FROM `faculties` WHERE `department` = \"Physics\";";
    $chem_sql = "SELECT * FROM `faculties` WHERE `department` = \"Chemistry\";";
    $math_sql = "SELECT * FROM `faculties` WHERE `department` = \"Mathematics\";";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FacultyCircle</title>
    <link rel="shortcut icon" href="../Assets/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/faculty.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <?php
        // echo "<style>.card .pfp {background: url(../Assets/faculty-img/" . $name . ".jpeg); background-position: center; background-repeat: no-repeat; background-size: cover;}</style>";
    ?>
</head>
<body>
    <div class="menu">
        <div class="logo-box">
            <img src="../Assets/logo.png" alt="logo" class="logo">
        </div>

        <div class="dept-list">
            <div class="dept dept-home dept-active">DEPARTMENTS</div>
            <div class="dept engg-dept">COMPUTER SCIENCE & ENGG</div>
            <div class="dept engg-dept">ELECTRICAL & ELECTRONICS</div>
            <div class="dept engg-dept">ELECTRONICS & TELECOMM</div>
            <div class="dept engg-dept">MECHANICAL ENGINEERING</div>
            <div class="dept engg-dept">CIVIL ENGINEERING</div>
            <div class="dept sci-dept">APPLIED PHYSICS</div>
            <div class="dept sci-dept">APPLIED CHEMISTRY</div>
            <div class="dept sci-dept">APPLIED MATHEMATICS</div>
        </div>
    </div>

    <div class="main">
        <nav>
            <div class="logo-box">
                <img src="../Assets/logo.png" alt="logo" class="logo">
            </div>

            <div class="dummyDiv"></div>

            <div class="title">
                FacultyCircle
            </div>

            <button class="bars">
                <i class="fa-solid fa-bars bar"></i>
                <i class="fa-solid fa-x cross"></i>
            </button>
            <a href="landing.php">
                <button class="back">
                    <!-- <i class="fa-solid fa-bars bar"></i> -->
                    <!-- <i class="fa-solid fa-x cross"></i> -->
                    <i class="fa-solid fa-arrow-left"></i>
                    <span>BACK TO HOME PAGE</span>
                </button>
            </a>
        </nav>

        <div class="layers">
            <div class="loading-screen">
                <div class="loader">
                    <div class="loader-square"></div>
                    <div class="loader-square"></div>
                    <div class="loader-square"></div>
                    <div class="loader-square"></div>
                    <div class="loader-square"></div>
                    <div class="loader-square"></div>
                    <div class="loader-square"></div>
                </div>
            </div>
            <div class="info-screen">
                <img src="../Assets/Academia/f.png" alt="pic">
                <p>
                    The most overarching definition of a Faculty Circle is a group of faculty who come together regularly to discuss a particular topic of interest related to teaching.<br><br>
                    Academic concentrations give students a way to delve further into an area of interest by combining academic and practical experiences, such as internships and service learning. The open curriculum gives you the freedom to personalize your experience. Go where your ambitions lead you.<br><br>
                    Faculty Circles offer a wonderful opportunity to work with colleagues from your own department or across disciplines to enhance and improve your teaching. Faculty Circles are safe places for learning, exploration, change, and accomplishment at various levels. The primary goal of improving each other's teaching is never obscured, and members work to create an environment that is supportive, caring, and collegial in the finest sense of the word—one that celebrates the commitment to teaching and learning made by its members.<br><br>
                    The Faculty Member always first talk to the HOD and keep the HOD in confidence about the member’s professional and personal activities. The teaching load allotted by the HOD after taking into account the Faculty Member’s interests and area of specialization. In addition to the teaching, the Faculty Member take additional responsibilities as assigned by HOD / Principal/ Chairman/ Administrator in academic, co-curricular or extracurricular activities. Every Faculty Member maintain student’s attendance records and the absentees roll number should be noted everyday in the software as soon as the classes/laboratory hours are over.<br><br>
                    Once the subject is allotted, the Faculty Member prepare the lecture and hour wise lesson plan. The Faculty Member get the lesson plan and course file - approved by HOD and Principal. The course file is an official record, a compilation of the planning and execution of teaching/learning activities, carried out throughout a semester in an academic year for a particular subject .The course file consists of preface, previous year university question papers, notes, hand outs, PPT, test/exam question papers, three model answer scripts for each test/exam (top, middle and bottom), Assignment plan, topics and copy of assignment, feedback analysis report etc. The teaching faculty has to get verified their course file by their HOD at least once in a month and submit it to the concerned HOD within three weeks of the last instruction day of the concerned semester. The Faculty Member’s Diary be regularly updated and put up for inspection by HOD/Principal as the case may be.<br><br>
                </p>
            </div>
            <div class="dept-card-screen">
                <!-- <div class="main-fac-info">
                    THIS SECTION WILL DYNAMICALLY CONTAIN THE DATA WHEN A PARTICULAR FACULTY VIEW BUTTON IS CLICKED USING JS AND PHP
                </div> -->

                <div class="cse">
                    
                    <!-- <div class="card">
                        <div class="pfp"></div>
                        <div class="name"></div>
                        <button>VIEW</button>
                    </div> -->

                    <?php
                        $result = mysqli_query($conn, $cse_sql);
                        $rows_num = mysqli_num_rows($result);
                        if ($rows_num == 0) {
                            echo "No data found!";
                        }
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<div class=\"card\">";
                                echo "<img class=\"pfp\" src=\"../Assets/faculty/" . $row['fname'] . ".jpeg\">";
                                echo "<div class=\"name\">" . $row['fname'] . "</div>";
                                echo "<button id=\"" . $row['id'] . "\">VIEW</button>";
                                // id is in form of <_id> from db
                            echo "</div>";
                        }
                    ?>
                </div>
                <div class="eee">
                    <?php
                        $result = mysqli_query($conn, $eee_sql);
                        $rows_num = mysqli_num_rows($result);
                        if ($rows_num == 0) {
                            echo "No data found!";
                        }
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<div class=\"card\">";
                                echo "<img class=\"pfp\" src=\"../Assets/faculty/" . $row['fname'] . ".jpeg\">";
                                echo "<div class=\"name\">" . $row['fname'] . "</div>";
                                echo "<button id=\"_" . $row['id'] . "\">VIEW</button>";
                                // id is in form of <_id> from db
                            echo "</div>";
                        }
                    ?>
                </div>
                <div class="ett">
                    <?php
                        $result = mysqli_query($conn, $ett_sql);
                        $rows_num = mysqli_num_rows($result);
                        if ($rows_num == 0) {
                            echo "No data found!";
                        }
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<div class=\"card\">";
                                echo "<img class=\"pfp\" src=\"../Assets/faculty/" . $row['fname'] . ".jpeg\">";
                                echo "<div class=\"name\">" . $row['fname'] . "</div>";
                                echo "<button id=\"_" . $row['id'] . "\">VIEW</button>";
                                // id is in form of <_id> from db
                            echo "</div>";
                        }
                    ?>
                </div>
                <div class="mech">
                    <?php
                        $result = mysqli_query($conn, $me_sql);
                        $rows_num = mysqli_num_rows($result);
                        if ($rows_num == 0) {
                            echo "No data found!";
                        }
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<div class=\"card\">";
                                echo "<img class=\"pfp\" src=\"../Assets/faculty/" . $row['fname'] . ".jpeg\">";
                                echo "<div class=\"name\">" . $row['fname'] . "</div>";
                                echo "<button id=\"_" . $row['id'] . "\">VIEW</button>";
                                // id is in form of <_id> from db
                            echo "</div>";
                        }
                    ?>
                </div>
                <div class="civil">
                    <?php
                        $result = mysqli_query($conn, $ce_sql);
                        $rows_num = mysqli_num_rows($result);
                        if ($rows_num == 0) {
                            echo "No data found!";
                        }
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<div class=\"card\">";
                                echo "<img class=\"pfp\" src=\"../Assets/faculty/" . $row['fname'] . ".jpeg\">";
                                echo "<div class=\"name\">" . $row['fname'] . "</div>";
                                echo "<button id=\"_" . $row['id'] . "\">VIEW</button>";
                                // id is in form of <_id> from db
                            echo "</div>";
                        }
                    ?>
                </div>
                <div class="phy">
                    <?php
                        $result = mysqli_query($conn, $phy_sql);
                        $rows_num = mysqli_num_rows($result);
                        if ($rows_num == 0) {
                            echo "No data found!";
                        }
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<div class=\"card\">";
                                echo "<img class=\"pfp\" src=\"../Assets/faculty/" . $row['fname'] . ".jpeg\">";
                                echo "<div class=\"name\">" . $row['fname'] . "</div>";
                                echo "<button id=\"_" . $row['id'] . "\">VIEW</button>";
                                // id is in form of <_id> from db
                            echo "</div>";
                        }
                    ?>
                </div>
                <div class="chem">
                    <?php
                        $result = mysqli_query($conn, $chem_sql);
                        $rows_num = mysqli_num_rows($result);
                        if ($rows_num == 0) {
                            echo "No data found!";
                        }
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<div class=\"card\">";
                                echo "<img class=\"pfp\" src=\"../Assets/faculty/" . $row['fname'] . ".jpeg\">";
                                echo "<div class=\"name\">" . $row['fname'] . "</div>";
                                echo "<button id=\"_" . $row['id'] . "\">VIEW</button>";
                                // id is in form of <_id> from db
                            echo "</div>";
                        }
                    ?>
                </div>
                <div class="math">
                    <?php
                        $result = mysqli_query($conn, $math_sql);
                        $rows_num = mysqli_num_rows($result);
                        if ($rows_num == 0) {
                            echo "No data found!";
                        }
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<div class=\"card\">";
                                echo "<img class=\"pfp\" src=\"../Assets/faculty/" . $row['fname'] . ".jpeg\">";
                                echo "<div class=\"name\">" . $row['fname'] . "</div>";
                                echo "<button id=\"_" . $row['id'] . "\">VIEW</button>";
                                // id is in form of <_id> from db
                            echo "</div>";
                        }
                    ?>
                </div>
            </div>


            <!-- <div class="f-info-screen">
                <div class="cut">
                    <h1>Faculty Profile</h1>
                    <span>
                       <i class="fa-regular fa-circle-xmark"></i>
                    </span>
                </div>
                <div class="content">
                    <div class="f-pfp">
                        <img id="f-pfp" src="../Assets/faculty/Prof. Narendra Kumar Dewangan.jpeg" alt="f-pfp">
                    </div>
                </div>
            </div> -->


        </div>
    </div>
    
    <script src="js/faculty.js"></script>
</body>
</html>

<?php
    include 'includes/disconnect.php';
?>