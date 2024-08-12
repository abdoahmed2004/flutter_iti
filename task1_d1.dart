import 'dart:ffi';

void main() {
  hello("abdo");
  int x = operation(3, 2, "-");
  int y = op_switch(8, 5, '-');
  print(x);
  temp(33.3);
  college("FCI");
  odd(1, 10);
}

void hello(String s) {
  print('Welcome to my application');
  print("Welcome $s");
}

int operation(int x, int y, String sign) {
  if (sign == '+') {
    return (x + y);
  } else if (sign == "-") {
    return (x - y);
  } else {
    return (x * y);
  }
}

void temp(double t) {
  if (t >= 25 && t <= 30)
    print("normal");
  else if (t < 25)
    print("Cold");
  else if (t > 30)
    print("Hot");
  else {
    print("Ambiguous,can't detect");
  }
}

void college(String s) {
  if (s == "FCI")
    print("you're eligible for programming track");
  else if (s == "Engineering")
    print("you're eligible for Network and Embedded tracks");
  else if (s == "Commerce")
    print("you're eligible for ERP and Social media tracks");
}

void odd(int start, int end) {
  for (int i = start; i <= end; i++) {
    if (i % 2 != 0) print(i);
  }
}

int op_switch(int x, int y, String sign) {
  switch (sign) {
    case "+":
      return x + y;
      break;
    case "-":
      return x - y;
      break;
    default:
      return x * y;
  }
}
