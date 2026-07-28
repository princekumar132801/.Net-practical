using System;

namespace practical_1
{
    class Student
    {
        private int studentId;
        private string studentName;
        private string course;

        // Constructor
        public Student(int id, string name, string courseName)
        {
            studentId = id;
            studentName = name;
            course = courseName;
        }

        // Display Method
        public void Display()
        {
            Console.WriteLine("\n===== Student Admission Details =====");
            Console.WriteLine("Student ID   : " + studentId);
            Console.WriteLine("Student Name : " + studentName);
            Console.WriteLine("Course       : " + course);
        }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            int id;
            string name, course;

            Console.Write("Enter Student ID: ");
            id = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter Student Name: ");
            name = Console.ReadLine();

            Console.Write("Enter Course: ");
            course = Console.ReadLine();

            // Object Creation
            Student s1 = new Student(id, name, course);

            // Display Details
            s1.Display();

            Console.ReadKey();
        }
    }
}