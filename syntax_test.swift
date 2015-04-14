/// SYNTAX TEST "Packages/SwiftSyntax/SwiftSyntax.sublime-syntax"

// comment
/// ^ comment.line

// MARK: testing!
/// ^ comment.line
///      ^ meta.toc-list


/* comment */
/// ^comment.block
/* 000 */
/// ^comment.block
/// ^ comment - constant
000 /* "string" */
/// <- -comment
///     ^comment.block
///     ^-string

true
/// <- constant.language
/// <- constant.language.true
false
/// <- constant.language
/// <- constant.language.false
nil
/// <- constant.language
/// <- constant.language.nil

1.1  100.001
/// <- constant.numeric
/// <- constant.numeric.float
///  ^ constant.numeric
/// ^ source.swift
100
/// <- constant.numeric
/// <- constant.numeric.decimal
1_000_000
///  ^ constant.numeric.decimal
0xDEADBEEF
/// <- constant.numeric.hexadecimal
/// ^ constant.numeric.hexadecimal
0xGGGGG
/// ^ -constant.numeric.hexadecimal
0o12345670
/// <- constant.numeric.octal
/// ^ constant.numeric.octal
0o8888
/// ^ -constant.numeric.octal
0b01010110101
/// <- constant.numeric.binary
/// ^ constant.numeric.binary
0b22222
/// ^ -constant.numeric.binary

if { /**/ }
/// <- keyword.control

if a || b
/// <- keyword
///  ^ keyword.operator

public func foo
/// <- storage.modifier
///    ^ storage.type
///    ^ storage.type.function
///         ^ variable
///         ^ entity.name.function

self
/// <- keyword.variable
super
/// <- keyword.variable

Color
/// <- support.class
UIColor
/// <- support.class

enum Foo { case Value }
/// <- keyword.entity
///  ^ support.class
///  ^ entity.name.type
enum Foo : String { case Value }
/// <- keyword.entity
///  ^ support.class
///  ^ entity.name.type
///        ^ support.class

enum Foo : String {
  case Value
}

func foo()
///  ^ variable.function
class func foo()
///  <- meta.function
///  <- storage.type.function
///   ^ storage.type.function

func foo() { foo }
///  ^ variable.function
///      ^ meta.function


func foo(a, b: String) { foo }
///  ^ variable.function
///      ^ meta.function

"foo"
/// <- string
/// <- string.quoted

"foo\"" foo
/// <- string
/// ^ constant.character.escape
///  ^ constant.character.escape
///   ^ string
///     ^ -string

"foo \(bar + (foo * bar))"
/// <- string
///  ^ punctuation.section
///                     ^ punctuation.section
///    ^ -string
///                    ^ -punctuation.section
