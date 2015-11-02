.assembly extern mscorlib {}

.assembly LoopUsingIL
{
    .ver 1:0:0:0
}

.module LoopUsingIL.exe

.namespace ILStudies
{
  .class public LoopUsingIL extends [mscorlib]System.Object
  {
    .method static void main() cil managed
    {
      .maxstack 3
      .entrypoint

      ldstr "Please, enter your first value: "
      call void [mscorlib]System.Console::WriteLine(string)
      call string [mscorlib]System.Console::ReadLine()
      call int32 [mscorlib]System.Int32::Parse(string)

      ldstr "Please, enter your second value: "
      call void [mscorlib]System.Console::WriteLine(string)
      call string [mscorlib]System.Console::ReadLine()
      call int32 [mscorlib]System.Int32::Parse(string)

      ldstr "The result is: "
      call void [mscorlib]System.Console::WriteLine(string)

      call int32 ILStudies.LoopUsingIL::SumBetween(int32, int32)
      call void [mscorlib]System.Console::WriteLine(int32)

      ret
    }

    .method public static int32 SumBetween(int32, int32) cil managed
    {
      .maxstack 2
  		.locals init (int32, int32)
  		// initialising two variables (counter and the result)

  		ldarg.0
  		stloc.0 // result = lower

  	  Loop:
  		  ldloc.0
  		  ldarg.1
  		  bgt Done // if (i > higher)

  		ldloc.0
  		ldloc.1
  		add
  		stloc.1 // result += i

  		ldloc.0
  		ldc.i4.1
  		add
  		stloc.0 // i++

  		br.s Loop

  	  Done:
  		  ldloc.1
  		  ret // return result;
    }
  }
}
