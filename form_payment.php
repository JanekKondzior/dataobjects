<?php

$query="";

$result=mysqli_query($conn,$query);
$rowCount = mysqli_num_rows($result);
for($i=0;$i<$rowCount;$i++){
    $FeeList[$i]=mysqli_fetch_array($result, MYSQLI_ASSOC);
}

?>


<form id="enrollmentForm" action="" method="post">
    <div>
        <!-- customer -->
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
    </div>
    
    <button class="button" type="submit" name="submit">Submit</button>
    <button class="button" type="reset">Clear</button>
</form>

