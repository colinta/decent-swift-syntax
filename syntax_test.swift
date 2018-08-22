//  SYNTAX TEST "Packages/Swift-for-f-ing-sublime/Swift.sublime-syntax"

// comment
//  ^ comment.line
// <- punctuation.definition.comment

// MARK: testing!
//  ^ comment.line
//  ^ punctuation.definition.comment
//       ^ meta.toc-list


/* comment */
//  ^comment.block
/* 000 */
//  ^comment.block
//  ^ comment - constant
000 /* "string" */
// <- -comment
//      ^comment.block
//      ^-string

true
// <- constant.language
// <- constant.language.true
false
// <- constant.language
// <- constant.language.false
nil
// <- constant.language
// <- constant.language.nil

1.1  100.001
// <- constant.numeric
// <- constant.numeric.float
//   ^ constant.numeric
//   ^^^^^^^ constant.numeric.float
//  ^ source.swift
100
// <- constant.numeric
// <- constant.numeric.decimal
1_000_000
//   ^ constant.numeric.decimal
0xDEADBEEF
// <- constant.numeric.hex
//  ^ constant.numeric.hex
0xGGGGG
//  ^ -constant.numeric.hex
0o12345670
// <- constant.numeric.octal
//  ^ constant.numeric.octal
0o8888
//  ^ -constant.numeric.octal
0b01010110101
// <- constant.numeric.binary
//  ^ constant.numeric.binary
0b22222
//  ^ -constant.numeric.binary
word123
//  ^ -constant.numeric

if { /**/ }
// <- keyword.control
where { /**/ }
// <- keyword.control

#if FOO
// <- punctuation.definition.preprocessor
#endif
//  ^ meta.preprocessor.c

if a || b
// <- keyword
//   ^ keyword.operator

public func foo
// <- storage.modifier
//     ^ storage.type
//     ^ storage.type.function
//          ^ variable
//          ^ entity.name.function

self
// <- keyword.variable
super
// <- keyword.variable

Color
// <- support.class
UIColor
// <- support.class

enum Foo1 { case Value }
// <- keyword.entity
//   ^ support.class
//   ^ entity.name.type
enum Foo2 : String { case Value }
// <- keyword.entity
//   ^ support.class
//   ^ entity.name.type
//          ^ support.class

enum Foo3 : String {
  case Value
//  ^ keyword.control
}

if foo {}
// <- keyword.control
else {}
// <- keyword.control
for {}
// <- keyword.control
while true {}
// <- keyword.control
//    ^ constant
switch foo { case .Bar: }
// <- keyword.control
//           ^ keyword.control
break
// <- keyword.control
return
// <- keyword.control
case 0..0
// <- keyword.control
//   ^ constant.numeric
//    ^ keyword.operator
//      ^ constant.numeric
continue
// <- keyword.control
default
// <- keyword.control

enum Foo4
// <- keyword.entity
//   ^ support.class
enum Foo5 : Bar {}
// <- keyword.entity
//   ^ support.class
//          ^ support.class
struct Foo6
// <- keyword.entity
//     ^ support.class
struct Foo7 : Bar
//          ^ -invalid
//            ^ -invalid
//            ^ support.class
class Foo8
// <- keyword.entity
//    ^ support.class
class Foo9 : Bar {}
// <- keyword.entity
//    ^ support.class
//           ^ support.class
protocol Foo10
// <- keyword.entity
//       ^ support.class
protocol Foo11 : Bar {}
// <- keyword.entity
//       ^ support.class
//               ^ support.class
extension Foo12
// <- keyword.entity
//        ^ support.class
extension Foo13 : Bar
// <- keyword.entity
//        ^ support.class
//              ^ keyword.operator
//                ^ support.class

func foo()
//   ^ variable.function
class func foo()
//   <- meta.function
//   <- storage.type.function
//    ^ storage.type.function

func foo() { foo }
//   ^ variable.function
//       ^ meta.function


func foo(a, b: String) { foo }
//   ^ variable.function
//       ^ meta.function
//          ^ variable.parameter

"foo"
// <- string
// <- string.quoted

"foo\"" foo
// <- string
//  ^ constant.character.escape
//   ^ constant.character.escape
//    ^ string
//      ^ -string

".foo"
// <- string
//^ string
//   ^ string

"foo \(bar + (foo * bar))"
// <- string
//   ^ punctuation.section
//                      ^ punctuation.section
//     ^ -string
//                     ^ -punctuation.section

a = (.Foo(.bahr))
//    ^ constant.language.enum
//         ^ constant.language.enum

.Foo+.Bar
 // <- constant.language.enum
//  ^ -constant.language.enum
//    ^ constant.language.enum

a.Foo + a?.bar()
// <- -constant.language.enum
//^ -constant.language.enum
//         ^ -constant.language.enum
