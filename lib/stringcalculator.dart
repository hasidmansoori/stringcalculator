int add(String numbers) {
  if (numbers.isEmpty) {
    return 0;
  }

  // Check for negative numbers
  var negativeNumbers = <int>[];

  // Check if custom delimiter is used
  if (numbers.startsWith("//")) {
    var delimiterIndex = numbers.indexOf('\n');
    var delimiter = numbers.substring(2, delimiterIndex);
    var numberString = numbers.substring(delimiterIndex + 1);

    var cleanedNumbers = numberString.replaceAll(delimiter, ',');
    var numberList = cleanedNumbers.split(',');

    for (var number in numberList) {
      var parsedNumber = int.parse(number);
      if (parsedNumber < 0) {
        negativeNumbers.add(parsedNumber);
      }
    }

    if (negativeNumbers.isNotEmpty) {
      throw ArgumentError("negative numbers not allowed: ${negativeNumbers.join(',')}");
    }

    return numberList.map(int.parse).reduce((a, b) => a + b);
  }

  // Handle standard case with commas and newlines
  var cleanedNumbers = numbers.replaceAll('\n', ',');
  var numberList = cleanedNumbers.split(',');

  for (var number in numberList) {
    var parsedNumber = int.parse(number);
    if (parsedNumber < 0) {
      negativeNumbers.add(parsedNumber);
    }
  }

  if (negativeNumbers.isNotEmpty) {
    throw ArgumentError("negative numbers not allowed: ${negativeNumbers.join(',')}");
  }

  return numberList.map(int.parse).reduce((a, b) => a + b);
}