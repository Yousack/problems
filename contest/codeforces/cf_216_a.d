import std.stdio, std.array, std.algorithm, std.conv, std.range, std.string;

void main() {
  auto input = readln.chomp.split.map!(to!int).array;
  auto n = input[0];
  auto m = input[1];
  auto k = input[2];
  auto a = readln.chomp.split.map!(to!int).array;

  foreach (e; a) {
    switch (e) {
    case 1:
      m--;
      break;
    case 2:
      if (k > 0) { k--; } else { m--; }
      break;
    default:
      break;
    }
  }

  auto answer = 0;
  if (m < 0) { answer += -m; }
  if (k < 0) { answer += -k; }

  answer.writeln;
}
