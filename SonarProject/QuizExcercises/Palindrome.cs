using System;
using System.Linq;

namespace QuizExcercises
{
    public class Palindrome
    {
        public static bool IsPalindrome(string word)
        {
            bool isPalindrome = false;

            char[] rev = word.Reverse().ToArray();
            string reverse = new string(rev);

            if(word.ToLower().Equals(reverse.ToLower()))
            {
                isPalindrome = true;
            }

            return isPalindrome;
        }


        /*public static void Main(string[] args)
        {
            Console.WriteLine(Palindrome.IsPalindrome("Deleveled"));
            Console.ReadLine();

        }*/
    }
}
