# String Calculator

This project is an implementation of a simple string calculator developed using **Test-Driven Development (TDD)**. The calculator supports handling strings of comma-separated numbers and various features such as custom delimiters, new line separators, and exception handling for negative numbers.

## Features Implemented

1. **Empty String**: Returns 0 when the input string is empty.
2. **Single Number**: Returns the number itself when the input contains a single number.
3. **Multiple Numbers**: Returns the sum of multiple numbers separated by commas or new lines.
4. **Custom Delimiters**: Supports custom delimiters specified at the beginning of the string (e.g., `//;\n1;2`).
5. **Negative Numbers**: Throws an exception when one or more negative numbers are present, with the exception message listing all negative numbers.

## How to Run the Project

### 1. Clone the Repository

Clone the repository to your local machine:

```bash
git clone https://github.com/yourusername/string_calculator.git
cd string_calculator
2. Install Dependencies
Run the following command to fetch the dependencies:

dart pub get

3. Run Tests
You can run the unit tests using the following command:

dart test

4. Run the Application
If you wish to use the add function, you can call it from within your Dart code like this:


import 'package:string_calculator/string_calculator.dart';

void main() {
  print(add("1,2,3"));  // Output will be 6
}

Folder Structure
lib/: Contains the implementation of the add function in string_calculator.dart.
test/: Contains unit tests for the add function in string_calculator_test.dart.
README.md: This file.
pubspec.yaml: The project dependencies and configuration file.
Test Cases
Here are the main test cases covered by the project:

Empty string:
add("") returns 0.

Single number:
add("1") returns 1.

Two numbers:
add("1,2") returns 3.

Newline separated numbers:
add("1\n2,3") returns 6.

Custom delimiter:
add("//;\n1;2") returns 3.

Negative numbers:
add("1,-2,3") throws an exception with the message:
negative numbers not allowed: -2.

Multiple negative numbers:
add("1,-2,-3") throws an exception with the message:
negative numbers not allowed: -2,-3.

TDD Approach
This project was developed using the Test-Driven Development (TDD) approach:

Write a test for a feature.
Implement just enough code to pass the test.
Refactor the code, keeping the tests passing.
Repeat the process for each new feature.
Test Files
test/string_calculator_test.dart: Contains all unit tests for the add function, ensuring it handles various edge cases.