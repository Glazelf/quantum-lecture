namespace quantum
{
    class Program
    {
        static void Main(string[] args)
        {
            // Create a new quantum simulator
            using (var sim = new QuantumSimulator())
            {
                // Run the quantum program
                var result = HelloQ.Run(sim).Result;
                // Print the result
                System.Console.WriteLine($"Result: {result}");
            }
        }
    }
}