#Muhammad Shidiq Pamungkas
#DBMA Iykra Class

#Operasi Matematika di R
#Penambahan
3+5
#Pengurangan
10-5
#Perkalian
3*5
#Pembagian
10/8
#Pangkat
10^2
#Modulo
8%%3

#Variable Assignment
my.string <- "Hello World!!"
my.string

my.string = "Hello World2!!"
my.string

#Tipe data di R
class(5.6)
class(7L)
class(TRUE)
class("kata")

#Vektor 
vector_numeric <- c(1,3,5)
vector_numeric

vector_character <- c("saya", "cinta", "Indonesia")
vector_character

vector_logical <- c(TRUE, FALSE, TRUE)
vector_logical

#Menamai Vektor
suatu_vektor <- c("Shidiq Pamungkas", "Data Scientist")
names(suatu_vektor) <- c("Nama", "Pekerjaan")
suatu_vektor

#Operasi Aritmetika untuk Vektor
A_Vektor <- c(100000, 200000, 300000)
B_Vektor <- c(400000, 500000, 600000)
#Rata-rata keuntungan dari Vektor A dan Vektor B per hari
total_vektor <- (A_Vektor + B_Vektor)/2
total_vektor

#Jumlah keuntungan 
untung_A <- sum(A_Vektor)
untung_A

#Menyeleksi Vektor
A_Vektor[3]
#Nilai pertama dan ketiga dari suatu vektor
A_Vektor[c(1,3)]
#Nilai pertama hingga ketiga dari suatu vektor
A_Vektor[c(1:3)]
#Menyeleksi vektor dng logical comparison
A_vector <- c(10000,20000,30000,50000,60000)
names(A_vector) <- c("Senin","Selasa","Rabu","Kamis","Jumat")
#Nilai rata2 keuntungan
rata_rata_untung <- mean(A_vector)
#Pada hari apa sajakah keuntungan toko A di atas rata2?
A_vector > rata_rata_untung


