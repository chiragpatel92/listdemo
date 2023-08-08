# Description

- Load ListWidget and run the app.
- Increment first list item by clicking it 3 times. Scroll to bottom and then scroll to top, the
  count will get reset

# Functional/Product Requirement

- There should be 100 list items, each should be set at 0 initially and user can increment its
  count.
- The count incremented by user should be persisted when he scrolls the list.

# Task:

- Solve the functional requirement.
- Review this file from Code Review perspective, list the issues and what changes should be made,
  perform the changes to the file.
- Think of it as a intern checked in this code and as a senior has to code review and fix the code
  from implementation perspective to make it correct and efficient.
- Send the fixed file back to the recruiter.


//Change start from here below i have mentioned//

# Solution:

Loom video link => https://www.loom.com/share/09d68b0f478944c58e5a613e1b859db3?t=196&sid=6c47b1c7-a891-4e41-92c3-bed8d973e685

I modified the code and fixed the problem Which you mentioned issue in this readme file.

here i have remove for loop which you use because 
when widget is build again so that for loop is call again 
and then counter value is reset 

VoidCallback method type =>
This is useful if we only want to notify the Parent Widget

And i have mentioned array list type is integer and on + button click on time
counter value change as per index


