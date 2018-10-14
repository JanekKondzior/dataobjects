<?php

if(isset($_POST['income'])){


    $query="SELECT SUM(PaymentAmt) AS TOTAL from payment, invoice WHERE payment.PaymentID = invoice.PaymentID AND invoice.InvoiceDate >= '2017-09-01' AND invoice.InvoiceDate <= '2017-09-30' ";

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