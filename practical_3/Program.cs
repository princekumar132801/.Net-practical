using System;

namespace practical_3
{
    class Expense
    {
        private int expenseId;
        private string category;
        private double amount;

        // Constructor
        public Expense(int expenseId, string category, double amount)
        {
            this.expenseId = expenseId;
            this.category = category;
            this.amount = amount;
        }

        // Display Method
        public void DisplayExpense()
        {
            Console.WriteLine("\n------ Expense Details ------");
            Console.WriteLine("Expense ID : " + expenseId);
            Console.WriteLine("Category   : " + category);
            Console.WriteLine("Amount     : ₹" + amount);
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Console.Write("Enter Expense ID: ");
                int id = Convert.ToInt32(Console.ReadLine());

                Console.Write("Enter Expense Category: ");
                string category = Console.ReadLine();

                Console.Write("Enter Expense Amount: ");
                double amount = Convert.ToDouble(Console.ReadLine());

                if (amount <= 0)
                {
                    throw new Exception("Expense amount must be greater than zero.");
                }

                Expense expense = new Expense(id, category, amount);

                expense.DisplayExpense();
            }
            catch (FormatException)
            {
                Console.WriteLine("\nInvalid Input! Please enter correct numeric values.");
            }
            catch (Exception ex)
            {
                Console.WriteLine("\nError: " + ex.Message);
            }

            Console.WriteLine("\nPress any key to exit...");
            Console.ReadKey();
        }
    }
}