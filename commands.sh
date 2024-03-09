#!/bin/bash

# Function to add user account

add_user() {

        echo "Enter name of user:"
        read username

        sudo useradd -m $username
        sudo passwd $username

        echo "User $username created successfully"

}
# Function to modify user account

modify_user(){
        echo "enter name of group to create"
        read groupname

        sudo groupadd $groupname
        echo "enter name of user to add in a group"
        read username
        sudo usermod -aG $groupname $username

        echo "user $username added to group $groupname succesfully"
}
# Function to delete user account

delete_user(){

        echo "enter name of user_account to delete"
        read username

        sudo userdel -r $username
        echo "User $username deleted successfully"

}
# Main Menu

echo "Which task do you want to perform:"
echo "1. Add User"
echo "2. Modify User"
echo "3. Delete User"
echo "4. Exit"

echo "Enter your choice:"
read choice

case $choice in
        1) add_user ;;
        2) modify_user ;;
        3) delete_user ;;
        4) exit ;;
        *) echo "Invalid Choice" ;;
esac
