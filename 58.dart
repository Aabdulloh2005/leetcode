class Solution {
  int lengthOfLastWord(String s) {
    return s.trim().split(" ").last.length;
  }
}

void main(List<String> args) {
  print(Solution().lengthOfLastWord("   fly me   to   the moon  "));
}
