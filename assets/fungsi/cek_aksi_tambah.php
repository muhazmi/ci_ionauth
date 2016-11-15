<?php
include 'cek_session.php';
if($sesen_access == 0)
{
echo "<script>alert('Anda tidak memiliki hak akses apapun, silahkan hubungi Admin!'); location.replace('../index.php')</script>";
session_destroy();
}
?>