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

#Cara membuat matrix
my.matrix <- matrix(c(1:12), byrow=T, nrow = 3)
my.matrix

#Elemen pertama : jumlah subscriber, elemen kedua total views
ricis_official <- c(4365, 565183)
raditya_dika <- c(4280, 541246)
calon_sarjana <- c(4191, 842819)
#Membuat matrix
matrix_youtuber_id <- matrix(c(ricis_official, raditya_dika, calon_sarjana), byrow=T, nrow=3)
matrix_youtuber_id
#menamai matrix
parameter <- c("Jumlah Subscriber", "Total views")
youtuber <- c("Ricis Official","Raditya Dika","Calon Sarjana")
colnames(matrix_youtuber_id) <- parameter
rownames(matrix_youtuber_id) <- youtuber
matrix_youtuber_id

#Menghitung jumlah tiap kolom
colSums(matrix_youtuber_id)
rowSums(matrix_youtuber_id)

#Menambah kolom pada matrix
jumlah_video <- c(290, 724, 552)
cbind(matrix_youtuber_id, jumlah_video)

#Menambah baris pada matrix
Atta_Halilintar <- c(3879, 267432)
rbind(matrix_youtuber_id, Atta_Halilintar)

#Menyeleksi elemen matrix
#Menyeleksi baris ke-1 kolom ke-2 dari matrix_youtuber_id
matrix_youtuber_id[1,2]
#Menyeleksi baris ke-3
matrix_youtuber_id[3,]
#Menyeleksi kolom ke-2
matrix_youtuber_id[,2]
#Menyeleksi baris ke-1 sd baris ke-3 dan kolom ke-1
matrix_youtuber_id[1:3,1]

#Aritmetika dalam matrix
matrix_youtuber_2 <- cbind(matrix_youtuber_id, jumlah_video)
matrix_youtuber_2
matrix_youtuber_2[,2]/matrix_youtuber_2[,3]

#Array
my.array <- array(c(1:24), dim = c(4,3,2))
my.array
my.array[2,,]
my.array[2,3,]
my.array[1:10]

#Data Frame
bmi <- data.frame(
  gender = c("Female", "Male", "Female"),
  single = c(F, F, T),
  height = c(155, 170, 165.5),
  wight = c(64, 65, 48.5),
  age = c(42,38,26)
)
#Melihat dan menyeleksi data frame
bmi
head(bmi)
bmi$age
bmi[1]
#Menginvestigasi struktur data frame
str(bmi)
#Mengurutkan data frame berdasarkan umur
bmi[order(bmi$age),]
bmi[order(bmi$age, decreasing = T),]

#Factor
edu <- rep(c("SD","SMP","SMA"),3)
factor_edu <- factor(edu)
factor_edu

gender_vector <- c("Male", "Female", "Female","Male","Male")
factor_gender_vector <- factor(gender_vector)
factor_gender_vector

#Level Factor
levels(factor_edu)
levels(factor_gender_vector)
#Summary factor
summary(factor_edu)
summary(factor_gender_vector)
#Mengurutkan Factor
factor_edu <- factor(edu, ordered = T, levels = c("SD","SMP","SMA"))
levels(factor_edu)

#List
my_vector <- 1:20
my.matrix <- matrix(1:12, ncol = 4)
my_df <- mtcars[1:10,]
my_list <- list(my_vector, my.matrix, my_df)
my_list
#Menamai elemen list
my_list <- list(vektor = my_vector, matriks = my.matrix,
                dataframe = my_df)
my_list
#Menyeleksi elemen dalam list
my_list[[2]][10]
my_list[[2]]
my_list[[2]][1]
my_list[[2]][1,]


#If Statement
socialmedia <- "Facebook"
jumlah_view <- 15

#Menyusun if statement untuk socialmedia
if(socialmedia == "Youtube"){
  print("Aku ingin menjadi Youtuber")
}else if(socialmedia == "Facebook"){
  print("Aku suka mengakses Facebook")
} else{
  print("Aku tidak ingin menjadi Youtuber")
}

if(jumlah_view > 17){
  print("You're popular!")
}else{
  print("Try harder")
}

#While loop
kecepatan <- 64
while (kecepatan > 30){
  print("turunkan kecepatan!")
  kecepatan <- kecepatan - 7
  print(kecepatan)
}

#for loop
prima <- c(2, 3, 5, 7, 11, 13)
for(p in prima){
  print(p)
}

for(i in 1:length(prima)){
  print(prima[i])
}

#Function
ratio <- function(x,y){
  x/y
}
ratio(3,4)
