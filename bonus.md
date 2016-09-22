# Super Crazy Bonus Release

Edit this file to answer the following questions. Give examples. You may need to do a bit of research. :)

1. Why is Hash.fetch useful?
It allows you to get appropriate keyword variables if they exist. It allows you to make default values if they don't.

2. What is the disadvantage of single inheritance, and what's a possible solution to that problem?
Sometimes, you don't want a method to behave the certain way for subclasses. You can easily override them 
at the child class level or you can add additional parameters for conditionals in the parent class level.
In the case of set_performance_rating method of both types of teachers, the latter seemed more efficient.
In the case of the set_phase method for the student class, overriding was more beneficial.

3. Why are these classes initialized with an options hash?
Keyword variables give us more flexibility when creating an object with many parameters.

4. What is the purpose of the private keyword in a class? What does it protect you from and why is that valuable?
It negates permission to child classes and instance objects from having access to variables, especially references to mutable data types like Hashes and Arrays

5. Why are concepts like encapsulation, single responsibility, and abstraction important? Now that you've been programming for a while, have you seen any advantages for yourself, or can you imagine them in the future?

Single responsibility is essential for maintainable code. No one wants to see an IF-ELSE clause 3 levels deep
Likewise, no one wants the same code copy and pasted multiple times. If you need to copy/paste, you need to create a method for that task.
