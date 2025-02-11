class Solution {
  int firstUniqChar(String s) {
    Map<String, int> freq = {};

    for (int i = 0; i < s.length; i++) {
      freq[s[i]] = (freq[s[i]] ?? 0) + 1;
    }
    print(freq);
    for (int i = 0; i < s.length; i++) {
      if (freq[s[i]] == 1) {
        return i;
      }
    }
    return -1;
  }
}

// class Solution {
//   int firstUniqChar(String s) {
//      for (int i = 0; i < s.length; i++) {
//       bool find = true;
//       for (int j = 0; j < s.length; j++) {
//         if (i != j && s[i] == s[j]) {
//           find = false;
//           break;
//         }
//       }
//       if (find) {
//         return i;
//       }
//     }
//     return -1;
//   }
//   }

void main(List<String> args) {
  print(Solution().firstUniqChar(""));
}
