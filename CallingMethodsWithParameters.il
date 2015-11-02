.assembly extern mscorlib {}

.assembly CallingMethodsWithParameters
{
    .ver 1:0:0:0
}

.module CallingMethodsWithParameters.exe

.namespace ILStudies
{
  .class public MathUtils
    extends [mscorlib]System.Object
  {
    .method static void main() cil managed
    {
      .maxstack 2
      .entrypoint

      ldstr "Please, enter your first value: "
      call void [mscorlib]System.Console::WriteLine(string)
      call string [mscorlib]System.Console::ReadLine()
      call int32 [mscorlib]System.Int32::Parse(string)

      ldstr "Please, enter your second value: "
			call void [mscorlib]System.Console::WriteLine(string)
			call string [mscorlib]System.Console::ReadLine()
			call int32 [mscorlib]System.Int32::Parse(string)

      call bool ILStudies.MathUtils::FirstIsGreater(int32, int32)
      brfalse.s FirstIsSmaller

      ldstr "The first value is greater than the second one"
			br.s Done

      FirstIsSmaller:
      ldstr "The first value is smaller than the second one"

      Done:
      call void [mscorlib]System.Console::WriteLine(string)

      ret
    }

    .method public static bool FirstIsGreater(int32 x, int32 y) cil managed
		{
			.maxstack 2

			ldarg.0
			ldarg.1

			ble.s FirstIsSmaller
			ldc.i4.1
			ret

		  FirstIsSmaller:
			  ldc.i4.0
        ret
		}
  }
}
