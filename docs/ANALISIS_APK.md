# Analisis V15_sman1cikarangpusat.apk

> Laporan ini mencatat analisis awal sebelum import ke GitHub. Dalam repository, `jadx/sources/` dipetakan ke `recovered/java/`, `apktool/` ke `apk/`, dan berkas JSON ke `docs/analysis/`. Langkah build terbaru ada pada README. Kalimat tentang belum ada commit/push merujuk tahap analisis awal.

## Hasil utama

APK berhasil diekstrak dan didekompilasi. Ini adalah aplikasi browser ujian berbasis Niotron/App Inventor, dengan konfigurasi server, menu sekolah, WebView ujian, dan kontrol perangkat. Hasil adalah kode hasil rekonstruksi dari bytecode, bukan source proyek asli. Analisis dilakukan secara statis; aplikasi belum dijalankan pada perangkat Android.

## Identitas

| Properti | Nilai |
|---|---|
| Nama aplikasi | examcipus1 |
| Package Android | com.rdevsmartdigital.newexambro |
| Namespace kelas aplikasi | com.niotron.muhammad_robi1996.V15_DATABASE |
| Versi | V15DB, versionCode 1 |
| Minimum Android | API 21 / Android 5.0 |
| Target Android | API 36 / Android 16 |
| Launcher | Screen1 |
| Ukuran APK asli | 11.141.998 byte |
| SHA-256 APK asli | aad0a0f55b9f9d8cf8999371669a2608098cdd2959be013767c74364587efd8d |

Nama file V15 tidak berarti versionCode Android bernilai 15. Manifest hasil decode tidak mendeklarasikan service aplikasi. APK memiliki blok tanda tangan v1/v2/v3 menurut parser; pemeriksaan itu bukan pengujian kepercayaan penerbit.

## Cara kerja berdasarkan kode

1. **Pembukaan — Screen1.** Launcher menginisialisasi UI, membaca status perangkat, dan mengirim permintaan melalui komponen `WebDATA`, `WebClass`, serta `WebPackage`. URL disamarkan dengan mekanisme text-deobfuscate App Inventor dan Base64. Respons `WebDATA$GotText` dipecah menjadi daftar nilai; nilai disimpan melalui TinyDB dan dipakai untuk mengisi pengaturan aplikasi.
2. **Konfigurasi lokal.** Kode menunjukkan kunci `masuk`, `lock`, `dev`, `info`, `web`, `keluar`, `nama`, `warna`, `volume`, `slider1`, `useragent`, dan `kontras`. Data mencakup konfigurasi tampilan, navigasi, status kunci, serta parameter operasional. Daftar lengkap pada `storage-key-candidates.json` bersifat kandidat hasil pencarian kode, bukan dump database perangkat.
3. **Masuk — HOME.** Event `LANJUTKAN$Click` pada Screen1 memeriksa `TaifunLockTask1.Mode()`. Jalur `Pinned` membuka HOME; jalur `None` meminta pinning. HOME menampilkan menu, gambar, informasi perangkat, dan opsi ujian. Ada HOMEPRIORITAS untuk jalur menu lain.
4. **Pembukaan ujian.** Terdapat CBT1/CBT2/CBT3, CBT_ADV/CBT_ADV2/CBT_ADV3, URL/URL_ADV, dan QRSCREEN/QR_ADV. Menu memiliki BarcodeScanner dengan `AfterScan`; variasi layar mendukung pilihan ujian, input URL, dan hasil scan. Tujuan ujian bisa berasal dari konfigurasi atau input, sehingga tidak seluruh alamat ujian tersimpan sebagai URL literal di APK.
5. **WebView.** Layar ujian memakai WebViewer dan WebViewTools, user-agent dari TinyDB, kontrol navigasi/refresh, indikator loading, dan handler ErrorOccurred/PageLoaded. Sebagian variasi menyediakan orientasi portrait/landscape serta fullscreen.
6. **Kontrol selama ujian.** Kode memuat TaifunLockTask, DisableCapture, alarm Player, pengaturan volume, pemeriksaan headset/Bluetooth, clipboard, dan keyboard. `CBT1$OnPause` memanggil Player.Start dan mengatur volume dari konfigurasi. Mode advanced memiliki ButtonWatcher.OnHomePressed dan pemeriksaan berkala melalui Clock. Efektivitas kontrol ini bergantung pada izin serta versi Android dan belum diuji di perangkat.
7. **Pemeriksaan lingkungan.** Ada pemeriksaan package yang terpasang dan layar terkait lingkungan virtual: SCREENVM, VM05PR0, M45T4HV, EP1MV8XSB0X. DETECTBLUETOOTH dan FRTRCTHEADSET menampilkan jalur terkait periferal. Tidak semua kondisi pemicu sudah dibuktikan melalui runtime.
8. **Administrasi dan konten.** ADMIN memiliki WebView ke domain administrasi. INFO, WEB, LISENSI, dan DEVELOPER menyediakan layar informasi/konten terkait. Kode backend, database server, dan konten ujian yang diunduh tidak dapat dipulihkan dari APK ini.

## Jaringan dan izin

Hostname yang ditemukan pada kode dan literal URL yang berhasil diurai:

- `crm.rdevserverone.com`: literal tersamarkan yang berhasil diurai dari kode; rincian kelas tercatat pada `network-hosts.json`.
- `examdb.r-developer.my.id`: referensi pada ADMIN.
- `sites.google.com`: referensi pada LISENSI.
- `www.google.com`, `policies.google.com`, dan `www.google.co`: referensi pada layar WebView; kemunculan literal tidak membuktikan bahwa setiap host dihubungi saat aplikasi berjalan.

Tidak ada permintaan ke server aplikasi, login, atau pengambilan data server selama analisis. Parameter URL dan nilai autentikasi tidak dicantumkan dalam laporan.

Manifest meminta Internet, kamera, akses Bluetooth, pemeriksaan package, overlay, pengaturan perangkat/audio, notification policy, dan penyimpanan. Sebagian izin memerlukan persetujuan pengguna atau akses khusus Android. Semua 27 activity dalam namespace aplikasi memiliki exported=true pada manifest hasil decode. Ini perlu ditinjau pada pengembangan berikutnya karena memperluas permukaan pemanggilan activity; belum diuji sebagai kerentanan.

`network_security_config.xml` mengizinkan cleartext HTTP dan menggunakan trust anchor sistem. Itu menunjukkan HTTP diperbolehkan, bukan bukti bahwa seluruh trafik menggunakan HTTP.

## Hasil reverse engineering dan batasannya

- JADX 1.5.3 menghasilkan 5.679 file Java, termasuk runtime dan pustaka. Sebagian besar bukan kode bisnis aplikasi.
- Ditemukan 27 kelas layar aplikasi utama. Nama komponen/event masih dapat dipulihkan; variabel internal banyak memakai nama pendek.
- Kode memakai Kawa/YAIL dan panggilan runtime App Inventor, sehingga hasil Java jauh lebih berisik daripada source aplikasi Android biasa.
- JADX selesai dengan **11 error dekompilasi** dan exit status 1. Hasil tetap tersedia. Tidak ada marker `Method not decompiled`/`JADX ERROR` yang ditemukan dalam 27 file layar utama oleh pemetaan awal; ini tidak menjamin kesempurnaan semantik. Sejumlah pustaka memiliki fallback atau peringatan dekompilasi, sehingga seluruh Java tidak boleh dianggap siap dikompilasi.
- Apktool 2.12.1 berhasil mengekstrak manifest, resource, aset, dan 11.565 file Smali dari dua DEX.
- Tidak ditemukan proyek `.aia`, blok `.bky`, atau desain `.scm`. Project Gradle, komentar asli, riwayat source, backend, dan private signing key juga tidak dipulihkan.
- Kode Smali merupakan rujukan bytecode ketika hasil Java ambigu. `symbol-map.json` memetakan konstanta nama pendek ke nama komponen/property/event yang ditemukan; ini alat bantu, bukan rename source otomatis.

## Validasi yang dilakukan

| Pemeriksaan | Hasil |
|---|---|
| Parsing identitas/manifest dengan Androguard | Berhasil |
| Decode APK dengan Apktool | Berhasil, exit 0 |
| Dekompilasi Java dengan JADX | Output tersedia; 11 error, exit 1 |
| Rebuild hasil decode menggunakan Apktool | Berhasil, exit 0 |
| Menjalankan aplikasi di Android | Belum dilakukan; adb/emulator tidak tersedia pada pemeriksaan PATH |
| Menguji login/server/alur ujian | Belum dilakukan |
| Menghasilkan source Niotron asli | Tidak tersedia dari APK |

`rebuilt-unsigned.apk` hanya hasil uji rebuild tanpa modifikasi aplikasi dan tanpa penandatanganan. Keberhasilan build tidak membuktikan aplikasi berfungsi saat dijalankan. APK ini bukan paket siap instal. Perubahan APK nantinya memerlukan penandatanganan; pembaruan instalasi lama memerlukan kunci penandatanganan yang cocok.

## Berkas yang dapat dipakai

- `jadx/sources/`: Java hasil dekompilasi beserta pustaka.
- `jadx/sources/com/niotron/muhammad_robi1996/V15_DATABASE/`: 27 kelas layar aplikasi.
- `apktool/AndroidManifest.xml`, `apktool/res/`, `apktool/assets/`: manifest, resource, dan aset hasil decode.
- `apktool/smali/` dan `apktool/smali_classes2/`: kode Smali untuk analisis/modifikasi berikutnya.
- `metadata.json`, `code-map.json`, `symbol-map.json`, `network-hosts.json`: indeks analisis.
- `navigation-map.json`: kandidat tujuan layar dari pola sederhana; bukan graf navigasi lengkap karena ada pemanggilan multiline dan literal tersamarkan.
- `scripts/map_code.py`: skrip yang menghasilkan indeks simbol dan kandidat hostname secara lokal tanpa menghubungi backend.
- `jadx.log`, `apktool.log`, `rebuild.log`: log proses.

## Jalur modifikasi selanjutnya

Untuk perubahan aset, tulisan, manifest, dan perilaku yang terbatas, hasil Apktool/Smali dapat menjadi titik awal. Untuk pengembangan besar dan pemeliharaan jangka panjang, source Niotron `.aia` dari pembuat aplikasi akan jauh lebih baik; alternatifnya adalah merekonstruksi aplikasi baru berdasarkan alur yang dipetakan. Menyalin semua Java JADX menjadi project Android Studio tidak otomatis menghasilkan build yang valid.

APK asli tidak diubah. Belum ada perubahan fitur, pemotongan kontrol ujian, commit, atau push ke repository. Semua hasil analisis berada di `/workspace/apk-analysis`, terpisah dari checkout repository.
