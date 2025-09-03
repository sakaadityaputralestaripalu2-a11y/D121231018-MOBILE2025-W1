

// ===== Fibonacci =====
List<int> fibonacciSeries(int n) {
  if (n < 0) throw ArgumentError("n harus >= 0");
  if (n == 0) return [0];
  List<int> series = [0, 1];
  for (int i = 2; i <= n; i++) {
    series.add(series[i - 1] + series[i - 2]);
  }
  return series;
}

int fibonacciN(int n) {
  if (n < 0) throw ArgumentError("n harus >= 0");
  int a = 0, b = 1;
  for (int i = 0; i < n; i++) {
    int temp = a + b;
    a = b;
    b = temp;
  }
  return a;
}

// ===== Faktorial =====
int faktorial(int n) {
  if (n < 0) throw ArgumentError("n harus >= 0");
  int hasil = 1;
  for (int i = 2; i <= n; i++) {
    hasil *= i;
  }
  return hasil;
}

// ===== Konversi ke Biner =====
String keBiner(int n) {
  if (n < 0) throw ArgumentError("n harus >= 0");
  if (n == 0) return "0";
  String biner = "";
  int temp = n;
  while (temp > 0) {
    biner = (temp % 2).toString() + biner;
    temp ~/= 2;
  }
  return biner;
}

// ===== Program Utama =====
void main() {

  // Contoh pemanggilan 
  int n = 7;

  print("Barisan Fibonacci sampai N=$n: ${fibonacciSeries(n)}");
  print("Fibonacci ke-$n: ${fibonacciN(n)}");
  print("Faktorial dari $n: ${faktorial(n)}");
  print("Bentuk biner dari $n: ${keBiner(n)}");
}
