" Vim syntax file
" Language: OMNeT++ configuration (omnetpp.ini)

if exists("b:current_syntax")
  finish
endif

syn case match

syn keyword iniTodo       contained TODO FIXME XXX NOTE
syn match   iniComment    "#.*$" contains=iniTodo,@Spell

syn match   iniSection    "^\s*\[\s*\(General\|Config\s\+[^]]\+\)\s*\]"
syn match   iniInclude    "^\s*include\>.*$"

" Key: everything before the first '=' on a line
syn match   iniKey        "^\s*[^#=[ \t][^=]\{-}\ze\s*=" contains=iniWildcard,iniDot
syn match   iniWildcard   "\*\*\|\*\|{[^}]*}" contained
syn match   iniDot        "\." contained

syn match   iniEquals     "="
syn region  iniString     start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=iniVariable,@Spell
syn region  iniVariable   matchgroup=iniVarDelim start="\${" end="}" contains=iniString,iniNumber,iniStep
syn keyword iniStep       contained step
syn match   iniNumber     "\<\d\+\(\.\d*\)\=\([eE][-+]\=\d\+\)\=\a*\>"
syn keyword iniBoolean    true false
syn keyword iniBuiltin    default ask nan inf

hi def link iniTodo       Todo
hi def link iniComment    Comment
hi def link iniSection    Title
hi def link iniInclude    Include
hi def link iniKey        Identifier
hi def link iniWildcard   Special
hi def link iniDot        Delimiter
hi def link iniEquals     Operator
hi def link iniString     String
hi def link iniVariable   Macro
hi def link iniVarDelim   Delimiter
hi def link iniStep       Keyword
hi def link iniNumber     Number
hi def link iniBoolean    Boolean
hi def link iniBuiltin    Constant

let b:current_syntax = "omnetini"
