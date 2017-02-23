using System;
using System.Linq;
using System.Threading.Tasks;

namespace PskillsConsoleApplication
{
    
    public class CalculateEvenInts
    {
        /*static void Main(string[] args)
        {
            int[] numbersToCalc = new int[] { 1, 4, 2, 7, 9 };

            var total = TotalAllEvenNumbers(numbersToCalc); //ComputeArray(numbersToCalc);

            Console.WriteLine(total);

            Console.WriteLine("Calculate total all the values that are even numbers");
            Console.ReadLine();
        }*/

        //Given an array of ints, write a C# method to total all the values that are even numbers.

        public static int ComputeArray(int [] numbers)
        {
            int total = 0;

            for(int i = 0; i< numbers.Length;i++)
            {
                int curNum = numbers[i];

                if(curNum % 2 == 0)
                {
                    total += curNum;
                }
            }

            return total;
        }

        //Use linq
        public static long TotalAllEvenNumbers(int[] intArray)
        {
            return intArray.Where(i => i % 2 == 0).Sum(i => (long)i);
        }


        private static string result;

        static void Main()
        {
            SaySomething();
            Console.WriteLine(result);
            Console.ReadLine();
        }

        static async Task<string> SaySomething()
        {
            await Task.Delay(5);
            result = "Hello world!";
            return "Something";
        }


    }


}