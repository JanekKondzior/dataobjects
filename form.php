
<?php
    include('inc/head.php');
    include('conn.php');
    include('form_member.php');
    // include('form_payment.php');

?>

<div class="container">
        <div class="buttons">
            <form action="<?php $_SERVER['PHP_SELF']?>" method="post">
                <button name="enrolment">Enrolment Form</button>
                <button name="payment">Payment Form</button> 
            </form>
        </div>
    </div>


