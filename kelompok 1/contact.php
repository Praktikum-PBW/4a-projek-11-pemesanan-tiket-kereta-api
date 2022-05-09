<?php
session_start();
require('functions.php');
$pesan_error = "";
if ($_POST) {
    $no_pesanan = $_POST['no_pesanan'];
    $nama_lengkap = ucwords($_POST['nama_lengkap']);
    $email = strtolower($_POST['email']);
    $problem = $_POST['problem'];

    if (!$no_pesanan || !$nama_lengkap || !$email || !$problem) {
        $pesan_error = "Harap isi form terlebih dahulu sebelum melanjutkan!";
    } else {
        $result = mysqli_query($connection, "SELECT no_pesanan FROM contact WHERE no_pesanan='$no_pesanan'");
        if (mysqli_fetch_assoc($result)) {
            $pesan_error = "Pesanan ini sudah pernah dilaporkan. Harap menunggu informasi dari kami atau laporkan pesanan lain.";
        } else {
            mysqli_query($connection, "INSERT INTO contact VALUES('$no_pesanan', '$nama_lengkap', '$email', '$problem')");
            $contact_status = mysqli_affected_rows($connection);
        }
    }
}
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <title>Triple-A Train</title>
    <link rel="icon" href="./img/logo.png" type="image/x-icon">
</head>

<body>
    <?php require('_navbar.php'); ?>
    <section style="background-color: #1A2132 !important; display: block; box-sizing: border-box;">
        <div class="container pt-4">
        <div class="row d-flex align-items-center mt-5 pb-3">
                <div class="col-md-9 text-light">
                    <h3 class="text-left">Hubungi Kami</h3>
                    <p>Di mana pun Anda berada, kami dapat terhubung hanya dengan satu kali klik! </p>
                </div>
                <div class="col d-flex justify-content-center">
                    <img class="ml-0" src=" ./img/customer-service.png" alt="Triple-A Train" style="overflow:auto; max-width: 100px;">
                </div>
            </div>
            <hr class="my-4">
            <div class="card card-train" style="border-radius: 20px; padding: 8px;">
                <div class="card-body">
                    <?php if ($_POST && $pesan_error !== "") : ?>
                        <div class="alert alert-warning" role="alert">
                            <?= $pesan_error; ?>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    <?php elseif ($_POST && $contact_status == 1) : ?>
                        <div class="alert alert-info" role="alert">
                            Pesan Anda diterima. Mohon tunggu informasi berikutnya dari kami.
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    <?php endif; ?>
                    <form method="POST">
                        <div class="form-group">
                            <label for="no_pesanan">Kode Pemesanan</label>
                            <input type="text" class="form-control" name="no_pesanan" id="no_pesanan">
                        </div>
                        <div class="form-group">
                            <label for="nama_lengkap">Nama Lengkap</label>
                            <input type="text" class="form-control" name="nama_lengkap" id="nama_lengkap">
                        </div>
                        <div class="form-group">
                            <label for="email">Alamat Email</label>
                            <input type="email" class="form-control" name="email" id="email">
                        </div>
                        <div class="form-group">
                            <label for="problem">Sampaikan Permasalahan Anda!</label>
                            <input type="text" class="form-control" name="problem" aria-describedby="problemHelp" id="problem">
                            <small id="problemHelp" class="form-text text-muted">Semakin banyak informasi, semakin mudah bagi kami untuk membantu Anda.</small>
                        </div>
                        <button type="submit" name="add" class="btn btn-orange btn-block rounded-pill mt-4" style="color: white;">Kirim</button>
                        <p class="text-center mt-3">- Atau -</p>
                        <a class="btn btn-secondary btn-block rounded-pill" href="https://wa.wizard.id/d1f629">Hubungi Call Center</a>
                        <small id="infoCS" class="form-text text-muted">Harap siapkan kode pemesanan sebelum menghubungi Call Center.</small>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <?php require('_footer.php'); ?>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</body>

</html>