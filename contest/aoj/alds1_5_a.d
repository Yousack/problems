import std.algorithm;
import std.array;
import std.container;
import std.conv;
import std.range;
import std.stdio;
import std.string;

bool solve(int[] p, int t) {
  // if p is empty return whether t is 0
  // if p is empty and t is 0, it means that sum(p[0..$]) is t
  if (p.empty) return t == 0;
  // success
  if (t == 0) return true;
  // subtracted too much
  if (t < 0) return false;
  // get the first element of p and remove it from p
  int n = p.front;
  p.popFront;
  // use n for sum
  if (solve(p, t-n)) return true;
  // do not use n for sum
  if (solve(p, t)) return true;
  return false;
}

void main() {
  auto n = readln.chomp.to!int;
  auto a = readln.chomp.split.map!(to!int).array;
  auto q = readln.chomp.to!int;
  auto m = readln.chomp.split.map!(to!int).array;

  foreach (m_i; m) {
    if (solve(a, m_i)) {
      "yes".writeln;
    } else {
      "no".writeln;
    }
  }
}
