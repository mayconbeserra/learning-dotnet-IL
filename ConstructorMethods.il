.assembly extern mscorlib {}

.assembly ConstructorMethods
{
  .ver  1:0:0:0
}

.module ConstructorMethods.dll

.namespace ILStudies
{
  .class public auto sealed MyClassWithConstructor extends [mscorlib]System.ValueType
  {
      .field private unsigned int8 _childCount

      // constructor method
      .method public specialname rtspecialname instance void .ctor()
      {
        ldarg.0
        ldc.i4.s 55
        stfld unsigned int8 ILStudies.MyClassWithConstructor::_childCount
        ret
      }

      // constructor method with parameter
      .method public specialname rtspecialname instance void .ctor(unsigned int8)
      {
        ldarg.0
        ldarg.1
        stfld unsigned int8 ILStudies.MyClassWithConstructor::_childCount
        ret
      }

      .method specialname public instance unsigned int8 get_ChildCount() cil managed
      {
        ldarg.0
        ldfld unsigned int8 ILStudies.MyClassWithConstructor::_childCount
        ret
      }

      .method specialname public instance void set_ChildCount(unsigned int8) cil managed
      {
        ldarg.0
        ldarg.1

        stfld unsigned int8 ILStudies.MyClassWithConstructor::_childCount

        ret
      }

      .property instance unsigned int8 ChildCount()
      {
        .get instance unsigned int8 ILStudies.MyClassWithConstructor::get_ChildCount()
        .set instance void ILStudies.MyClassWithConstructor::set_ChildCount(unsigned int8)
      }

  }
}
