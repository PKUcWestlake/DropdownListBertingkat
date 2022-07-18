<?php 

function koneksiDB() {
    
    $host = "localhost";
    $username = "root";
    $password = "";
    $db = "db_wilayah";

    $conn = mysqli_connect($host, $username, $password, $db);
    
    if(!$conn) {
        die("Koneksi Database Gagal : " .mysqli_connect_error());
    } else {
        return $conn;
    }
}

function selectAllData() {
    $query = "SELECT * FROM tb_provinsi";
    $result = mysqli_query(koneksiDB(), $query);
    return $result;
}

function selectDataKabupaten($id_prov) {
    $query = "SELECT * FROM tb_kabupaten_kota WHERE id_prov = '$id_prov'";
    $result = mysqli_query(koneksiDB(), $query);
    return $result;
}

 ?>