<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/form.css">
    <link rel="stylesheet" href="css/nav.css">
    <title>Shoto Database</title>
</head>
<body>
<header class="container">
    <nav>
        <ul>
            <li><a href="index.php">Queries</a></li>
            <li><a href="form.php">Form</a></li>
            <li><a href="report.php">Report</a></li>
        </ul>
        <div class="nav-login">
                    <?php
                        if(isset($_SESSION['u_id'])){
                             echo
                               '<form action="inc/logout.inc.php" method="post">
                            <button type="submit" name="submit">Logout</button>
                                </form>';
                        } else{

                      echo '<div class="nav-login">
                                <form action="inc/login.inc.php" method="POST">
                                    <input type="text" name="uid" placeholder="username/email">
                                    <input type="password" name="pwd" id="" placeholder="password">
                                    <button type="submit" name="submit">Login</button>
                                </form>
                            <a href="signup.php">Signup</a>
                            </div>';
                        };
                        
                    ?>
                </div>
    </nav>
    <h1>Shoto Karate Database Controller</h1>
</header>
