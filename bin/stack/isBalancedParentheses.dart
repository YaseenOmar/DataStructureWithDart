bool isBalancedParentheses(String input) {
  List<String> stack = [];

  for (int i = 0; i < input.length; i++) {
    if (input[i] == '(') {
      stack.add('(');
    } else if (input[i] == ')') {
      if (stack.isEmpty) return false;
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}

void main() {

  String test1 = "((()))";
  String test2 = "((())";
  print('\nTesting parentheses:');
  print('$test1 is balanced: ${isBalancedParentheses(test1)}');
  print('$test2 is balanced: ${isBalancedParentheses(test2)}');
}
