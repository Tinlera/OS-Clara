#!/bin/bash
# =====================================================
# OS CLARA - PARTITION FLASH SCRIPTİ
# Debloat edilmiş partition'ları telefona yükler
# =====================================================

echo "============================================"
echo "   OS CLARA FLASH SCRIPT v1.0"
echo "   Poco X7 Pro (Rodin)"
echo "============================================"

PARTITIONS_DIR="/home/methun/Clara-alfa/os_clara/partitions"

# ADB bağlantı kontrolü
echo "[1/4] ADB bağlantısı kontrol ediliyor..."
adb devices | grep -q "device$" || {
    echo "❌ Telefon bulunamadı! ADB'yi kontrol et."
    exit 1
}

# Fastboot moduna geçiş
echo "[2/4] Fastboot moduna geçiliyor..."
adb reboot bootloader
sleep 10

# Bağlantı kontrolü
fastboot devices | grep -q "fastboot" || {
    echo "❌ Fastboot bağlantısı yok!"
    exit 1
}

echo "[3/4] Partition'lar flash ediliyor..."

# Product partition (en büyük değişiklik burada)
echo "  → product_a flash ediliyor..."
fastboot flash product_a $PARTITIONS_DIR/product_a.img

# System partition (branding değişiklikleri burada)
echo "  → system_a flash ediliyor..."
fastboot flash system_a $PARTITIONS_DIR/system_a.img

# Diğer partition'lar (değiştirilmedi ama tutarlılık için)
# echo "  → system_ext_a flash ediliyor..."
# fastboot flash system_ext_a $PARTITIONS_DIR/system_ext_a.img

echo "[4/4] Telefon yeniden başlatılıyor..."
fastboot reboot

echo "============================================"
echo "   ✅ OS CLARA KURULUMU TAMAMLANDI!"
echo "============================================"
echo "Telefon açıldığında:"
echo "  - Ayarlar > Telefon Hakkında'da 'OS Clara 1.0' yazmalı"
echo "  - Varsayılan dil Türkçe olmalı"
echo "  - Çin uygulamaları kaldırılmış olmalı"
echo "============================================"
