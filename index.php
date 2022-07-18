<!DOCTYPE html>
<html>
<head>
	<title>Dropdown List</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 

	<style type="text/css" media="screen">
		body {
			background: #F2F2F2;
			min-height: 90vh;
            display: flex;
            justify-content: center;
            align-items: center;
		}

		.kotak {
			width: 450px;
			border: 1px solid black;
			margin: 80px auto;
			padding: 20px;
			border-radius: 10px;
			background-color: black;
		}

		h1 {
			text-align: center;
			color: white;
		}

		.FormSelect {
			padding: 10px;
			display: block;
			width: 100%;
			font-size: 15px;
			border-radius: 5px;
			border: none;
			font-weight: bold;
		}

		p {
			font-weight: bold;
			margin-bottom: 5px;
			color: white;
		}
	</style>
	<script type="text/javascript">
		function getDataKabupaten(data) {
			var id = "id_prov=" + data;
			$.ajax({
				type: 'POST',
				url: "getDataKabupaten.php",
				data: id,
				success: function(hasil) {
					$("#kab_kota").html(hasil);
				}
			});
			}
	</script>
</head>
<body>
	<div class="kotak">
		<h1>TUTORIAL DROPDOWN</h1>
		<hr>
		<p>Provinsi :</p>
		<select class="FormSelect" onchange="getDataKabupaten(this.value)">
			<option value="-">= Pilih Provinsi =</option>
			<?php 
				include 'koneksi.php';
				$result = selectAllData();
				while ($row = mysqli_fetch_assoc($result)) {
			 ?>

				<option value="<?= $row["id_prov"] ?>"><?= $row["provinsi"] ?></option>

			<?php } ?>
		</select>
		<p>Kabupaten/Kota :</p>
		<select class="FormSelect" id="kab_kota">
			<option value="tambah">= Pilih Kabupaten/Kota =</option>
		</select>
	</div>
</body>
</html>

