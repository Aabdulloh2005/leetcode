class Solution {
  bool isPalindrome(String s) {
    String cleanedW = s.toLowerCase().replaceAll(RegExp(r'[^a-zA-Z0-9]'), "");

    int left = 0;
    int right = cleanedW.length;
    while (left < right) {
      if (cleanedW[left] != cleanedW[right - 1]) {
        return false;
      }
      left++;
      right--;
    }
    return true;

    // final isTrue = cleanedW.contains(cleanedW.split("").reversed.join());
    // return isTrue;
  }
}

void main(List<String> args) {
  print(Solution().isPalindrome("0p"));
}
