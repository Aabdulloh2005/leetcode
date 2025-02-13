class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> grouped = {};

    for (String word in strs) {
      List<String> chars = word.split("");
      chars.sort();
      String sorted = chars.join("");
      if (!grouped.containsKey(sorted)) {
        grouped[sorted] = [];
      }
      grouped[sorted]!.add(word);
    }
    return grouped.values.toList();
  }
}

void main(List<String> args) {
  print(Solution().groupAnagrams(["eat", "anb", "eat", "ban", "tea", "ate", "ban"]));
}
