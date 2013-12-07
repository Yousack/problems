import std.stdio, std.algorithm, std.array, std.conv, std.string, std.range;

void main() {
  auto input = readln.chomp.split.map(to!int);
  auto n = input.front;
  auto m = input.back;
  [ n, m ].join(" ").writeln;
}
