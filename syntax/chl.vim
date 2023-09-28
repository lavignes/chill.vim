if exists("b:current_syntax")
  finish
endif

syn keyword chlKeyword use type pkg
syn keyword chlKeyword fn nextgroup=chlFunction skipwhite skipempty
syn keyword chlStatement let return continue break
syn keyword chlConditional if else try
syn keyword chlLoop for
syn keyword chlQualifier pub mut extern union
syn keyword chlOperator sizeof as lengthof ok err
syn match chlOperator display "\%(+\|-\|/\|*\|=\|\^\|\~\|&\|?\||\|!\|>\|<\|%\)=\?"
syn match chlOperator display "&&\|||"
syn keyword chlTodo contained TODO todo FIXME fixme XXX xxx

syn keyword chlType Bool
syn keyword chlType U8 I8 U16 I16 U32 I32 U64 I64 UInt Int Err
syn keyword chlType Nil

syn match chlIdentifier "[a-zA-Z_][a-zA-Z0-9_]*"
syn match chlFunction "[a-zA-Z_][a-zA-Z0-9_]*" display contained
syn match chlDec "[0-9][0-9_]*\([uiUI]\(8\|16\|32\|64\)\?\)\?"
syn match chlHex "0x[0-9a-fA-F][0-9a-fA-F_]*\([uiUI]\(8\|16\|32\|64\)\?\)\?"
syn match chlBin "0b[01][01_]*\([uiUI]\(8\|16\|32\|64\)\?\)\?"
syn keyword chlBool true false
syn keyword chlNil nil
syn match chlByte contained "\(\\x[0-9a-fA-F][0-9a-fA-F]\)\|\\t\|\\n\|\\r\|\\\\\|\\'\|\\\""

syn region chlStr start="\"" skip="\\\"" end="\"" keepend contains=chlByte
syn region chlChar start="'" end="\\'" end="'\([uiUI]\(8\|16\|32\|64\)\?\)\?" keepend contains=chlByte

syn region chlComment start="//" end="$" keepend contains=chlTodo
syn region chlAttr start="#\[" end="\]" keepend contains=chlIdentifier,chlStr

hi def link chlKeyword Keyword
hi def link chlStatement Statement
hi def link chlConditional Conditional
hi def link chlLoop Repeat
hi def link chlQualifier StorageClass
hi def link chlOperator Operator
hi def link chlTodo Todo
hi def link chlType Type
hi def link chlDec Number
hi def link chlHex Number
hi def link chlBin Number
hi def link chlBool Constant
hi def link chlNil Constant
hi def link chlByte Constant
hi def link chlStr String
hi def link chlChar Character
hi def link chlFunction Function
hi def link chlComment Comment
hi def link chlAttr PreProc

let b:current_syntax = "chl"
set ts=4
set sw=4
set et
