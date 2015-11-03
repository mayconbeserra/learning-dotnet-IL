# learning-dotnet-IL

This is my personal project, which is related to my studies applied to intermediate language (https://en.wikipedia.org/wiki/Common_Intermediate_Language).

# How to create the dll or exe file?

Just run in your windows prompt the command "ilasm {ilFileName.il}", after that, it will generate your dll or exe file.

# Code added

+ HelloWorld.il
+ BranchToTarget.il
+ BranchToTargetConditional.il (e.g. if/else)
+ BranchToTargetConditionalEquals.il (e.g. if/else)
+ CallingMethodsWithParameters.il
+ LoopUsingIL.il (e.g. for (int i = lower; i <= higher; i++))
+ SumValues.il (using local variable)
+ EvaluatingAndExpressionUsingCLTAndCEQ (e.g. x >= y)

# Concepts

**Evaluation Stack** is used to hold the local variable or the method argument before they are evaluated. Before the start of every method the evaluation stack is empty and during the execution of the method the CIL instructions adds/removes the items from the evaluation stack , the end result of which is an empty evaluation stack at the end of that method execution.

Instruction that copy values from memory to the evaluation stack are called **Load** and the instruction that copy values from stack back to memory are called **Store**. All the Opcodes starting with **ld** are used for loading the item on the stack and the Opcodes starting with **st** are used for storing the item in the memory. The instruction used for storing the data in memory also result in popping off the item from the stack.

# References

+ https://en.wikipedia.org/wiki/List_of_CIL_instructions
+ http://www.dotnetperls.com/il
+ http://elemarjr.net/2010/07/28/il-101parte-2/
+ http://blogs.msdn.com/b/ericlippert/archive/2011/11/18/why-il.aspx
+ http://www.codeproject.com/Articles/362076/Understanding-Common-Intermediate-Language-CIL
