<?php
session_start();
require 'admin/dist/functions.php';

$idProduk = $_GET['id'];
unset($_SESSION['keranjang'][$idProduk]);

echo "<script>
        alert('Produk berhasil dihapus');
        document.location.href='keranjang.php';
    </script>";
