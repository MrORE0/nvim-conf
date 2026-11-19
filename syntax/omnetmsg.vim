" Vim syntax file
" Language: OMNeT++ message definitions (.msg)

if exists("b:current_syntax")
  finish
endif

" Embedded C++ for cplusplus {{ ... }} blocks
syn include @msgCpp syntax/cpp.vim
unlet! b:current_syntax

syn case match

syn keyword msgTodo       contained TODO FIXME XXX NOTE
syn match   msgComment    "//.*$" contains=msgTodo,@Spell

syn keyword msgInclude    import namespace
syn keyword msgStructure  message packet class struct enum
syn keyword msgKeyword    extends abstract
syn keyword msgType       bool char short int long float double string unsigned
syn keyword msgType       int8_t int16_t int32_t int64_t uint8_t uint16_t uint32_t uint64_t
syn keyword msgType       simtime_t cObject cOwnedObject cNamedObject
syn keyword msgModifier   const
syn keyword msgBoolean    true false

syn match   msgProperty   "@\h[[:alnum:]_:-]*"
syn region  msgString     start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell
syn match   msgNumber     "\<\d\+\(\.\d*\)\=\([eE][-+]\=\d\+\)\=\>"
syn match   msgNumber     "\<0x\x\+\>"

syn keyword msgCplusplus  cplusplus nextgroup=msgCppTarget,msgCppBlock skipwhite
syn match   msgCppTarget  "(\s*\h\w*\s*)" contained nextgroup=msgCppBlock skipwhite
syn region  msgCppBlock   matchgroup=msgCppDelim start="{{" end="}}" contained contains=@msgCpp keepend

hi def link msgTodo       Todo
hi def link msgComment    Comment
hi def link msgInclude    Include
hi def link msgStructure  Structure
hi def link msgKeyword    Keyword
hi def link msgType       Type
hi def link msgModifier   StorageClass
hi def link msgBoolean    Boolean
hi def link msgProperty   PreProc
hi def link msgString     String
hi def link msgNumber     Number
hi def link msgCplusplus  PreProc
hi def link msgCppTarget  Special
hi def link msgCppDelim   Delimiter

let b:current_syntax = "omnetmsg"
