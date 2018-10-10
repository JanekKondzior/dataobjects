<?php

if(isset($_POST['income'])){


$query=$query="
SELECT (((SELECT SUM(productorder.Qty*product.Price) AS PRICE 
FROM productorder,product
WHERE productorder.ProductId=product.ProductId)*0.5)

        +

(SELECT SUM(Fee.fee)
from fee)) AS TOTAL";

$result=mysqli_query($conn,$query);

$rowCount = mysqli_num_rows($result);

for($i=0;$i<$rowCount;$i++){
    $members[$i]=mysqli_fetch_array($result, MYSQLI_ASSOC);
}

mysqli_free_result($result);

mysqli_close($conn);

echo "<ul>";

foreach($members as $member) :

    echo"<li>";
    echo $member['TOTAL'];
    echo"</li>";

endforeach;

echo "</ul>";

}
?>