<?php
if(isset($_POST['members'])){

    $query="select * from member where customerId IS NOT NULL";



    //SELECT SUM(productorder.Qty*product.Price) AS PRICE 
    //FROM productorder,product
    //WHERE productorder.ProductId=product.ProductId;
    $result=mysqli_query($conn,$query);

    $rowCount = mysqli_num_rows($result);

    for($i=0;$i<$rowCount;$i++){
        $members[$i]=mysqli_fetch_array($result, MYSQLI_ASSOC);
    }

    mysqli_free_result($result);

    mysqli_close($conn);

    echo "<ol>";

    foreach($members as $member) :
        echo "<li>";
        echo $member['FirstName'];
        echo " ";
        echo $member['LastName'];
        echo "</li>";
    endforeach;

    echo "</ol>";

    }
?>