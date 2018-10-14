<?php

if(isset($_POST['expences'])){

    $query = "SELECT((SELECT SUM(position.PositionSalary) AS Expenses FROM position, staff WHERE staff.position = position.positionTitle) + (SELECT SUM(product.ProductPrice * supplierOrder.SupOrdQty) FROM product, supplierOrder
    WHERE product.ProductId = supplierorder.ProductId)) AS Expences ;
    ";


    // $query="SELECT ((SELECT SUM(position.Salary) from position,staff WHERE staff.PositionId=position.PositionId)
            
    // +

    // (SELECT SUM(product.Price*supplierorder.Qty)
    // FROM product,supplierorder
    // WHERE product.ProductId=supplierorder.ProductId)) AS Expences;";



    $result = mysqli_query($conn, $query);

    $rowCount = mysqli_num_rows($result);

    for($i=0;$i<$rowCount;$i++){
        $members[$i]=mysqli_fetch_array($result, MYSQLI_ASSOC);
    }

    mysqli_free_result($result);

    mysqli_close($conn);

    echo "<ul>";

    foreach($members as $member) :

        echo"<li>";
        echo $member['Expences'];
        echo"</li>";

    endforeach;
    
    echo "</ul>";
    }

?>