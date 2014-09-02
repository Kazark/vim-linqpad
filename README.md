# LinqPad for Vim

This plugin for Vim uses LinqPad's console runner to evaluate C# expressions, so
you will need that program installed. So far it has one command, `:Linqeval`,
which is used like this:

    :Linqeval (new List<int> {1, 2, 3}).Select(x => x*x)

which will echo this:

    [
      1,
      4,
      9
    ]
