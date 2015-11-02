.assembly extern mscorlib {}

.assembly SumValues
{
  .ver  1:0:0:0
}

.module SumValues.exe

.namespace ILStudies
{
  .class public MathUtils extends [mscorlib]System.Object
  {
    .method static void main() cil managed
    {
      .maxstack 4
      .entrypoint

      ldstr "Please, enter your first value: "
      call void [mscorlib]System.Console::WriteLine(string)
      call string [mscorlib]System.Console::ReadLine()
      call int32 [mscorlib]System.Int32::Parse(string)

      ldstr "Please, enter your second value: "
      call void [mscorlib]System.Console::WriteLine(string)
      call string [mscorlib]System.Console::ReadLine()
      call int32 [mscorlib]System.Int32::Parse(string)

      ldstr "The result of this sum is: "
      call void [mscorlib]System.Console::WriteLine(string)

      call int32 ILStudies.MathUtils::SumValues(int32, int32)
      call void [mscorlib]System.Console::WriteLine(int32)

      ret
    }

    .method static int32 SumValues(int32, int32)
    {
      .maxstack 2
      .locals init ([0] int32 result)

      ldarg.0
      ldarg.1

      add

      stloc.0
      ldloc.0

      ret
    }
  }
}
