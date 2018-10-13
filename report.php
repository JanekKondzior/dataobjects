<?php
        include('inc/head.php');
        include('conn.php');
        include('members.php');
        include('income.php');
        include('expences.php');
        if(isset($_GET["date"])){
            $date = $_GET["date"];
        }else{
            $date = date('y-m-d');
        }
?>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>

<form name="date" action="#" method="get">
    <input type="date" name="date" value="<?php if(isset($_GET["date"])){
        echo $date;
    } else
    {
        echo date('Y-m-d');
    }?>">
    <input type="submit">
</form>

<table>
    <tr>
        <th>Income</th>
        <th>$</th>
    </tr>
    <tr>
        <td>Student Fees</td>
        <td>
<?php
    $feeQuery = "SELECT SUM(Fee) as Total
    FROM Fee
    WHERE FeeId = (SELECT FeeID
    FROM INVOICE
    WHERE DATE > '$date')";
    $studentFee = 0;
    $results = mysqli_query($conn, $feeQuery);
    while($row = mysqli_fetch_assoc($results))
    {
        echo $row["Total"];
        $studentFee = $row["Total"];
    }
    $total = (int)$row["total"];
?>
    </tr>
    <tr>
        <td>Sales</td>
        <td><?php
    $salesQuery = "	SELECT SUM(Product.Price * `productorder`.Qty) AS 'asd' FROM Product, `productorder`, Invoice WHERE `productorder`.ProductID = Product.ProductId AND `productorder`.InvoiceId = Invoice.InvoiceId AND Invoice.Date > '$date'";
    $resultsTwo = mysqli_query($conn, $salesQuery);
    $salesFee = 0;
    while($row = mysqli_fetch_assoc($resultsTwo))
    {
        echo $row['asd'];
        $salesFee = $row['asd'];

    }
?>    
</td>
</tr>
<tr>
    <td> <b>Total</b> </td>
    <td><?php
        echo $salesFee + $studentFee;
        ?>
        </td>
</tr>
<tr>
        <th>Expences</th>
        <th>$</th>
    </tr>
    <tr>
        <td>
            Rent
        </td>
        <td>
            10000
        </td>
    <tr>
        <td>
            Equipment
        </td>
        <td>
            5000
        </td>
    </tr>
    <tr>
        <td>
        <b>Total</b>
        </td>
        <td>
            15000
        </td>
