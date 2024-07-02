# Student Roster Bash Script

## Overview

This Bash script, `roster.sh`, manages a simple student roster. The script allows users to add new students, display student information, list all students, remove a specific student, and clear the entire roster.

## Goal

The primary goal of this lab is to get familiar with Bash scripting and its various functionalities. 

## Features

- **Add Entry:** Add a new student to the roster with a name and email address.
- **Display Entry:** Retrieve and display the name and email address of a specific student.
- **List Entries:** Display all entries in the student roster.
- **Remove Entry:** Remove a specific student from the roster.
- **Clear Roster:** Clear all entries in the student roster.

## Script Usage

The `roster.sh` script can be used with the following commands:

- `./roster.sh new name email` - Adds an entry to the student roster.
- `./roster.sh name` - Displays the name and email address associated with that name.
- `./roster.sh list` - Displays every entry in the student roster. If the roster is empty, it displays “roster is empty”.
- `./roster.sh rm name` - Deletes the entry associated with that name.
- `./roster.sh clear` - Deletes the entire roster.

## Skills Highlighted

- **File Manipulation:** Creating, reading, and writing to files.
- **String Operations:** String comparison, concatenation, and pattern matching.
- **Conditional Statements:** Using if-else conditions to manage different script operations.
- **Looping Constructs:** Using loops to iterate through entries in the roster.
- **Command-Line Arguments:** Handling and processing command-line arguments to control script behavior.
