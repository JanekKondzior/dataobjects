  <!-- Enrollment form for members --> 

<h2 id="enrollmentForm">Enrollement form for membership</h2>

<form id="enrollmentForm" action="" method="post">
    <div>
        <!-- customer -->
        <label for="firstName">First Name</label>
        <input type="text" name="firstName" >
    </div>
    <div>
        <!-- customer -->
        <label for="lastName">Last Name</label>
        <input type="text" name="lastName" >
    </div>
    <div>
        <label for="contactNo">Contact No</label>
        <input type="number" name="contactNo">
    </div>
    <div>
        <label for="parentFirst">Parent First Name</label>
        <input type="text" name="parentFirst">
    </div>
    <div>
        <label for="parentLast">Parent Last Name</label>
        <input type="text" name="parentLast">
    </div>
    <div>
        <label for="parentNo">Parent Phone Number</label>
        <input type="number" name="parentNo">
    </div>
    
    <button class="button" type="submit" name="submit">Submit</button>
    <button class="button" type="reset">Clear</button>
</form>

<?php
    require_once('conn.php');

    if(isset($_POST['submit'])){
        $firstName = mysqli_real_escape_string($conn, $_POST['firstName']);
        $lastName = mysqli_real_escape_string($conn, $_POST['lastName']);
        $parentFirst = mysqli_real_escape_string($conn, $_POST['parentFirst']);
        $parentLast = mysqli_real_escape_string($conn, $_POST['parentLast']);
        $contactNo = mysqli_real_escape_string($conn, $_POST['contactNo']);
        $parentNo = mysqli_real_escape_string($conn, $_POST['parentNo']);
        $query = "INSERT INTO member(FirstName, LastName, ParFirstName, ParLastName, ParContact, ContactNo) VALUES ('$firstName', '$lastName', '$parentFirst', '$parentLast', '$parentNo', '$contactNo');";
        
        mysqli_query($conn, $query);
    }

?>