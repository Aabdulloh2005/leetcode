class Solution {
  int romanToInt(String s) {
    int sum = 0;

    for (int j = 0; j < s.length; j++) {
      switch (s[j]) {
        case "I":
          sum += 1;
          break;

        case "V":
          sum += 5;
          break;
        case "X":
          sum += 10;
          break;
        case "L":
          sum += 50;
          break;
        case "C":
          sum += 100;
          break;
        case "D":
          sum += 500;
          break;
        case "M":
          sum += 1000;
          break;
      }
      if (j + 1 < s.length) {
        if (s[j] == "I" && (s[j + 1] == "V" || s[j + 1] == "X")) {
          sum -= 2;
        } else if (s[j] == "X" && (s[j + 1] == "L" || s[j + 1] == "C")) {
          sum -= 20;
        } else if (s[j] == "C" && (s[j + 1] == "D" || s[j + 1] == "M")) {
          sum -= 200;
        }
      }
    }
    return sum;
  }
}

void main(List<String> args) {
  final solution = Solution();
  // print(solution.romanToInt("XIX"));

  print(solution.romanToInt("MCMXCIV"));
}
