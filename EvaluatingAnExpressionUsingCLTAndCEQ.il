.assembly extern mscorlib {}

.assembly EvaluatingAndExpressionUsingCLTAndCEQ
{
  .ver 1:0:0:0
}

.module EvaluatingAndExpressionUsingCLTAndCEQ.exe

.namespace ILStudies
{
  .class public EvaluateClass extends [mscorlib]System.Object
  {
    .method static void main() cil managed
    {
      .maxstack 4
      .entrypoint

      ldstr "Is the first value greater than the second one? "
      call void [mscorlib]System.Console::WriteLine(string)

      ldstr "Please, enter your first value: "
      call void [mscorlib]System.Console::WriteLine(string)
      call string [mscorlib]System.Console::ReadLine()
      call int32 [mscorlib]System.Int32::Parse(string)

      ldstr "Please, enter your second value: "
      call void [mscorlib]System.Console::WriteLine(string)
      call string [mscorlib]System.Console::ReadLine()
      call int32 [mscorlib]System.Int32::Parse(string)

      call bool ILStudies.EvaluateClass::Evaluate(int32, int32)

      brtrue.s Value1IsGreaterThanValue2
        ldstr "The result of this evaluation is: false"
        call void [mscorlib]System.Console::WriteLine(string)
        br.s Done

      Value1IsGreaterThanValue2:
        ldstr "The result of this evaluation is: true"
        call void [mscorlib]System.Console::WriteLine(string)

      Done:
        ldstr "Thank you, your evaluation is finished!"
        call void [mscorlib]System.Console::WriteLine(string)

      ret
    }

    .method static bool Evaluate(int32, int32)
    {
      .maxstack 2
      .locals init ([0] bool result)

      ldarg.0
      ldarg.1

      clt //Push 1 (of type int32) if value1 < value2, else push 0.

      ldc.i4.0

      ceq //Push 1 (of type int32) if value1 equals value2, else push 0.

      ret

    }
  }
}
