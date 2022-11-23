
# Q1 Regular Expressions
Match with these: 
- dc
- c 
- dac
- dabbabbac
- aaaaac
- bbc

Don't match with these: 
- bc
- bbbc
- abb
- adc

Identified patterns: 
- match whole words (after whitespace until next whitespace)
- if 'd' exists, it's always the first character
- always ends with 'c', and it can only exist last
- between optional 'd' and must have 'c', only patterns of 'a' and 'bb' are present

Resulting regular expression:
regex: `(d|)(a|bb)*c`


# Q2 Grammar 
Test cases:
`[]([()])`
`(([])[])`

Start symbol is 'balanced'

```
balanced -> left right
left -> 
left -> "(" left right
left -> "[" left right
right ->
right -> left right ")"
right -> left right "]"
```

# Q3 Parse tree and abstract syntax trees
## 1
Grammar
```
expr -> "(" expr ")"
expr -> expr "-" expr             9
expr -> expr "/" expr             10
expr -> Num
expr -> Ident                     2, 7
stmt -> "if" expr "then" stmt     1
stmt -> "{" stmtList "}"
stmt -> Ident "=" expr ";"        6, 8
stmtList ->                       5
stmtList -> stmtList stmt         3, 4
```
Case:
```ocaml
if x then { 
  y = 1 - 2 / z; 
  z = y 
}
```




## 1
paper
## 2
paper

## 3
Terminal symbols not present in the AST:
