function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x == 0) {
    return 0;
  } else {
    return x + bar(x-1);
  }
}

function baz(x: int): int {
  if (x == 0) {
    return 0;
  } else {
    return x * bar(x -1);
  }
}

<<EOF>>