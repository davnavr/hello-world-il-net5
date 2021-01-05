
.assembly extern System.Private.CoreLib as mscorlib
{
    .publickeytoken = (7C EC 85 D7 BE A7 79 8E)
    .ver 5:0:0:0
}

.assembly hello
{
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = (01 00 08 00 00 00 00 00)
    .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = (
        // ".NETCoreApp,Version=v5.0"
        01 00 18 2e 4e 45 54 43 6f 72 65 41 70 70 2c 56
        65 72 73 69 6f 6e 3d 76 35 2e 30 01 00 54 0e 14
        46 72 61 6d 65 77 6f 72 6b 44 69 73 70 6c 61 79
        4e 61 6d 65 00
    )

    .hash algorithm 0x00008004
    .ver 0:0:0:0
}

.module hello.exe
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003 // WINDOWS_CUI
.corflags 0x00000001 //  ILONLY

.class public auto ansi beforefieldinit Program extends [mscorlib]System.Object
{
    .method public hidebysig static void Main(string[] args) cil managed
    {
        .entrypoint
        .maxstack  8
        IL_0000: nop
        IL_0001: ldstr "Hello World!"
        IL_0006: call void [mscorlib]System.Console::WriteLine(string)
        IL_000b: nop
        IL_000c: ret
    }

    .method public hidebysig specialname rtspecialname instance void .ctor() cil managed
    {
        .maxstack 8
        IL_0000: ldarg.0
        IL_0001: call instance void [mscorlib]System.Object::.ctor()
        IL_0006: ret
    }
}
