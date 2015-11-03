.assembly extern mscorlib {}

.assembly extern ConstructorMethods
{
  .ver 1:0:0:0
}

.assembly ConstructorMethodsClient
{
  .ver 1:0:0:0
}

.module ConstructorMethodsClientModule.exe

.namespace ILStudies
{
  .class EntryPoint extends [mscorlib]System.Object
  {
    .method static void main() cil managed
    {
      .maxstack 2
      .locals init ( valuetype [ConstructorMethods]ILStudies.MyClassWithConstructor)
      .entrypoint

      ldloca.s 0
      ldc.i4.s 10
      call instance void [ConstructorMethods]ILStudies.MyClassWithConstructor::.ctor(unsigned int8)

      ldstr "ChildCount is "
      call void [mscorlib]System.Console::Write(string)

      ldloca.s 0
      call instance unsigned int8 [ConstructorMethods]ILStudies.MyClassWithConstructor::get_ChildCount()
      call void [mscorlib]System.Console::Write(int32)

      ret
    }
  }
}
