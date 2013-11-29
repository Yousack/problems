import std.stdio, std.algorithm, std.array, std.conv, std.string;

void main() {
  auto input = new int[][2];
  foreach (ref elem; input) {
    elem = readln.chomp.split.map!(to!int).array;
  }
  int n = input[0][0];
  int d = input[0][1];
  int[] a = input[1].sort!("a < b").array;
  int m = readln.chomp.to!int;

  int profit = 0;

  if (a.length >= m) {
    profit += reduce!("a + b")(0, a[0 .. m]);
  } else {
    profit += reduce!("a + b")(0, a);
    profit -= (m - a.length) * d;
  }

  profit.writeln;
}
