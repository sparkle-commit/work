#!/bin/bash

while true; do
    clear
    echo "==========================="
    echo "  🔥 MENU SHELL SCRIPT 🔥  "
    echo "==========================="
    echo "1. Cek Koneksi Internet"
    echo "2. Cek Penggunaan Disk"
    echo "3. Lihat Proses yang Berjalan"
    echo "4. Keluar"
    echo "==========================="
    read -p "Pilih menu (1-4): " pilihan

    case $pilihan in
        1)
            echo "Mengecek koneksi internet..."
            ping -c 3 8.8.8.8
            ;;
        2)
            echo "Menampilkan penggunaan disk..."
            df -h
            ;;
        3)
            echo "Menampilkan proses yang berjalan..."
            ps aux | head -10
            ;;
        4)
            echo "Keluar dari script. Bye! 👋"
            exit 0
            ;;
        *)
            echo "Pilihan tidak valid!"
            ;;
    esac
    read -p "Tekan enter untuk kembali ke menu..."
done
