" Vim syntax file
" Language: OMNeT++ NED

if exists("b:current_syntax")
  finish
endif

syn case match

syn keyword nedTodo        contained TODO FIXME XXX NOTE
syn match   nedComment     "//.*$" contains=nedTodo,@Spell

syn keyword nedPackage     package import
syn keyword nedType        simple module network channel moduleinterface channelinterface
syn keyword nedStructure   extends like
syn keyword nedSection     parameters gates types submodules connections
syn keyword nedConnKeyword allowunconnected
syn keyword nedParamType   double int string bool xml object
syn keyword nedModifier    volatile input output inout
syn keyword nedConditional if
syn keyword nedRepeat      for
syn keyword nedBuiltin     this parent sizeof index exists typename default ask xmldoc
syn keyword nedBoolean     true false
syn keyword nedConstant    nan inf

syn match   nedProperty    "@\h[[:alnum:]_:-]*"
syn match   nedArrow       "<-->\|-->\|<--\|\.\.\|++"

syn region  nedString      start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell

syn match   nedNumber      "\<\d\+\(\.\d*\)\=\([eE][-+]\=\d\+\)\=\a*\>"
syn match   nedNumber      "\<0x\x\+\>"

syn match   nedFunction    "\<\h\w*\ze\s*("

hi def link nedTodo        Todo
hi def link nedComment     Comment
hi def link nedPackage     Include
hi def link nedType        Structure
hi def link nedStructure   Keyword
hi def link nedSection     Label
hi def link nedConnKeyword Keyword
hi def link nedParamType   Type
hi def link nedModifier    StorageClass
hi def link nedConditional Conditional
hi def link nedRepeat      Repeat
hi def link nedBuiltin     Special
hi def link nedBoolean     Boolean
hi def link nedConstant    Constant
hi def link nedProperty    PreProc
hi def link nedArrow       Operator
hi def link nedString      String
hi def link nedNumber      Number
hi def link nedFunction    Function

let b:current_syntax = "ned"
