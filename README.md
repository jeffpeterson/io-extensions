Installation
============

    git clone --depth=1 https://github.com/jeffpeterson/io-extensions ~/.io/plugins/io-extensions
    echo -e "Importer addSearchPath(\"$HOME/.io/plugins/io-extensions/\")\nExtensions" >> ~/.iorc

Usage
=====

Create a list and access elements with brackets:

```io
lst := [1, 2, 3]
lst[0] //=> 1
```

Create a map using curly braces:

```io
map := {"a" -> 1, "b" -> 2, 3 -> "c"}
map["a"] //=> 1

// Note that map keys are converted to strings:
map[3] // Throws Exception
map["3"] //=> "c"
```

You can use `||` and `&&` in place of `or` and `and`:

```io
if(false || true, "hi") //=> "hi"
if(true  && true, "hi") //=> "hi"
```

`||` and `&&` (and `or` and `and`) work on objects:

```io
nil || 5 //=> 5
5 or nil //=> 5

5 && nil //=> nil
5 and 6  //=> 6
```

Assignment too:

```io
x := nil
x ||= "first"
x              //=> "first"
x ||= "second" //=> "first"

y ||:= "first"  //=> "first"
y ||:= "second" //=> "first"
```
