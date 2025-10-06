Scenario 1: Successful Grade Entry

Given that the teacher "John Smith" is logged into the system
And he accesses the grade entry screen for the "Mathematics" subject
And there is a student named "Mary Oliveira" with the ID "12345" in the class
When the teacher enters the grade "8.5" for the student "Mary Oliveira"
And clicks the "Save" button
Then the grade "8.5" should be correctly associated with the student "Mary Oliveira" in the "Mathematics" subject
And the system should display a success message, such as "Grade entered successfully."
And the grade should be visible in the student's record.

Scenario 2: Attempt to Enter an Invalid Grade

Given that the teacher "John Smith" is logged into the system
And he accesses the grade entry screen for the "Mathematics" subject
And there is a student named "Peter Santos" with the ID "67890" in the class
When the teacher enters the grade "-2" (a negative value) for the student "Peter Santos"
And clicks the "Save" button
Then the system should not allow the grade to be entered
And the system should display an error message, such as "The grade must be a value between 0 and 10."
And the grade for the student "Peter Santos" should remain unchanged.


Scenario 3: Editing an Existing Grade
This scenario describes how the system should behave when a teacher needs to correct or update a grade that has already been entered.

Given that the teacher "John Smith" is logged into the system
And he accesses the class's grade history
And the student "Ana Costa" already has a grade of "7.0" in the "History" subject
When the teacher clicks the "Edit" option next to "Ana Costa's" grade
And he changes the grade value from "7.0" to "9.5"
And clicks the "Save" button
Then the previous grade ("7.0") should be replaced by the new grade ("9.5") in the student's record
And the system should display a success message, such as "Grade updated successfully."
And the change history (if any) should record that the grade was edited by the teacher "John Smith" at the current date and time.

