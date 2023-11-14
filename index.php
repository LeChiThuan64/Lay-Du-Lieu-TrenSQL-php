<?php
require_once 'config/database.php';
// loading tu dong'
require_once 'app/models/Database.php';
require_once 'app/models/Product.php';
 
$productModel = new Product;
$products = $productModel->getAllProducts();

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <div class="row row-cols-1 row-cols-md-4 g-4">
            <?php
            foreach($products as $product) :
            ?>
            <div class="card" style="width: 18rem;">
                <img src="public/images/<?php echo $product['image']?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><a href="#"><?php echo $product['name']?></a></h5>
                    <p><?php echo $product['price']?></p>
                    <p class="card-text"><?php echo mb_substr($product['description'], 0, 100)?></p>
                </div>
            </div>
            <?php
              endforeach
            ?>  
        </div>
    </div>
</body>

</html>