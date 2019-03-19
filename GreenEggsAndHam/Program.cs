using System;

namespace GreenEggsAndHam
{
    class Program
    {
        static void Main(string[] args)
        {
            var sam = new IAmSam(12);
            sam.Proclaim();
            Console.ReadKey();
        }
    }
}
