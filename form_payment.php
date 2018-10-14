<?php

$query="";

$result=mysqli_query($conn,$query);
$rowCount = mysqli_num_rows($result);
for($i=0;$i<$rowCount;$i++){
    $FeeList[$i]=mysqli_fetch_array($result, MYSQLI_ASSOC);
}

$query2="";
$rowCount = mysqli_num_rows($result);
for($i=0;$i<$rowCount;$i++){
    $ProductList[$i]=mysqli_fetch_array($result, MYSQLI_ASSOC);
}

?>


<form id="enrollmentForm" action="" method="post">
    <div>
      
        <label for="CustID">Customer ID</label>
        <input type="text" name="custid" required>
    </div>
    <div>
        <select name="fee">
        
<?php
foreach($FeeList as $Fee) :
    
        echo "<option value=".$Fee.">".$Fee."</option>";
        
    endforeach;
?>
     </select>

     <div>


    <label for="Product">Product</label>
    <select name="product">
        
        <?php
        foreach($ProductList as $product) :
            
                echo "<option value=".$product.">".$product."</option>";
                
            endforeach;
        ?>

    </select>
        <select name="qty">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
        </select>
        

     


    </div>


    </div>
    
    <button class="button" type="submit" name="submit">Submit</button>
    <button class="button" type="reset">Clear</button>
</form>

