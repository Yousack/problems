import std.stdio, std.algorithm, std.array, std.conv, std.string, std.range;

void main() {
  auto input = readln.chomp.split.map!(to!int).array;
  auto n = input.front;
  auto m = input.back;
  auto a = readln.chomp.split.map!(to!int).array;
  bool[int] memAssoc;
  auto ans = new ulong[n];
  for (int i = n - 1; i >= 0; i--) {
    memAssoc[a[i]] = true;
    ans[i] = memAssoc.length;
  }
  for (int i = 0; i < m; i++) {
    int l = readln.chomp.to!int;
    ans[l - 1].writeln;
  }
}
