using Microsoft.Quantum.Simulation.Core;
using Microsoft.Quantum.Simulation.Simulators;


namespace Microsoft.Microsoft_Quantum.Correcting_BitFlip_Errors
{
    class Program
    {
        public static void Pause()
        {
            System.Console.WriteLine("\n\nPress any key to continue...\n\n");
            System.Console.ReadKey();
        }

        static void Main(string[] args)
        {
            #region Setup
            var sim = new QuantumSimulator(throwOnReleasingQubitsNotInZeroState: true);
            #endregion

            #region Parity Check
            CheckBitFlipCodeStateParity.Run(sim).Wait();
            System.Console.WriteLine("Parity check passed successfully!");
            Pause();

            #endregion
        }
    }
}
