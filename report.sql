
SELECT SUM(f.Fee)
FROM Fee f;

SELECT SUM (SELECT Product.Price * SupplierOrder.Qty FROM Product, SupplierOrder WHERE SupplierOrder.ProductID = Product.ProductId)
FROM Product