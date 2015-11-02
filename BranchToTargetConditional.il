.assembly extern mscorlib {}

.assembly BranchToTargetConditional
{
	.ver 1:0:0:0
}

.module BranchToTargetConditional.exe

.namespace ILStudies
{
	.class public HelloWorldClass
		extends [mscorlib]System.Object
	{
		.method static void SayHello() cil managed
		{
			.maxstack 4
			.entrypoint

      ldstr "Hello, this is a good exemple of using a conditional branch!"
			call void [mscorlib]System.Console::WriteLine(string)

      ldstr "Please, enter your first number."
      call void [mscorlib]System.Console::WriteLine(string)
      call string [mscorlib]System.Console::ReadLine()
      call int32 [mscorlib]System.Int32::Parse(string)

      ldstr "Second number: "
      call void [mscorlib]System.Console::WriteLine(string)
      call string [mscorlib]System.Console::ReadLine()
      call int32 [mscorlib]System.Int32::Parse(string)

      ble.s BranchWhenFirstNumberIsSmaller
        ldstr "First number was larger than second one"
        call void [mscorlib]System.Console::WriteLine(string)
        br.s done

      BranchWhenFirstNumberIsSmaller:
        ldstr "The first number was less than or equal to the second one"
        call void [mscorlib]System.Console::WriteLine(string)

      done:
        ldstr "Thank you!"
        call void [mscorlib]System.Console::WriteLine(string)

			ret
		}
	}
}
