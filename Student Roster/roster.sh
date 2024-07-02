#!/bin/bash

# Define the roster file
roster_file="roster.txt"

# Check if the roster file exists, and if not, create it
if [ ! -f "$roster_file" ]; then
    touch "$roster_file"
fi

# Function to add a new student entry
add_entry() {
    name="$1"
    email="$2"
    echo "$name:$email" >> "$roster_file"
}

# Function to display a student's information
display_entry() {
    name="$1"
    entry=$(grep "^$name:" "$roster_file")
    if [ -n "$entry" ]; then
        email=$(echo "$entry" | cut -d ':' -f 2)
        echo "Name: $name"
        echo "Email: $email"
    else
        echo "Student not found in roster."
    fi
}

# Function to list all entries in the roster
list_entries() {
    if [ -s "$roster_file" ]; then
        cat "$roster_file"
    else
        echo "roster is empty"
    fi
}

# Function to remove a student entry
remove_entry() {
    name="$1"
    sed -i "/^$name:/d" "$roster_file"
}

# Function to clear the entire roster
clear_roster() {
    > "$roster_file"
}

# Main script logic
case "$1" in
    "new")
        add_entry "$2" "$3"
        ;;
    "list")
        list_entries
        ;;
    "rm")
        remove_entry "$2"
        ;;
    "clear")
        clear_roster
        ;;
    *)
        if [ $# -eq 1 ]; then
            display_entry "$1"
        else
            echo "Usage: ./roster [new name :email | name name | list | rm name | clear]"
            exit 1
        fi
        ;;
esac
