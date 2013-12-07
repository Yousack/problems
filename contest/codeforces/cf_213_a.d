import std.stdio, std.array, std.string, std.conv, std.algorithm, std.range;

void main() {
  auto input = readln.chomp.split.map!(to!int).array;
  auto n = input[0];
  auto k = input[1];
  auto checker = new int[0];

  for (int i = 0; i <= k; i++) { checker ~= i; }

  auto answer = 0;

  for (int i = 0; i < n; i++) {
    auto a = readln.chomp.split("").sort.map!(to!int).array;
    if (a == checker) { answer++; }
  }

  answer.writeln;
}
