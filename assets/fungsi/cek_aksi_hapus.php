<?php 
include 'cek_session.php';
if($sesen_access != 3)
{
echo "<script>alert('Anda tidak memiliki hak untuk menghapus data!'); location.replace('../index.php')</script>";
session_destroy();
}
?>