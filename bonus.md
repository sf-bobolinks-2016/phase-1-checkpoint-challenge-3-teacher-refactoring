# Super Crazy Bonus Release

Edit this file to answer the following questions. Give examples. You may need to do a bit of research. :)

1. Why is Hash.fetch useful?
  It allows you to set a default value in the event that a value for that key(instance variable) does not exist. When you have a lot of attributes, its faster
  than having to make sure you have a valid entry for each field.

2. What is the disadvantage of single inheritance, and what's a possible solution to that problem?
  This is an issue with the way ruby's scope works. You can only inherit from one
  class, so you can't connect things through inheritance that dont share a "common ancestor('is_a' relationship)". The Ruby fix for this is to use modules which are containers of behavior you can include in any class.

3. Why are these classes initialized with an options hash?
  So that they can have optional attribute values (the rspec test for teach is an example- the teacher instance is created without providing a phase value )

4. What is the purpose of the private keyword in a class? What does it protect you from and why is that valuable?
Private is used to protect methods in a class from having a public interface; they are not able to be accessed from outside of the class

5. Why are concepts like encapsulation, single responsibility, and abstraction important? Now that you've been programming for a while, have you seen any advantages for yourself, or can you imagine them in the future?
  The more you break your methods up into single responsibility the easier it is to debug problems with your code. It also makes it easier for other programmers to come in and understand whats going on.
