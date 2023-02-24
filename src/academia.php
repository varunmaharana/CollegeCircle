<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Academia</title>
    <link rel="shortcut icon" href="../Assets/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/academia.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    
        <nav>
            <div class="logo-box">
                <img src="../Assets/logo.png" alt="logo" class="logo">
            </div>

            <div class="title">
                Academia
            </div>

            <a href="landing.php">
                <button class="back">
                    <!-- <i class="fa-solid fa-bars bar"></i> -->
                    <!-- <i class="fa-solid fa-x cross"></i> -->
                    <i class="fa-solid fa-arrow-left"></i>
                    <span>BACK TO HOME PAGE</span>
                </button>
            </a>
        </nav>

        <div class="select-nav">
            <div class="back-btn">
                <button>
                    <i class="fa-solid fa-arrow-left"></i>
                </button>
            </div>

            <div class="sem-select">
                <form>
                </form>
                <div class="custom-select">
                    <label for="sem">Select your semester: </label>
                    <select name="sem" id="sem">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                    </select>
                </div>

                <button id="go-btn">
                    GO!
                </button>

            </div>
        </div>

        <div class="line"></div>

        <div class="screen">
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
            <div class="img-item">
                <div class="a1"></div>
                <div class="info-screen">
                Academic concentrations give students a way to delve further into an area of interest by combining academic and practical experiences, such as internships and service learning.
                The open curriculum gives you the freedom to personalize your experience.
                Go where your ambitions lead you.
                <br>
                <br>
                <p>1. You can graduate in four years. Take at least 15 credit hours a semester and coordinate your academic planning. Develop a four-year plan that includes academic and co-curricular activities.</p>
                <br>
                <p>2. Plan intentional academic connections across subjects and courses. ACE courses are not obstacles to courses in your major; they build expertise across areas and deepen inquiry.</p>
                <br>
                <p>3. Participate in high-impact practices such as learning communities, service learning, education abroad, internships, first-year seminars, and undergrad research. Students who engage in HIPs have higher graduation rates and report more enriching educational experiences.</p>
                <br>
                <p>4. Meet with your advisor at least once a semester. Advising is critical for your success and involves career and life plans, not just scheduling courses.</p>
                <br>
                <p>5. Develop relationships with faculty by showing interest in the subjects they teach and meeting them during office hours. Faculty care about your success.</p>
                <br>
                <p>6. Take advantage of undergraduate research opportunities such as UCARE. Undergraduate research can help you network, gain experience, and deepen inquiry within your major.</p>
                <br>
                <p>7. Use Career Services from your first-year. Take advantage of all Career Services offers to learn about yourself, your goals, career opportunities, and networking.</p>
                <br>
                <p>8. Take advantage of UNL campus events—speakers, forums, cultural events. These experiences can connect with and broaden your academic study and offer networking opportunities.</p>
                <br>
                <p>9. If you are experiencing difficulties, seek out resources (Writing Center, Math Center, CAPS, etc.). Asking for help is a sign of maturity and awareness that you know how to take action.</p>
                <br>
                <p>10. Make time each semester to reflect on why you are here and what you hope to accomplish. Ask yourself, “Am I making the most of my UNL experience?” “What are my goals for learning?”</p>

                </div>
            </div>

            <div class="sem">
                <div class="syllabus sem-box">
                    <div class="img1"></div>

                    <h1 class="title">Syllabus</h1>
                    <p>To view the syllabus of your choosen semester please click press the button below!</p>
                    <a href="" target="_blank" class="syllabus-link">
                        <button>VIEW</button>
                    </a>
                </div>

                <div class="notes sem-box">
                    <div class="img2"></div>

                    <h1 class="title">Notes and Study Materials</h1>
                    <p>Click the button below to find all the college resources of your choosen semester, from all the subjects to everything!</p>
                    <a href="" target="_blank" class="notes-link">
                        <button>VIEW</button>
                    </a>
                </div>
            </div>

        </div>

    <script src="js/academia.js"></script>
</body>
</html>