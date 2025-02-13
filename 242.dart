class Solution {
  bool isAnagram(String s, String t) {
    var first = s.split("");
    var second = t.split("");
    first.sort();
    second.sort();
    if (first.join() == second.join()) {
      return true;
    }
    return false;
  }
}

void main(List<String> args) {
  print(Solution().isAnagram("rat", "car"));
}
