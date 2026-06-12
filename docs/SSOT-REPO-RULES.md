# Standar Aturan Repositori & Pedoman Dwi-Bahasa (SSOT)

Dokumen ini adalah **Single Source of Truth (SSOT)** untuk standardisasi berkas, aturan pemformatan dokumen publik (README), glosarium istilah terjemahan, serta protokol pemeliharaan repositori di bawah ekosistem Andi UPN / Membara Group.

---

## 1. Konvensi Penamaan Berkas Multibahasa

Untuk mendukung ekspansi global dan menjaga kerapian repositori, penamaan berkas dokumentasi utama wajib mengikuti kode ISO bahasa yang ditentukan:

| Negara Target | Bahasa Resmi / Dialek | Nama Berkas | Kode Bahasa |
| :--- | :--- | :--- | :---: |
| **Global** | Inggris (*English*) | `README.md` | `en` |
| **Indonesia** | Bahasa Indonesia | `README.id.md` | `id` |
| **Tiongkok** | Mandarin (*Chinese Simplified*) | `README.zh.md` | `zh` |
| **India** | Hindi | `README.hi.md` | `hi` |
| **Kanada** | Prancis Kanada (*Canadian French*) | `README.fr-ca.md` | `fr-ca` |
| **Jerman** | Jerman (*German*) | `README.de.md` | `de` |
| **Prancis** | Prancis (*French*) | `README.fr.md` | `fr` |
| **Brasil** | Portugis Brasil (*Brazilian Portuguese*) | `README.pt-br.md` | `pt-br` |
| **Vietnam** | Vietnam (*Vietnamese*) | `README.vi.md` | `vi` |
| **Polandia** | Polandia (*Polish*) | `README.pl.md` | `pl` |
| **Jepang** | Jepang (*Japanese*) | `README.ja.md` | `ja` |
| **Korea Selatan** | Korea (*Korean*) | `README.ko.md` | `ko` |
| **Spanyol** | Spanyol (*Spanish*) | `README.es.md` | `es` |
| **Turki** | Turki (*Turkish*) | `README.tr.md` | `tr` |
| **Italia** | Italia (*Italian*) | `README.it.md` | `it` |
| **Rusia** | Rusia (*Russian*) | `README.ru.md` | `ru` |
| **Ukraina** | Ukraina (*Ukrainian*) | `README.uk.md` | `uk` |
| **Belanda** | Belanda (*Dutch*) | `README.nl.md` | `nl` |
| **Swedia** | Swedia (*Swedish*) | `README.sv.md` | `sv` |
| **Romania** | Romania (*Romanian*) | `README.ro.md` | `ro` |

---

## 2. Struktur Pengatur Bahasa (Language Switcher)

Setiap halaman `README` wajib meletakkan pemilih bahasa (*Language Switcher*) interaktif di bagian paling atas berkas (tepat di bawah judul H1 utama) dengan format HTML bersih sebagai berikut:

### Contoh format pada berkas Inggris (`README.md`):
```html
# Judul Repositori

<div align="center">
  <strong>English</strong> | <a href="README.id.md">Bahasa Indonesia</a> | <a href="README.zh.md">简体中文</a> | <a href="README.hi.md">हिन्दी</a> | <a href="README.fr-ca.md">Français (CA)</a> | <a href="README.de.md">Deutsch</a> | <a href="README.fr.md">Français</a> | <a href="README.pt-br.md">Português (BR)</a> | <a href="README.vi.md">Tiếng Việt</a> | <a href="README.pl.md">Polski</a> | <a href="README.ja.md">日本語</a> | <a href="README.ko.md">한국어</a> | <a href="README.es.md">Español</a> | <a href="README.tr.md">Türkçe</a> | <a href="README.it.md">Italiano</a> | <a href="README.ru.md">Русский</a> | <a href="README.uk.md">Українська</a> | <a href="README.nl.md">Nederlands</a> | <a href="README.sv.md">Svenska</a> | <a href="README.ro.md">Română</a>
</div>
```

### Contoh format pada berkas Indonesia (`README.id.md`):
```html
# Judul Repositori

<div align="center">
  <a href="README.md">English</a> | <strong>Bahasa Indonesia</strong> | <a href="README.zh.md">简体中文</a> | <a href="README.hi.md">हिन्दी</a> | <a href="README.fr-ca.md">Français (CA)</a> | <a href="README.de.md">Deutsch</a> | <a href="README.fr.md">Français</a> | <a href="README.pt-br.md">Português (BR)</a> | <a href="README.vi.md">Tiếng Việt</a> | <a href="README.pl.md">Polski</a> | <a href="README.ja.md">日本語</a> | <a href="README.ko.md">한국어</a> | <a href="README.es.md">Español</a> | <a href="README.tr.md">Türkçe</a> | <a href="README.it.md">Italiano</a> | <a href="README.ru.md">Русский</a> | <a href="README.uk.md">Ukrainska</a> | <a href="README.nl.md">Nederlands</a> | <a href="README.sv.md">Svenska</a> | <a href="README.ro.md">Română</a>
</div>
```

*(Gunakan pola yang sama untuk bahasa lain dengan menebalkan tag `<strong>` pada bahasa aktif berkas tersebut dan memberikan tag `<a>` tautan ke berkas bahasa lainnya).*

---

## 3. Glosarium Terjemahan Bahasa Indonesia Standar

Untuk menghindari hasil terjemahan yang kaku (*literal translation*) atau terdengar aneh bagi kalangan praktisi IT di Indonesia, gunakan daftar padanan kata standar berikut:

| Istilah Inggris (Sumber) | Terjemahan Standar | Catatan Penggunaan |
| :--- | :--- | :--- |
| **Builders / Creators** | Developer | Hindari menerjemahkan menjadi *kreator komersial* / *pembuat*. |
| **Ship / Delivery** | Merilis / Mendeploy / Mengirimkan | Disesuaikan dengan konteks rilis aplikasi atau kode. |
| **Workflow surfaces** | Fungsi alur kerja terintegrasi | Hindari menerjemahkan menjadi *alur kerja permukaan*. |
| **Route dispatch** | Penanganan rute (*route dispatch*) | Gunakan istilah teknis asli dalam tanda kurung jika diperlukan. |
| **Auditable write actions** | Log audit otomatis pada penulisan data | Memberikan kejelasan fungsi keamanan database. |
| **Repeatable client work** | Proyek klien yang dapat digunakan kembali | Menerangkan efisiensi kode yang dapat dipakai berulang. |
| **Offline packaging / Assets** | Aset offline (luring) | Memudahkan pemahaman bagi yang coding tanpa koneksi internet. |
| **Browser** | Browser | Lebih lazim digunakan dibanding kata *peramban*. |
| **Internal tools / Helpers** | Aplikasi internal | Lebih profesional dibanding kata *alat bantu*. |
| **First-time learners** | Pemula yang baru belajar coding | Memperjelas segmentasi target audiens tutorial. |
| **Single CRUD page** | Halaman CRUD biasa / sederhana | Menghindari kesan kaku dari frasa *halaman CRUD tunggal*. |
| **Paid / Private native hub** | Hub native privat / berbayar | Penyelarasan makna distribusi produk. |

---

## 4. Protokol Rilis & Kebersihan Repositori

Setiap kali melakukan modifikasi berkas README atau menambahkan file baru lintas repositori:
1. **Verifikasi Git Status:** Pastikan tidak ada file sampah atau tidak terlacak (*untracked files*) di luar struktur resmi sebelum melakukan komit.
2. **Standardisasi Commit Message:** Gunakan konvensi penulisan pesan commit yang rapi:
   - Modifikasi dokumentasi: `docs: add bilingual language switcher at the top of READMEs` atau `docs: improve indonesian translation flow`.
3. **Pemberlakuan Push Mandiri:** Agent dilarang melakukan `git push` ke repositori remote tanpa konfirmasi eksplisit dari pengguna.
