// ilasm hello.il /exe /optimize /output:out/hello.exe

.assembly extern System.Private.CoreLib
{
    .publickeytoken = (7C EC 85 D7 BE A7 79 8E)
    .ver 5:0:0:0
}

.assembly hello
{
    .custom instance void [System.Private.CoreLib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 )
    .hash algorithm 0x00008004
    .ver 0:0:0:0
}

.module sample.exe
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003 // WINDOWS_CUI
.corflags 0x00000001 //  ILONLY

.class public auto ansi beforefieldinit Program extends [System.Private.CoreLib]System.Object
{
    .method public .method public hidebysig static void Main(string[] args) cil managed
    {
        .entrypoint
        .maxstack  8
        IL_0000: nop
        IL_0001: ldstr "Hello World!"
        IL_0006: call void [System.Private.CoreLib]System.Console::WriteLine(string)
        IL_000b: nop
        IL_000c: ret
    }

    .method public hidebysig specialname rtspecialname instance void .ctor() cil managed
    {
        .maxstack 8
        IL_0000: ldarg.0
        IL_0001: call instance void [System.Private.CoreLib]System.Object::.ctor()
        IL_0006: ret
    }
}
