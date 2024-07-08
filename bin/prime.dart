import 'dart:io';

void main() {
  print("enter your number");
  int num = int.parse(stdin.readLineSync()!);
  if (isPrime(num)) {
    print("is prime");
  } else {
    print("Not prime");
  }
}

bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
