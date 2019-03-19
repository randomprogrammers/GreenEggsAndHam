using System;

namespace GreenEggsAndHam
{
    public class IAmSam
    {
        private int RepeatNum { get; }
    
        public IAmSam(int num)
        {
            RepeatNum = num;
        }
        public void Proclaim()
        {
            var num = RepeatNum;

            while (num >= 0)
            {
                Console.WriteLine("I am Sam.");
                num -= 1;
            }
        }
    }
}
