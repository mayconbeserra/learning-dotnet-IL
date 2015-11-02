.assembly extern mscorlib {}

.assembly BranchToTargetConditionalEquals
{
	.ver 1:0:0:0
}

.module BranchToTargetConditionalEquals.exe

.namespace ILStudies
{
	.class public HelloWorldClass
		extends [mscorlib]System.Object
	{
		.method static void SayHello() cil managed
		{
			.maxstack 4
			.entrypoint

      ldstr "Hello, this is a good exemple of using a conditional branch if the first one is equals the second one!"
			call void [mscorlib]System.Console::WriteLine(string)

      ldstr "Please, enter your first number."
      call void [mscorlib]System.Console::WriteLine(string)
      call string [mscorlib]System.Console::ReadLine()
      call int32 [mscorlib]System.Int32::Parse(string)

      ldstr "Now, enter your second number: "
      call void [mscorlib]System.Console::WriteLine(string)
      call string [mscorlib]System.Console::ReadLine()
      call int32 [mscorlib]System.Int32::Parse(string)

      beq.s BranchWhenFirstNumberIsEqualsTheSecondOne
        ldstr "First number isn't equals the second one"
        call void [mscorlib]System.Console::WriteLine(string)
        br.s done

      BranchWhenFirstNumberIsEqualsTheSecondOne:
        ldstr "The first number is equals the second one"
        call void [mscorlib]System.Console::WriteLine(string)

      done:
        ldstr "Thank you!"
        call void [mscorlib]System.Console::WriteLine(string)

			ret
		}
	}
}
