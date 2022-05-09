<?php
session_start();
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/bootstrap-datepicker3.min.css">
    <link rel="stylesheet" href="./css/style.css">
    <title>Triple-A Train</title>
    <link rel="icon" href="./img/logo.png" type="image/x-icon">
</head>

<body>
    <?php require('_navbar.php'); ?>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <div class="row" style="margin: 150px 0 150px 0;">
                <div class="col-md-6">
                    <h1 class="display-5 text-left mb-5">Tentang Kami</h1>
                    <p class="lead">Triple-A Train adalah aplikasi pemesanan tiket kereta api yang bekerja sama dengan PT Kereta Api Indonesia secara resmi.
                        Triple-A Train dirilis untuk memenuhi kebutuhan penumpang baik kereta api jarak jauh, menengah, maupun lokal/komuter. </p>
                </div>
                <div class="col-md-6">
                    <img class="ml-0" src=" ./img/triplea.png" alt="Triple-A Train" style="overflow:auto; max-width: 500px;">
                </div>
            </div>
            <hr class="my-4">
            <h2 class="text-center text-light mt-5 mb-5">Mengapa Beli Tiket di Triple-A Train?</h2>
            <div class="row d-flex align-items-center" style="margin-top: 100px;">
                <div class="col d-flex justify-content-center">
                    <img src="./img/trust.png" style="max-height: 150px; text-align: center;">
                </div>
                <div class="col-md-8">
                    <h4 class="text-left">Sistem booking tepercaya</h4>
                    <p>Sistem kami dirancang khusus agar dapat terhubung langsung dengan PT KAI. Karena itu, bisa dipastikan
                        e-tiket Anda akan terbit dan terjamin pada jadwal kereta api yang Anda pilih. </p>
                </div>
            </div>
            <div class="row d-flex align-items-center" style="margin-top: 100px;">
                <div class="col-md-8">
                    <h4 class="text-left">Berbagai Pilihan Pembayaran</h4>
                    <p>Beli tiket kereta api online dengan Triple-A Train jadi lebih mudah dengan berbagai pilihan pembayaran. </p>
                </div>
                <div class="col d-flex justify-content-center">
                    <img src="./img/payment-method.png" style="max-height: 150px;">
                </div>
            </div>
            <div class="row d-flex align-items-center" style="margin: 100px 0 100px 0;">
                <div class="col d-flex justify-content-center">
                    <img src="./img/price-tag.png" style="max-height: 150px;">
                </div>
                <div class="col-md-8">
                    <h4 class="text-left">Harga Terbaik</h4>
                    <p>Dapatkan harga tiket Kereta Api Indonesia yang kompetitif,
                        dapatkan harga terbaik hanya di Triple-A Train.</p>
                </div>
            </div>
            <div>
            <hr class="my-4">
            <h2 class="text-center text-light mt-5 mb-5">Syarat Perjalanan Jarak Jauh & Dekat Kereta Api Terbaru 2022</h2>
            <p class="text-justify" style="margin-top: 100px;">
                Untuk mendukung kebijakan PPKM, PT KAI telah mengatur persyaratan perjalanan penumpang kereta KAI Jarak Jauh di Pulau Jawa dan Sumatera. Silakan lihat dibawah untuk informasi lebih lanjut.</p>
            <ul class="text-justify" style="margin-left: 20px;">
                <li>Penumpang wajib sudah divaksin minimal dosis pertama dibuktikan dengan menunjukkan data sudah vaksin melalui aplikasi PeduliLindungi atau dengan kartu vaksin.</li>
                <li>Penumpang yang telah tervaksinasi penuh 2 dosis maupun 3 dosis (booster), tidak wajib melampirkan hasil negatif tes RT-PCR atau rapid antigen saat melakukan perjalanan.</li>
                <li>Penumpang yang baru tervaksinasi 1 dosis, wajib melampirkan hasil tes Rapid Antigen yang sampelnya diambil maksimal 1x24 jam sebelum penerbangan atau hasil tes PCR yang sampelnya diambil maksimal 3x24 jam sebelum penerbangan.</li>
                <li>Khusus pelaku perjalanan dengan usia dibawah 6 tahun: tidak diwajibkan menunjukkan kartu vaksin, tidak diwajibkan menunjukkan surat keterangan hasil negatif tes RT-PCR atau rapid test antigen, dan diperkenankan melakukan perjalanan
                    dengan syarat didampingi orang tua</li>
                <li>Penumpang dengan kondisi kesehatan khusus atau penyakit komorbid yang menyebabkan pelaku perjalanan tidak dapat menerima vaksinasi wajib menunjukan hasil negatif tes RT-PCR yang sampelnya diambil dalam kurun waktu maksimal
                    3 x 24 jam atau rapid test antigen yang sampelnya diambil dalam kurun waktu maksimal 1 x 24 jam sebelum keberangkatan sebagai persyaratan perjalanan dan persyaratan wajib melampirkan surat 4 keterangan dokter dari
                    Rumah Sakit Pemerintah yang menyatakan bahwa yang bersangkutan belum dan/atau tidak dapat mengikuti vaksinasi COVID-19</li>
                <li>Penumpang wajib menggunakan Nomor Induk Kependudukan (NIK) saat memesan tiket kereta api. Penumpang yang tidak memiliki Kartu Tanda Penduduk (KTP) dapat menggunakan NIK yang tercantum pada Kartu Keluarga.</li>
                <li>Penumpang harus dalam kondisi sehat, tidak menderita flu, pilek, batuk, diare, demam, serta tidak kehilangan daya penciuman.</li>
                <li>Penumpang harus dalam kondisi sehat dan tidak lagi menderita dari flu, pilek, batuk, diare, demam, dan kehilangan indera penciuman. Suhu badan penumpang juga tidak boleh melebihi 37,3°C celsius.</li>
                <li>Penumpang wajib menggunakan masker kain 3 (tiga) lapis atau masker medis yang menutupi hidung dan mulut.</li>
                <li>Selama perjalanan, penumpang tidak diperkenankan berbicara, baik satu arah melalui telepon atau dua arah bercakap-cakap langsung.</li>
                <li>Penumpang sebaiknya menjauhi kerumunan serta mengurangi mobilitas. </li>
                <li>Penumpang sebaiknya mencuci tangan dengan sabun di air mengalir atau menggunakan hand sanitizer.</li>
                <li>Penumpang tidak diperbolehkan untuk makan atau minum dalam perjalanan kurang dari 2 jam, kecuali untuk minum obat. </li>
            </ul>
            </div>
        </div>
    </div>
    </section>
    <?php require('_footer.php'); ?>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js"></script>
    <script src="./js/bootstrap.bundle.min.js"></script>

</body>

</html>
