
import sys as s


angka = int(input("Masukkan bilangan bulatnya bang (>=0): "))


if angka < 0:
    print("Error: Bilangan tidak boleh negatif kocak!")
    s.exit()  
else:
    
    biner = bin(angka)[2:]
    print(f"Bilangan {angka} dalam biner adalah: {biner}")
