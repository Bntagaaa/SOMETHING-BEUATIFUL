# examcipus1 — hasil reverse engineering

Kode yang dipulihkan dari `V15_sman1cikarangpusat.apk`, aplikasi browser ujian berbasis Niotron/App Inventor. Package: `com.rdevsmartdigital.newexambro`; versi `V15DB`.

## Struktur

- `apk/`: manifest, Smali, resource, dan aset. **Ini input build APK.**
- `recovered/java/`: Java hasil JADX untuk membaca dan menelusuri kode. Bukan proyek Gradle yang dapat dikompilasi langsung.
- `docs/ANALISIS_APK.md`: alur aplikasi, temuan, dan batasan analisis.
- `docs/analysis/`: metadata dan peta komponen/simbol.
- `scripts/`: build, debug signing, dan pemetaan ulang kode.

Source Niotron asli (`.aia`, `.bky`, `.scm`), backend, dan private signing key penerbit tidak tersedia. Dekompilasi JADX melaporkan 11 error; gunakan Smali sebagai rujukan untuk kode yang ambigu. APK asli tidak disimpan di Git.

## Build lewat GitHub Actions

1. Buka tab **Actions** pada repository.
2. Pilih **Build Android APK** → **Run workflow** → branch `main`.
3. Tunggu job `build` selesai.
4. Unduh artifact **examcipus1-apks-…** di halaman run, lalu ekstrak ZIP.

Build juga berjalan otomatis pada push ke `main` dan pull request. Artifact berisi:

- `examcipus1-debug.apk`: APK yang ditandatangani untuk pengujian.
- `examcipus1-unsigned.apk`: APK tanpa tanda tangan, untuk signing terpisah.
- `SHA256SUMS.txt`: checksum kedua APK.

Tidak perlu memasukkan secret untuk build debug. Kunci debug baru dibuat pada setiap run Actions, sehingga APK dari run yang berbeda tidak dapat saling memperbarui instalasi. Instalasi aplikasi asli juga tidak dapat diperbarui oleh APK ini karena sertifikat berbeda. Bila perlu uninstall, cadangkan data aplikasi terlebih dahulu. Untuk rilis dengan pembaruan yang stabil, gunakan keystore tetap melalui pengaturan secret dan pipeline signing terpisah; jangan commit private key.

Artifact tersedia selama 14 hari. Keberhasilan build/signature verification belum membuktikan login, server, pinning, atau alur ujian bekerja pada perangkat.

## Build lokal

Prasyarat: Linux, Java 21, `curl`, `sha256sum`. Untuk signing, pasang Android SDK Build Tools 35.0.0 serta `keytool`, lalu set `ANDROID_HOME`. Jika Build Tools ada di lokasi khusus, set `ANDROID_BUILD_TOOLS` ke folder berisi `zipalign` dan `apksigner`.

```bash
bash scripts/build-apk.sh
bash scripts/sign-debug-apk.sh
```

Apktool 2.12.1 diunduh dari release resmi dan SHA-256 diperiksa sebelum digunakan. Output berada di `out/`; cache tool, build output, dan keystore diabaikan Git. Ubah kode di `apk/smali*`, manifest di `apk/AndroidManifest.xml`, atau aset/resource di `apk/assets` dan `apk/res`, lalu build ulang. Mengedit Java di `recovered/java/` tidak mengubah APK.

## Validasi awal

Decode, rebuild, alignment, debug signing, dan verifikasi tanda tangan dilakukan secara lokal menggunakan source di repository ini. Runtime Android dan server aplikasi belum diuji. Status workflow cloud dapat dilihat di tab Actions; validasi lokal tidak menggantikan hasil run GitHub.
