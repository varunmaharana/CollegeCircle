<?php
    include 'includes/connect.php';

    $sql = "SELECT * FROM `notice` ORDER BY `notice`.`date` DESC";
    $result = mysqli_query($conn, $sql);
    $rows_num = mysqli_num_rows($result);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notices</title>
    <link rel="shortcut icon" href="../Assets/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="css/notices.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <nav>
        <div class="logo-box">
            <img src="../Assets/logo.png" alt="logo" class="logo">
        </div>

        <div class="title">
            Notices
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

    <div class="main">
        
        <!-- * this html will be later on embedded using php -->

        <!-- <div class="notice">
            <div class="icon">
                <img src="../Assets/notices-logo.png" alt="notices-logo.png">
                <i class="fa-solid fa-paperclip"></i>
            </div>
            <div class="content">
                <div class="date">
                    <span>30/30/3000</span>
                </div>
                <p class="title">
                    title
                </p>
                <p class="desc">
                    description

                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident impedit, explicabo tempore, ipsa, animi perferendis commodi libero est quo sit quidem odit? Temporibus nam, aperiam expedita assumenda aspernatur odio eius vel ipsam sed deleniti dolorem earum, error voluptatem aliquid eaque natus adipisci repudiandae dignissimos et. Expedita eos molestiae mollitia, quis nulla provident deserunt aspernatur et minima fuga neque praesentium laborum quae sint similique impedit necessitatibus nobis eligendi iure velit! Culpa omnis sit, minus obcaecati facilis id accusamus, necessitatibus officiis, placeat nobis non dolorem! Dolor excepturi, assumenda cum praesentium tempora ducimus? Repellat nam ex autem eos velit, aut mollitia quod saepe tenetur! Nostrum, velit mollitia atque excepturi repellat, omnis quisquam aliquid magni expedita, ipsam nulla eius placeat! Nemo sequi asperiores consequatur nostrum maiores sed officiis eveniet perferendis. Ab, sit fugit! At eligendi, earum officiis molestias iste cupiditate fugit amet quaerat libero tempora tenetur nulla quibusdam harum dicta tempore, nihil labore nam veritatis corrupti ipsum, perspiciatis rem placeat? Adipisci, deleniti voluptate. Laudantium nemo necessitatibus, autem maiores minima nesciunt? Quos aliquam, porro, quidem accusamus fugit provident ea vitae doloribus tenetur quis atque ullam esse neque animi fuga, reiciendis molestiae. Voluptatibus, aspernatur. Ullam quasi quos placeat. Iusto harum voluptatem ipsa nesciunt atque alias minus.
                </p>
            </div>
            <div class="btn">
                <button>
                    <span>
                        VIEW/DOWNLOAD <i class="fa-solid fa-file-arrow-down"></i>
                    </span>
                </button>
            </div>
        </div> -->

            <?php
                if ($rows_num == 0) {
                    echo "No data found!";
                } else {
                    while ($table = mysqli_fetch_assoc($result)) {
                        echo "<div class=\"notice\">";
                            echo "<div class=\"icon\">";
                                if ($table['resource_link'] != "") {
                                    echo "<i class=\"fa-solid fa-paperclip\"></i>";
                                } else {
                                    echo "<i class=\"fa-regular fa-clipboard\"></i>";
                                }
                            echo "</div>";
        
                            echo "<div class=\"content\">";
                                echo "<div class=\"date\">" . $table['date'] . "</div>";
                                echo "<p class=\"title\">" . $table['title'] . "</p>";
                                echo "<p class=\"desc\">" . $table['description'] . "</p>";
                            echo "</div>";
        
                            echo "<div class=\"btn\">";
                                if ($table['resource_link'] != "") {
                                    echo "<a href=\"" . $table['resource_link'] . "\" target=\"_blank\"><button><span>VIEW/DOWNLOAD <br><i class=\"fa-solid fa-file-arrow-down\"></i></span></button></a>";
                                } else {
                                    echo "<button><span>No Attachment Found!</span></button>";
        
                                }
                            echo "</div>";
                        echo "</div>";
                    }
                }
            ?>

    
    </div>
</body>
</html>

<?php
    include 'includes/disconnect.php';
?>