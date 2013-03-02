Extensions := nil

// OperatorTable addAssignOperator("=>", "list")
// OperatorTable addAssignOperator(":", "list")
OperatorTable addAssignOperator("->", "list")
OperatorTable addOperator("is", 6)
OperatorTable addOperator("isnt", 6)
OperatorTable addAssignOperator("||=", "orEquals")

Object curlyBrackets := method( call evalArgs asMap)
Object squareBrackets := method(call evalArgs)

List squareBrackets := method(i, at(i))
Map squareBrackets  := method(i, at(i))

Object || := method(self)
Object && := method(o, o)

nil    || := method(o, o)
nil    && := method(nil)

Object orEquals := method(slotName,
  value := call sender getSlot(slotName)
  if(value, value, call sender updateSlot(slotName, call evalArg(1))))

// _unpack := method(call argAt(0) arguments foreach(i, arg, setSlot(arg name, call argAt(1) argAt(i))))
// LazyList := Object clone
// LazyList contents ::= lazySlot(list)
// LazyList setSlot("=", method())
// Object llist := LazyList clone setContents(call message arguments)

// x := 5
// Object match := method()
// x match()
