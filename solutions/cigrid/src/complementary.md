## S2:
```
balanced ->
balanced -> "(" balanced ")" balanced
balanced -> "[" balanced "]" balanced
```

This should work, since now it has to be balanced between two matching terminals, 
either ( ) or [ ] combined with balancing afterwards if match on a terminal pair has been
identified and it happens to exist more tokens on the stack. 

## S3:
The start symbol is stmtList, which should then be at the root of the AST. The root
should branch into {Epsilon, stmt}, where the stmt in turn points to 
{"if", expr, "then", "{", stmt "}"} and the stmt in curly braces point to the already
existing stmtList. That should be it if I'm not mistaken once again. 

## S4:
The type of the second term, which is well typed, is int -> int.