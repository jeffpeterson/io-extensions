describe(Extensions,
  table := {1 -> 2, 3 -> 4}

  assert([1,2,3] == list(1,2,3))
  assert([1,2,3][0] == 1)
  assert((1 -> 2) == list("1", 2))
  assert(table["1"] == 2)
  assert(table["3"] == 4)

  assert(1 || 2 == 1)
  assert(nil || 2 == 2)
  assert((1 && 2) == 2)
  assert((nil && 2) == nil)

  describe(orEquals,
    x := 1
    assert(x == 1)
    x ||= 2
    assert(x == 1)))

// {1 -> 2, 3 -> 4}
// list(1,2)
// [1, 2][2]

// x = z && y

// llist(x, y) <- list(1,2)
// if := method()

// x match(
//   5 => println,

// )
