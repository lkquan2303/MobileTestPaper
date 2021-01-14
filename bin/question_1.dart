//Question 1: Write an algorithm to sort an array of integer

void main() {
  var inputArray = [1, 2, 6, 7, 8, 4, 1, 9, -3];

  //Output
  print('Your Output Result: ${sortArrayAsRequired(inputArray)}');
}

List sortArrayAsRequired(List<dynamic> listNumber) {
  //Declare the array to use
  var oddNumber = [];
  var evenNumber = [];

  //Filter and separate arrays of even and odd numbers
  for (var prop in listNumber) {
    if (isEvenNumber(prop)) {
      evenNumber.add(prop);
    } else {
      oddNumber.add(prop);
    }
  }

  //Arrange the element as required
  sortElementSmallToLarge(oddNumber);
  sortElementLargeToSmall(evenNumber);

  //Output Result
  var outputResult = oddNumber + evenNumber;

  return outputResult;
}

/*: The function is used to filter out odd or even numbers
      Return True: If even numbers
      Return False: If odd numbers */
bool isEvenNumber(int number) {
  return (number % 2 == 0);
}

//The function is used to sorts the elements in an array from small to large
void sortElementSmallToLarge(List<dynamic> listNumber) {
  return listNumber.sort(
    (number1, number2) => number1.compareTo(number2),
  );
}

//The function is used to sorts the elements in an array from large to small
void sortElementLargeToSmall(List<dynamic> listNumber) {
  return listNumber.sort(
    (number2, number1) => number1.compareTo(number2),
  );
}
