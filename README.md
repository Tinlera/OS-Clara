# ⚠️ DİKKAT: BU PROJE HENÜZ ALFA SÜRÜMÜNDEDİR VE GELİŞTİRME AŞAMASINDADİR ⚠️

---

# 🚀 OS Clara - Custom Debloat ROM for Poco X7 Pro

<div align="center">

![OS Clara](https://img.shields.io/badge/OS_Clara-1.0_Alpha-9d00ff?style=for-the-badge&logo=xiaomi&logoColor=white)
![Device](https://img.shields.io/badge/Poco_X7_Pro-Rodin-ff6900?style=for-the-badge&logo=xiaomi&logoColor=white)
![Android](https://img.shields.io/badge/Android_15-Debloated-3DDC84?style=for-the-badge&logo=android&logoColor=white)
![Status](https://img.shields.io/badge/Status-Alpha-orange?style=for-the-badge)

**Hafif, Temiz ve Özelleştirilmiş HyperOS Deneyimi**

*"Çin bloatware'lerinden arındırılmış, saf Android deneyimi"*

</div>

---

## 📋 Proje Özeti

**OS Clara**, Xiaomi Poco X7 Pro (Rodin) cihazı için özel olarak hazırlanmış, debloat edilmiş bir ROM projesidir. Bu proje, resmi DyperOS/HyperOS ROM'undan gereksiz Çin uygulamalarını ve servislerini temizleyerek, daha hafif, daha hızlı ve daha gizlilik odaklı bir kullanıcı deneyimi sunar.

### 🎯 Hedef Cihaz

| Özellik | Değer |
|---------|-------|
| **Cihaz** | Poco X7 Pro |
| **Kod Adı** | Rodin |
| **İşlemci** | MediaTek Dimensity 8400 Ultra |
| **Kaynak ROM** | DyperOS 3.0.3.0 (HyperOS 3 bazlı) |
| **Android Sürümü** | Android 15 |
| **Modifiye Edilmiş Partitions** | product_a, system_a |

---

## ✨ Özellikler

### 🚫 Kaldırılan Bloatware

| Kategori | Kaldırılan Uygulamalar |
|----------|------------------------|
| **Çin Servisleri** | Baidu, QQ, WeChat bileşenleri, Alibaba servisleri |
| **Telemetri** | Xiaomi Analytics, Mi Push, Usage Stats collectors |
| **Gereksiz Uygulamalar** | Çince oyunlar, Çin App Store, Yerel haber uygulamaları |
| **Çin Klavyeleri** | SogouIME, Baidu IME, QQ IME |

### 🌍 Dil Desteği

- **Varsayılan Dil:** Türkçe
- **Desteklenen Diller:** Türkçe, İngilizce
- **Kaldırılan Diller:** Çince, diğer Asya dilleri

### 🔄 Değişiklikler

- ✅ Gboard varsayılan klavye olarak ayarlandı
- ✅ Türkçe varsayılan sistem dili olarak ayarlandı
- ✅ build.prop üzerinden "OS Clara 1.0" markalama
- ✅ Gereksiz sistem servisleri devre dışı bırakıldı
- ✅ Çin bölgesine özel özellikler kaldırıldı

---

## 🏗️ Teknik Detaylar

### Partition Yapısı

```
os_clara/
├── partitions/
│   ├── product_a.img      # Ana bloatware temizliği (~4.6GB)
│   ├── system_a.img       # Sistem markalama (~1.5GB)
│   ├── vendor_a.img       # Donanım bileşenleri (~2.6GB)
│   ├── odm_a.img          # ODM katmanı (~1.3GB)
│   └── system_ext_a.img   # Sistem uzantıları (~1.6GB)
├── flash_os_clara.sh      # Flash script
└── lpunpack_clara.py      # Super.img extractor
```

### Kullanılan Araçlar

| Araç | Kullanım Amacı |
|------|----------------|
| **lpunpack** | super.img partition extraction |
| **simg2img** | Sparse image dönüşümü |
| **fastboot** | Partition flashing |
| **ADB** | Cihaz iletişimi |

---

## 📦 Kurulum

### ⚠️ Gereksinimler

- Poco X7 Pro (Rodin) cihazı
- **Unlocked Bootloader** (ZORUNLU)
- USB Debugging aktif
- Linux veya Windows ortamı
- ADB ve Fastboot araçları

### 📥 Kurulum Adımları

```bash
# 1. Repoyu klonla
git clone https://github.com/USERNAME/OS-Clara.git
cd OS-Clara

# 2. ADB ile cihazı bağla
adb devices

# 3. Flash scriptini çalıştır
chmod +x flash_os_clara.sh
./flash_os_clara.sh
```

### Manuel Kurulum

```bash
# 1. Fastboot moduna geç
adb reboot bootloader

# 2. Partition'ları flash et
fastboot flash product_a partitions/product_a.img
fastboot flash system_a partitions/system_a.img

# 3. Cihazı yeniden başlat
fastboot reboot
```

---

## 📋 Doğrulama

Kurulum sonrası aşağıdakileri kontrol edin:

- [ ] **Ayarlar → Telefon Hakkında** → "OS Clara 1.0" yazıyor
- [ ] **Varsayılan dil** → Türkçe
- [ ] **Varsayılan klavye** → Gboard
- [ ] **Çin uygulamaları** → Yok
- [ ] **Google servisleri** → Çalışıyor
- [ ] **Xiaomi Hesabı** → Çalışıyor (USB Debug için gerekli)

---

## ⚠️ Uyarılar

> **DİKKAT:** Bu ROM henüz alfa aşamasındadır. Kullanım riski size aittir.

- 🔴 **Veri Kaybı:** Flash işlemi öncesi verilerinizi yedekleyin
- 🔴 **Garanti:** Custom ROM yüklemek cihaz garantisini geçersiz kılabilir
- 🔴 **Brick Riski:** Yanlış partition flash'lama cihazınızı brick'leyebilir
- 🔴 **OTA Güncellemeleri:** Sistem güncellemeleri devre dışı bırakılmalıdır

---

## 🗺️ Yol Haritası

- [x] **v0.1:** Temel debloat ve partition extraction
- [x] **v0.2:** Flash script oluşturma
- [ ] **v0.3:** Otomatik debloat script'i
- [ ] **v0.4:** OTA güncelleme engelleme
- [ ] **v1.0:** Stabil release

---

## 🤝 Katkıda Bulunma

1. Fork yapın
2. Feature branch oluşturun (`git checkout -b feature/new-tweak`)
3. Commit yapın (`git commit -m 'Add new debloat rule'`)
4. Push edin (`git push origin feature/new-tweak`)
5. Pull Request açın

---

## 📄 Lisans

Bu proje MIT lisansı altında lisanslanmıştır.

---

## 📞 İletişim

- **Geliştirici:** Methun
- **GitHub:** [@Tinlera](https://github.com/Tinlera)

---

<div align="center">

**OS Clara** - *Poco X7 Pro için Hafif ve Temiz ROM Deneyimi*

🚀 *Bloatware'den arındırılmış, özgür Android* 🚀

</div>
