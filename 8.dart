class Solution {
  int myAtoi(String s) {
    s = s.trim();
    if (s.isEmpty) return 0;

    int index = 0;
    int sign = 1;
    int result = 0;
    int max = 2147483647;
    int min = -2147483648;

    if (s[index] == '+' || s[index] == '-') {
      sign = s[index] == '-' ? -1 : 1;
      index++;
    }

    while (index < s.length && s[index].contains(RegExp(r'\d'))) {
      int digit = s.codeUnitAt(index) - '0'.codeUnitAt(0);
      if (result > (max - digit) ~/ 10) {
        print("result = $result  >>  ${(max - digit) ~/ 10}");

        return sign == 1 ? max : min;
      }

      result = result * 10 + digit;
      index++;
    }
    print(sign);

    return result * sign;
  }
}

void main(List<String> args) {
  print(Solution().myAtoi("2147483648 "));
}
// −2147483648
// 2147483647 