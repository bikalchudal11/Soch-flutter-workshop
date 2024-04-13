// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print

// table(int a) {
//for loop
// for (int i = 1; i < 11; i++) {
//   print("a * $i = " + (a * i).toString());
// }

//doWhile loop
// int i = 1;
// while (i < 11) {
//   print("5 * $i = " + (5 * i).toString());
//   i++;
// }
// }

// void sayHi(String name, {String? name2}) {
//normal method
// if (name2 == null) {
//   print("Hi $name");
// } else {
//   print("Hi $name " + name2);
// }

//ternary method
//   print((name2 == null) ? "Hi $name" : "Hi $name " + name2);
// }

var names = ["Ram", "Shyam", "Hari", "Krishna"];

void displayName() {
  for (int i = 0; i < names.length; i++) {
    print("Hello " + names[i] + ".");
  }
}

void main() {
  // sayHi("Ram", name2: "Bikal");
  // print(names.join("\n"));
  // displayName();
  print(names.map((e) => "Hello " + e + "\n").toList().join(""));
}
