type keyType =
        | Break
        | CharKey
        | Delete 
        | Else
        | Extern
        | For
        | If
        | Int
        | New
        | Return
        | Struct
        | Void
        | While

type constType = 
        | Num of int
        | Char of char
        | String of string 

type token =
        | Ident of string
        | Keyword of keyType
        | Const of constType 
        | Operator of string
        | Seperator of string 
        | EOF
