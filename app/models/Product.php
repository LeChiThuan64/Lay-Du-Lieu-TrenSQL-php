<?php
 class Product extends Database{
//Lấy tất cả sản phẩm 
public function getAllProducts(){
    //Viết caau sql
    $sql = parent::$connection ->prepare('SELECT * FROM `products`');
    return parent::select($sql);
}
 }

