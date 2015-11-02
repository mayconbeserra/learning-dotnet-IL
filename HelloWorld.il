.assembly extern mscorlib {}

.assembly HelloWorld
{
	.ver 1:0:1:0
}

.module HelloWorld.exe


.namespace ILStudies
{
	.class public HelloWorldClass
		extends [mscorlib]System.Object
	{
		.method static void SayHello() cil managed
		{
			.maxstack 1
			.entrypoint

			ldstr "Hello World!"
			call  void [mscorlib]System.Console::WriteLine(string)
			
			ret
		}
	}
}