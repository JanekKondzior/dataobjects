<?php 
    include('inc/head.php');
    include('conn.php');
    include('members.php');
    include('income.php');
    include('expences.php');
 ?>
    




    <div class="container">
        <div class="buttons">
            <form action="<?php $_SERVER['PHP_SELF']?>" method="post">
                <button name="populate">Populate database</button>
                <button name="members">Paid Members</button>
                <button name="income">Total Income Received</button> 
                <button name="expences">Total expenses incurred</button>
            </form>
        </div>
    </div>



<?php include('inc/footer.php'); ?>