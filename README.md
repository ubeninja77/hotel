# Hotel

## Learning Goals

Reinforce and practice all of the Ruby and programming concepts we've covered in class so far:
- Design a system using object-oriented principles
- Create and instantiate classes with attributes
- Create class and instance methods within our classes
- Write pseudocode and create tests to drive the creation of our code

This is a [stage 3](https://github.com/Ada-Developers-Academy/pedagogy/blob/master/rule-of-three.md), individual project.


## Introduction

Our company has been contracted to build a booking system for a small hotel. This system will be used by employees who manage bookings and booking data, and will not be available to the general public.

This system will have two parts: a user interface that runs in the terminal, and a module full of business logic, classes and methods that track which rooms are reserved, and at what dates.

We should **not** build a CLI for this project.

Instead, we will use tests to verify that this part of the system works as intended.

### Project Expectations

This project is both a culmination of our Intro to Ruby unit and our first stage 3 project. This means the requirements are more open-ended and ambiguous than previous projects you have worked on. This is intentional. You will be expected to:

- Make decisions on how to structure your classes and methods
- Ask questions when you need clarification
- Understand that the way you implement something may be different than the way your neighbor implements it

**It is possible you will not be able to complete all requirements.** The three waves are organized by difficulty and relevance to the learning goals, and should be tackled in order.

## Getting Started

We will use the same project structure we used for the previous project. Classes should be in files in the `lib` folder, and tests should be in files in the `spec` folder.

1. Fork this repository in GitHub
1. Clone the repository to your computer
1. Open a terminal and run the `guard` command from within the project's root directory (where the `Guardfile` is).
1. Create a test to check the instantiation of one of your object types (**RED**)
1. Create the class for the object tested in the step above (**GREEN**)
1. Use `git add`, `commit` and `push` commands to push your initial code to GitHub

## Process Requirements

You should use the following process as much as possible:

1. Write pseudocode
1. Write test(s)
1. Write code
1. Refactor
1. Commit

Your git commit history should provide a clear description of how your code developed, letting the reader know what changed when and why. Making frequent, small commits is essential!

### Wave Zero: In-Class Design Activity

Before starting work on the functional requirements, create a first draft of your project's design in the in-class instructor-led activity.

## Functional Requirements

### Wave One: Tracking Reservations

In this wave, write the functionality for the system to track valid reservations, so that a user of the hotel system can make and find valid bookings for their hotel.

Remember: Your job is to only build the classes that store information and handle business logic, and the tests to verify they're behaving as expected. Building a user interface is not part of this project!

#### User Stories

- As a user of the hotel system...
  - I can access the list of all of the rooms in the hotel
  - I can reserve a room for a given date range, so that I can make a reservation
  - I can access the list of reservations for a specific date, so that I can track reservations by date
  - I can get the total cost for a given reservation
  - I want a [StandardError](https://ruby-doc.org/core-2.5.0/StandardError.html) raised when an invalid date range is provided, so that I can't make a reservation for an invalid date range

#### Details

- The hotel has 20 rooms, and they are numbered 1 through 20
- Every room is identical, and a room always costs $200/night
- The last day of a reservation is the checkout day, so the guest should not be charged for that night
- For this wave, any room can be reserved at any time, and you don't need to check whether reservations conflict with each other (this will come in wave 2!)

#### Hints

- You might want to investigate [Ruby's `Date` gem](https://ruby-doc.org/stdlib/libdoc/date/rdoc/Date.html).

### Wave Two: Room Availability

#### User Stories

- As a user of the hotel system...
  - I can view a list of rooms that are not reserved for a given date range, so that I can see all available rooms for that day
  - I can reserve an available room for a given date range
  - I can see an exception raised if I try to reserve a room that is unavailable for a given day, so that I cannot make two reservations for the same room that overlap by date

#### Details

- A reservation is allowed start on the same day that another reservation for the same room ends

### Wave Three: Blocks of Rooms

If you are not familiar with what a block of hotel rooms, here is a brief description:

> A Block Booking refers to a group of rooms set aside for a specific group of customers for a set period of time.
>
> Room blocks are commonly created for large events like weddings or conventions. A number of rooms are set aside, and are made available for reservation by certain customers at a discounted rate. These rooms are not available to be reserved by the general public.

#### User Stories

- As an administrator, I can create a block of rooms
    - To create a block you need a date range, collection of rooms and a discounted room rate
    - The collection of rooms should only include rooms that are available for the given date range
    - If a room is set aside in a block, it is not available for reservation by the general public, nor can it be included in another block
- As an administrator, I can check whether a given block has any rooms available
- As an administrator, I can reserve a room from within a block of rooms

#### Constraints

- A block can contain a maximum of 5 rooms
- When a room is reserved from a block of rooms, the reservation dates will always match the date range of the block
- All of the availability checking logic from Wave 2 should now respect room blocks as well as individual reservations

## Non-Functional Requirements

### Testing Requirements

- Utilize the spec helper file
- Run tests automatically whenever files are added or changed using the `guard` command
- The final project submission should have **95% code coverage** using `simplecov`

## Optional Enhancements

You should not be working on these (or even thinking about them!) until you have fully completed wave 3.

<details>
  - Add functionality that allows for setting different rates for different rooms
  - Read and write CSV files for each piece of data that your system is storing
  - Create a CLI to interact with your booking system. Put all of this code in a file `main.rb` that is separate from your `lib` code. Working on this optional enhancement should not break the other requirements of this project
</details>


## Before Submission: `refactors.txt` Requirement

Usually by the end of a project, we can look back on what we made with a clearer understanding of what we actually needed. In industry, this is a great time to do a refactor of some sort. For this project however, you're off the hook... for the moment. We will be revisiting our Hotel project submissions later on on the course, and you may want to make some changes at that point.

In order to keep track of your current thoughts about design refactoring, as part of project submission, please log down design thoughts with the following process:

1. Create a new file in the project called `refactors.txt`
1. In that file, make a short list of the changes that you could make, such as naming conventions, etc.
    - These notes will be used by you in a few weeks, so make sure that they are detailed enough that someone else could understand your thinking and follow your directions
    - Commit and push this file to your project repo
1. **Do not make any further changes to your code at this time**

## What we're looking for
You can find what instructors will be looking for in the [feedback](feedback.md) markdown document. 
