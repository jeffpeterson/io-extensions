Extensions := nil

OperatorTable addAssignOperator("->", "list")
OperatorTable addOperator("is", 6)
OperatorTable addOperator("isnt", 6)
OperatorTable addAssignOperator("||=", "orUpdateSlot")
OperatorTable addAssignOperator("||:=", "orSetSlot")

Object curlyBrackets := method( call evalArgs asMap)
Object squareBrackets := method(call evalArgs)

List squareBrackets := method(i, at(i))
Map squareBrackets  := method(i, at(i))

Object ||  := method(self)
Object or  := method(self)
Object &&  := method(o, o)
Object and := method(o, o)

nil    ||  := method(o, o)
nil    or  := method(o, o)
nil    &&  := method(nil)
nil   and  := method(nil)

false  ||  := method(o, o)
false  or  := method(o, o)
false  &&  := method(false)
false and  := method(false)

true   ||  := method(true)
true   or  := method(true)
true   &&  := method(o, o)
true  and  := method(o, o)

Object orUpdateSlot := method(slotName,
  call sender getSlot(slotName) || call sender updateSlot(slotName, call evalArgAt(1)))

Object orSetSlot := method(slotName,
  call sender doString("?" .. slotName) || call sender setSlot(slotName, call evalArgAt(1)))
