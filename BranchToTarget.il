.assembly extern mscorlib {}

.assembly BranchToTarget
{
	.ver 1:0:0:0
}

.module BranchToTarget.exe

.namespace ILStudies
{
	.class public HelloWorldClass
		extends [mscorlib]System.Object
	{
		.method static void SayHello() cil managed
		{
			.maxstack 1
			.entrypoint

      br.s changeTheFlow

			ldstr "First Hello World!"
			call  void [mscorlib]System.Console::WriteLine(string)

      changeTheFlow:

      ldstr "Hey! The first hello world wasn't called \o/"
      call  void [mscorlib]System.Console::WriteLine(string)

			ret
		}
	}
}
