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


ded