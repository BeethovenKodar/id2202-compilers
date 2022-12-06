{

Module Front where

}

%name parse
%tokentype { Token }
%error { parseError }

% token 
    identifier  { TokIdentifier $$ }
    keyword     { TokKeyword $$ }
    constant    { TokConstant $$ }
    operator    { TokOperator $$ }
    seperator   { TokSeperator $$ }
    



