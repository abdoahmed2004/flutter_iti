import 'dart:io';
import 'dart:ffi';

void main() {
  grades(90, 80, 60, 70, 50);
  maximum(100, 50, 70);
}

void grades(int a, int b, int c, int d, int e) {
  int total = totalsum(a, b, c, d, e);
  double per = percentage(total);

  if (per > 90) {
    print("A");
  } else if (per > 80) {
    print("B");
  } else if (per > 70) {
    print("C");
  } else if (per > 60) {
    print("D");
  } else {
    print("F");
  }
}

void maximum(int a, int b, int c) {
  if (a >= b && a >= c) {
    print(a);
  } else if (a > b && c >= a) {
    print(c);
  } else if (a > c && b >= a) {
    print(b);
  } else if (b >= a && b >= c) {
    print(b);
  } else if (b > a && c >= b) {
    print(c);
  } else if (b > c && a >= b) {
    print(a);
  } else if (c >= a && c >= b) {
    print(c);
  } else if (c > a && b >= c) {
    print(b);
  } else if (c > b && a >= c) {
    print(a);
  }
}

int totalsum(int a, int b, int c, int d, int e) {
  return a + b + c + d + e;
}

double percentage(int total) {
  return (total / 500) * 100;
}
