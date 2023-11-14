<!-- không có stactic dùng this có static dùng self -->
<?php 
class Database
{
    public static $connection = NULL;

    public function __construct(){
        //1.Tạo kết nối
        if (!self::$connection) {
            self::$connection = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
            //2.Khai báo bảng mã
            self::$connection->set_charset('utf8mb4');
            
        }
    }
    public function select($sql){
        $items =[];
        // 3. Thực thi câu sql
        $sql->execute();
        //4.Sử lsy kết quả
        $items =$sql->get_result()->fetch_all(MYSQLI_ASSOC);

        return $items;
    }
}