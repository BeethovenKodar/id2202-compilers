
# Regular Expressions

Match: 
- dc
- c 
- dac
- dabbabbac
- aaaaac
- bbc

Don't match: 
- bc
- bbbc
- abb
- adc

regex: `\b([acd]([ac]+[a-d]*)?) `

That is: 
- match from beginning of word
 
- must have a or c on second index of word if that index exists
- 