using System;

namespace Practical2
{
    // Interface
    interface IPayroll
    {
        void CalculateSalary();
    }

    // Base Class
    class Employee
    {
        protected int empId;
        protected string empName;
        protected double basicSalary;

    //Constructor
        public Employee(int id, string name, double salary)
        {
            empId = id;
            empName = name;
            basicSalary = salary;
        }

        public virtual void Display()
        {
            Console.WriteLine("\nEmployee ID   : " + empId);
            Console.WriteLine("Employee Name : " + empName);
        }
    }

    // Derived Class (Inheritance)
    class PermanentEmployee : Employee, IPayroll
    {
        double totalSalary;

        public PermanentEmployee(int id, string name, double salary)
            : base(id, name, salary)
        {
        }
        // Interface Method
        public void CalculateSalary()
        {
            totalSalary = basicSalary + (basicSalary * 0.20);
        }
        // Method Overriding (polymorphism)
        public override void Display()
        {
            base.Display();
            Console.WriteLine("Basic Salary  : " + basicSalary);
            Console.WriteLine("Total Salary  : " + totalSalary);
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            int id;
            string name;
            double salary;

            Console.Write("Enter Employee ID: ");
            id = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter Employee Name: ");
            name = Console.ReadLine();

            Console.Write("Enter Basic Salary: ");
            salary = Convert.ToDouble(Console.ReadLine());

            PermanentEmployee emp = new PermanentEmployee(id, name, salary);

            emp.CalculateSalary();

            emp.Display();

            Console.ReadKey();
        }
    }
}