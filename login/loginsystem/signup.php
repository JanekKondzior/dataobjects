
<?php
    include_once 'header.php';
?>
    <section class="main-container">
        <div class="main-wrapper">
            <h2>Signup</h2>
        </div>
        <form action="inc/signup.inc.php" class="signup-form" method="POST">
            <input type="text" name="first" placeholder="Firstname">
            <input type="text" name="last" placeholder="Lastname">
            <input type="email" name="email" placeholder="Email">
            <input type="text" name="uid" placeholder="Username">
            <input type="password" name="pwd" placeholder="Password">
            <button type="submit" name="submit">Submit</button>
        </form>
    </section>
<?php
    include_once 'footer.php';
?>
