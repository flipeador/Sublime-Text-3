/*
 *
 * Sublime Text AutoHotkey Syntax Highlighting Demo
 * - by Flipeador
 *
*/


; Comentario normal
/*
    Comentario en bloque
*/


; Directivas
#Include Functions.ahk
#SingleInstance Force
#NoTrayIcon


; Operadores, expresiones y números
Foo := (Bar = Var && Bar2 == Var2) || !Bar = ~Var2 ? 0x101 : 23.48
Exp := New ClassObj(Obj.Var * Obj.Fn(++a, b++, --c, e++))
Exp := -0.2**(34&1) // 2 / 1 << 2 >> 3 - (4 ^ 3)
Exp := (A -= 3) - (B += 4) + (C ~= 5) * (D ^ 7) / (5>=2) // (6<3) - (Z!=Y)
Exp := (Z>>=2) - (Z//=D) * Mod(2, 3) - %fnc%()[2]
Obj := {A: 43, B: 498, (Var): 10.48, H: 0xFF, [1, 2, "ABC"]}


; Cadena. Secuencia de escape. Concatenation
Var := "This is a " . "test`n"
Var := 'This is a ' . 'test`n'


; Comandos. Funciones incorporadas
MsgBox vText, "Title", 0
Clipboard := clipboardall()
DllCall("DllFile\Func", "Ptr", &Address, "Str", "Hello World!", "Cdecl UShort")


; Funciones del usuario
My_Function("String", 23 ** 1024, {}, [])

My_Function(Cadena, Valor, Otro*)
{
    Return (Cadena . ": " . Floor(Valor, 2))
}

My_Function2(p*) {
    Static A := 0
    Return (++A)
}

; Desreferencia
Foo := %Bar%

; Propiedades. Métodos. Clases.
__New()
__Delete()
File.Read(This.Pos + This.base + This.base.Pos)
File.__Handle
File.Seek()
File.Pos
File.ReadUChar()
Obj.__Class
Obj.InsertAt()
Obj.__NewEnum()
Obj.Method(Extends * 2)
Class ClassName Extends BaseClassName

; Palabras claves. Variables incorporadas.
If (TRUE)
    MsgBox("Este mensaje siempre será mostrado")
Else
{
    MsgBox("Este mensaje nunca será mostrado")
    ++A
}
Loop (Var * 2)
    MsgBox("Repetición #" . A_Index)

If ((!FALSE) && (TRUE) AND (TRUE))
{
    ; Teclas y botones
    SendInput("Texto{F1}")
    ; Error de sintaxis
    MyVar = 0xF . 0x . 0. .0 . 0.4 . "This is a test%
}

; Etiquetas. Hotkey. hotstring
Label:
#v::MsgBox("Has presionado Win+V")
::btw::by the way
Return
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    .
