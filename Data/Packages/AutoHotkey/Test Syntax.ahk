/*
 *
 * Sublime Text AutoHotkey Syntax Highlighting Demo
 * - by Flipeador
 *
*/


; Comentario en bloque
/*
    Línea #1 -
    Línea #2 -
*/
Variable := Valor    /* XXX */


; Directivas
#Warn
#NoTrayIcon
#Include <funciones>
#SingleInstance Force


; Operadores, expresiones y números
Foo := (Bar = *Var && Bar2 == Var2) || !Bar = ~Var2 ? 0x101 : 23.48
Exp := new ClassObj(Obj.Var * Obj.Fn(++a, b++, --c, e++))
Exp := -0.2**(34&1) // 2 / 1 << 2 >> 3 - (4 ^ 3)
Exp := (A -= 3) - (B += 4) + (C ~= 5) * (D ^ 7) / (5>=2) // (6<3) - (Z!=Y)
Exp := (Z>>=2) - (Z//=D) * Mod(2, 3) - %fnc%()[2]
Fnc := Func("myfunc")
Fnc := (p1,p2,p3) => p1+p2+p3    ; lambda
Obj := {A: 43, B: 498, (Var): 10.48, H: 0xFF, [1, 2, "ABC"]}


; Cadenas, secuencias de escape y concatenación
Str := "Este es un ejemplo" . " !!!  =D"
Str := 'Este es un ejemplo' . "`r`n"
Str := "`"Este es un ejemplo`""
Str := "Este 'es 'un' ejemplo"
Str := 'Este "es "un" ejemplo'


; Variables y Funciones incorporadas
MsgBox Text, Title . A_UserName, Options
ClipSaved := clipboardall()
Clipboard := ClipSaved
DllCall("DllFile\Func", "UPtr", &Address, "Int", Round(n, 2), "Str", "Hola Mundo!", "Cdecl UShort")


; Otras funciones
My_Function("String", 23 ** 1024, {}, [])

My_Function(Cadena, Valor, Otro*)
{
    Return (Cadena . ": " . Floor(Valor, 2))
}

My_Function2(a := 0xFF, p*) {
    Static A := 0
    Local C := 1
    Return ++A + C
}


; Desreferencia y objetos
Foo := %Bar%
Arr := [value1, value2, ..]
Obj := {key1: value, key2: value
                   , key3: value, ..}


; Propiedades, métodos y clases.
__New()
__Delete()
File.Read(This.Pos + This.base + This.base.Pos)
File.Handle
File.Seek()
File.Pos
File.ReadUChar()
Obj.__Class
Obj.InsertAt()
Obj._NewEnum()
Obj.Method(Extends * 2)
Class ClassName Extends BaseClassName


; Palabras claves, bucles y variables incorporadas.
If (TRUE)
    MsgBox("Este mensaje siempre será mostrado")
Else
    MsgBox("Este mensaje nunca será mostrado")
Loop
    MsgBox("Repetición #" . A_Index)
Switch SwitchValue
{
    Case CaseValue1: Statements1
    Default: Statements2
}

; Etiquetas, teclas y reasignaciones
Label:    ; comentario
#v:: MsgBox("Has presionado Win+V")
CTRL & P:: Suspend(-1)    ; necesario #SuspendExempt
::btw::by the way


; Errores de sintaxis
Var = Value
Str := "Este es un ejemplo
Str := 'Este es un ejemplo
Exp := a ++ b ++x * y++ -- c *** ACos(-1) ||| 1 &&&&& 3
Función, param1, param2
Label :
