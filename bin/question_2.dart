// Write an algorithm to detect a Palindrome String

void main() {
  var stringInput1 = 'a2bcdcb2a';

  print(outputRequired(stringInput1));
}

//The function is used to remove all invalid character in string: #$%ˆ*&...
String removeInvalidCharactersInString(String string) {
  return string.replaceAll(RegExp(r'[^\w\s]+'), '');
}

/*The function is used to check input word is Panlindrome String?
    Return true: If Panlindrome String
    Return false: If not Panlindrome String*/
bool isPanlindrome(String wordCheck) {
  for (var i = 0; i < wordCheck.length ~/ 2; i++) {
    if (wordCheck[i] != wordCheck[wordCheck.length - i - 1]) return false;
  }
  return true;
}

//The function is used to  return output that we need
String outputRequired(String string) {
  var isPalindrome =
      isPanlindrome(removeInvalidCharactersInString(string.toLowerCase()));

  if (isPalindrome) {
    return '$string is Palindrome Strings';
  } else {
    return '$string is not Palindrome Strings';
  }
}
