<?php
require_once('conn.php');
// List of fees query


$query="SELECT * FROM `group`";
$result=mysqli_query($conn, $query);
$rowCount = mysqli_num_rows($result);
for($i=0;$i<$rowCount;$i++){
    $feeList[$i]=mysqli_fetch_array($result, MYSQLI_ASSOC);
}

// mysqli_fetch_all($r)

// List of products
$query2="select * from product";
$result2 = mysqli_query($conn, $query2);
$rowCount2 = mysqli_num_rows($result2);
for($i=0;$i<$rowCount2;$i++){
    $productList[$i]=mysqli_fetch_array($result2, MYSQLI_ASSOC);
}

?>

<h2 id="enrollmentForm">Purchasing enrolement and/or products</h2>
<form id="enrollmentForm" action="" method="post">
    <div>
      
        <label for="memberId">Member Id</label>
        <input type="text" name="custid" required>
    </div>
    <div>
    <label for="">Fee</label>
        <select name="fee">
        <option value="0">0</option>
<?php
foreach($feeList as $fee) :
    
        echo "<option value=".$fee['GroupFee'].">".$fee['GroupFee']."-".$fee['GroupType']."</option>";
        
    endforeach;
?>
     </select>

     <div>

    <div>
        <p>Purchasing a product?</p>
        <label for="no"></label>
        <input type="radio" name="">
    
    </div>
    
    <label for="Product">Product</label>
    <select name="product">
    <option value="0">0</option>
        <?php
        foreach($productList as $product) :
            
                echo "<option value=".$product['ProductName'].">".$product['ProductName']."</option>";
                
            endforeach;
        ?>

    </select>
        <label for="qty">Qty</label>
        <select name="qty">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
        </select>
        

     


    </div>


    </div>
    
    <button class="button" type="submit" name="submit2">Submit</button>
    <button class="button" type="reset">Clear</button>
</form>

<?php
    if(isset($_POST['submit2'])){
        $memberId = mysqli_real_escape_string($conn, $_POST['memberId']);
        $fee = mysqli_real_escape_string($conn, $_POST['fee']);
        $product = mysqli_real_escape_string($conn, $_POST['product']);
        $qty = mysqli_real_escape_string($conn, $_POST['qty']);

        if($fee!=0){
            $q1="thefirstquery";
        }
        if($product!=0){
            $q2="secondquery";
        }

       // $query = "INSERT INTO member(FirstName, LastName, ParFirstName, ParLastName, ParContact, ContactNo) VALUES ('$firstName', '$lastName', '$parentFirst', '$parentLast', '$parentNo', '$contactNo');";



    }
?>
