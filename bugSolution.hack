function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else if (x > 12) { // Check for potential overflow (12! is the largest factorial that fits in a 32-bit int)
    return 0; // Handle overflow - Return 0 or throw an exception
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x == 0) {
    return 0;
  } else if (x > 10000) { // Check for potential overflow - adjust threshold based on needs
      return 0; //Handle overflow
  } else {
    return x + bar(x-1);
  }
}

function baz(x: int): int {
  if (x == 0) {
    return 0;
  } else if (x > 10000) { // Check for potential overflow - adjust threshold based on needs
      return 0; //Handle overflow
  } else {
    return x * bar(x -1);
  }
}

<<EOF>>