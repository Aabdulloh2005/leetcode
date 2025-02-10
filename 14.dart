class Solution {
  String longestCommonPrefix(List<String> strs) {
    String fWord = strs.first;
    String longestStr = '';
    for (int i = 0; i < fWord.length; i++) {
      for (int j = 0; j < strs.length; j++) {
        try {
          if (!fWord[i].endsWith(strs[j][i])) {
            return longestStr;
          }
        } catch (e) {
          return longestStr;
        }
      }
      longestStr += fWord[i];
    }
    return longestStr;
  }
}

void main(List<String> args) {
  final solution = Solution();
  print(
    solution.longestCommonPrefix(
      ["dog", "d"],
    ),
  );
}
