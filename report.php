<?php
        include('inc/head.php');
        include('conn.php');
        include('members.php');
        include('income.php');
        include('expences.php');
        if(isset($_GET["date"])){
            $date = $_GET["date"];
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
    $results = mysqli_query($conn, $feeQuery);
    while($row = mysqli_fetch_array($results))
    {
        echo $row['Total'];
    }
?>
    </tr>
    <tr>
        <td>Sales</td>
        <td><?php
    $feeQuery = "SELECT SUM(Product.Price * SupplierOrder.Qty) as ASDA
    FROM Product, SupplierOrder, `Order`
    WHERE SupplierOrder.ProductID = Product.ProductId
    AND SupplierOrder.OrderID = `Order`.OrderId
    AND `Order`.Date > '$date'";
    $results = mysqli_query($conn, $feeQuery);
    echo $feeQuery; 
    while($row = mysqli_fetch_array($results)) {
        echo $row['ASDA'];
    }
?>
</td>