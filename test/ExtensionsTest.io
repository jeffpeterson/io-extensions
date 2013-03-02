describe(Extensions,
  table := {1 -> 2, 3 -> 4}

  assert([1,2,3] == list(1,2,3))
  assert([1,2,3][0] == 1)
  assert((1 -> 2) == list("1", 2))
  assert(table["1"] == 2)
  assert(table["3"] == 4)

  assert((1 || 2) == 1)
  assert((nil || 2) == 2)
  assert((1 && 2) == 2)
  assert((nil && 2) == nil)
  assert((1 && nil) == nil)

  describe(orUpdateSlot,
    x := "first"
    assert(x == "first")
    x ||= "sec"
    assert(x == "first")
    assert((x ||= "sec") == "first"))

  describe(orSetSlot,
    x ||:= "first"
    y ||:= x
    assert(x == "first")
    assert((x ||:= "sec") == "first")))
