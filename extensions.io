Extensions := nil

// OperatorTable addAssignOperator("=>", "list")
// OperatorTable addAssignOperator(":", "list")
OperatorTable addAssignOperator("->", "list")
OperatorTable addOperator("is", 6)
OperatorTable addOperator("isnt", 6)
OperatorTable addAssignOperator("||=", "orUpdateSlot")
OperatorTable addAssignOperator("||:=", "orSetSlot")

Object curlyBrackets := method( call evalArgs asMap)
Object squareBrackets := method(call evalArgs)

List squareBrackets := method(i, at(i))
Map squareBrackets  := method(i, at(i))

Object || := method(self)
Object && := method(o, o)

nil    || := method(o, o)
nil    && := method(nil)

Object orUpdateSlot := method(slotName,
  call sender getSlot(slotName) || call sender updateSlot(slotName, call evalArgAt(1)))

Object orSetSlot := method(slotName,
  call sender doString("?" .. slotName) || call sender setSlot(slotName, call evalArgAt(1)))
