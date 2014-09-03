# LinqPad for Vim

This plugin for Vim uses LinqPad's console runner to evaluate C# expressions, so
you will need that program installed. So far it has two command, `:Linqeval`,
which is used to evaluate an expression, and `:Linqexec`, which is used to
execute a statement.

For example:

    :Linqeval (new List<int> {1, 2, 3}).Select(x => x*x)

which will echo this:

    [
      1,
      4,
      9
    ]

Or:

    :Linqexec DateTime x = null;

which will echo something like this:

    c:\Users\administrator\AppData\Local\Temp\VIA8A47.tmp(2,14) : error CS0037: Cannot convert null to 'System.DateTime' because it is a non-nullable value type
