using System;
using System.Collections.Generic;
using System.Text;

public abstract class TextInput
{
    protected List<string> _characters = new List<string>();

    public virtual void Add(char c)
    {
       
    }

    public virtual string GetValue()
    {
        StringBuilder sEntireContents = new StringBuilder();

        foreach(string s in _characters)
        {
            sEntireContents.Append(s);
        }
        return sEntireContents.ToString();
    }

}

public class NumericInput: TextInput
{
    public override void Add(char c)
    {
        if (Char.IsDigit(c))
        {
            _characters.Add(c.ToString());
        }
    }

}

public class UserInput
{
    /*public static void Main(string[] args)
    {
        TextInput input = new NumericInput();
        input.Add('1');
        input.Add('a');
        input.Add('0');
        Console.WriteLine(input.GetValue());

        Console.WriteLine("Press any key to continue . . .");
        Console.ReadLine();
    }*/
}