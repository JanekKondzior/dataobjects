  <!-- Enrollment form for members --> 

<h1>Enrollement form for membership</h1>

<form action="" method="post">
    <div>
        <!-- customer -->
        <label for="firstName">First Name</label>
        <input type="text" name="firstName" required>
    </div>
    <div>
        <!-- customer -->
        <label for="lastName">Last Name</label>
        <input type="text" name="lastName" required>
    </div>
    <div>
        <label for="parentFirst">Parent First Name</label>
        <input type="text" name="parentFirst">
    </div>
    <div>
        <label for="parentLast">Parent Last Name</label>
        <input type="text" name="parentLast">
    </div>
    <button type="submit" name="submit">Submit</button>
</form>

<?php
    require_once('conn.php');

    if(isset($_POST['submit'])){
        $firstName = mysqli_real_escape_string($conn, $_POST['firstName']);
        $lastName = mysqli_real_escape_string($conn, $_POST['lastName']);
        $parentFirst = mysqli_real_escape_string($conn, $_POST['parentFirst']);
        $parentLast = mysqli_real_escape_string($conn, $_POST['parentLast']);
        $query = "INSERT INTO member(FirstName, LastName, ParFirstName, ParLastName) VALUES ('$firstName', '$lastName', '$parentFirst', '$parentLast');";

        mysqli_query($conn, $query);
    }

?>