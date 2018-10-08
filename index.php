<?php include('inc/head.php');
require_once('conn.php');
<<<<<<< HEAD
?>
=======
include('members.php');
include('income.php');
include('expences.php');
 ?>
    
>>>>>>> a0f0c0545a66d96a89d3c4ff7c39f15dcac99c10
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