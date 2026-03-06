# Latihan Mandiri: Level Baru

Level baru yang saya kerjakan berada di `scenes/Level2.tscn` dengan beberapa perbedaan dari level awal:

- Menggunakan tile map berbeda, yaitu snow.
- Spawner sekarang menjatuhkan bintang.

Selain itu, masih terdapat lose condition seperti terkena barang yang jatuh dari spawner dan jatuh ke jurang.

## Implementasi yang dibuat

### 1. Membuat obstacle baru: FallingStar
Saya membuat scene baru `FallingStar.tscn` dengan struktur mirip obstacle ikan sebelumnya.

### 2. Menghubungkan ke Spawner di Level2
Spawner pada `Level2.tscn` sudah memakai script yang sama, `Spawner.gd`. Bedanya, saya mengganti resource obstacle dari `FallingFish.tscn` ke `FallingStar.tscn` sehingga level 2 sekarang men-spawn bintang jatuh secara periodik.

### 3. Jurang dan objek berjatuhan
Di level ini, tantangan datang dari 2 hal yang sama:

- Gap/jurang pada tile map yang dapat membuat player jatuh.
- Obstacle bintang yang jatuh berkala dari atas map.

## Catatan
Terdapat beberapa perubahan juga yang saya lakukan selain menambah level baru:

- Menambah variasi kecepatan/rotasi bintang saat jatuh.
- Lock camera supaya gerak ke kanan saja
- Ada lose screen dan transisi ke level 2