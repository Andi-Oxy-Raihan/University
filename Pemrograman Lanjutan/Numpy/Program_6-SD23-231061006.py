
#Nama: Andi Oxy Raihan Machikami Rahman
#Nim: 231061006
#Program_6 (Numpy Matriks)

#link Google Collab: https://colab.research.google.com/drive/1IMEo-NauLiG50RjvUPXBAtBRpH_a6hi0#scrollTo=ZabbXy9upHaa

import numpy as np

A = np.array ([[5,4,2,5],[4,9,1,1],[4,2,1,3],[1,1,2,5]])
B = np.array ([[2,8,2,4],[5,2,1,7],[1,1,2,5],[5,4,2,5]])
C = np.array ([[4,2,1,3],[1,1,2,5],[5,4,2,5],[2,4,8,9]])

print ("Matriks A is\n", A)
print ("\nMatriks B is\n", B)
print ("\nMatriks C is\n", C)

#Transpose
Trans_A = np.transpose(A)
Trans_B = np.transpose(B)
Trans_C = np.transpose(C)
print ("Matriks Transpose A is\n", Trans_A)
print ("\nMatriks Transpose B is\n", Trans_B)
print ("\nMatriks Transpose C is\n", Trans_C)

#Penjumlahan
Jumlah_AB = A + B
Jumlah_AC = A + C
Jumlah_BC = B + C
print ("Matriks A+B is\n", Jumlah_AB)
print ("\nMatriks A+C is\n", Jumlah_AC)
print ("\nMatriks B+C is\n", Jumlah_BC)

#Pengurangan
Kurang_AB = A - B
Kurang_AC = A - C
Kurang_BC = B - C
print ("Matriks A-B is\n", Kurang_AB)
print ("\nMatriks A-C is\n", Kurang_AC)
print ("\nMatriks B-C is\n", Kurang_BC)

#Perkalian
Multiply_AB = np.dot(A,B)
Multiply_AC = np.dot(A,C)
Multiply_BC = np.dot(B,C)
print ("Matriks A*B is\n", Multiply_AB)
print ("\nMatriks A*C is\n", Multiply_AC)
print ("\nMatriks B*C is\n", Multiply_BC)

Multiply_A_Ta = np.dot(A,Trans_A)
Multiply_B_Tb = np.dot(B,Trans_B)
Multiply_C_Tc = np.dot(C,Trans_C)
print ("Matriks A*A\' is\n", Multiply_A_Ta)
print ("\nMatriks B*B\' is\n", Multiply_A_Ta)
print ("\nMatriks C*C\' is\n", Multiply_A_Ta)