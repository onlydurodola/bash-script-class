#!/usr/bin/env bash

# Colour definitions
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
NC="\033[0m"

print_colour() {
    echo -e "${1}${2}${NC}"
}

show_system_info() {
    clear
    print_colour "$BLUE" "=== SYSTEM INFORMATION ==="
    echo
    echo "Hostname : $(hostname)"
    echo "Kernel   : $(uname -r)"
    echo "Uptime   : $(uptime -p)"
    echo "Date     : $(date)"
    echo
    read -p "Press Enter to continue..."
}

show_disk_usage() {
    clear
    print_colour "$GREEN" "=== DISK USAGE ==="
    echo
    df -h | head -10
    echo

    df -h | tail -n +2 | while read -r line; do
        use_percent=$(echo "$line" | awk '{print $5}' | sed 's/%//')
        fs=$(echo "$line" | awk '{print $1}')

        if [[ $use_percent -gt 80 ]]; then
            print_colour "$RED" "Warning: $fs is ${use_percent}% full"
        fi
    done

    echo
    read -p "Press Enter to continue..."
}

monitor_processes() {
    clear
    print_colour "$YELLOW" "=== MONITOR PROCESSES ==="
    echo
    echo "Top processes by CPU usage:"
    ps aux --sort=-%cpu | head -6
    echo
    echo "Top processes by Memory usage:"
    ps aux --sort=-%mem | head -6
    echo
    read -p "Press Enter to continue..."
}

create_user() {
    clear
    print_colour "$BLUE" "=== CREATE USER ==="
    echo

    read -p "Enter username: " username
    read -p "Enter full name: " fullname

    if [[ -z "$username" || -z "$fullname" ]]; then
        print_colour "$RED" "Error: Username and full name are required"
    else
        echo
        print_colour "$GREEN" "Creating user '$username'"
        echo "Username : $username"
        echo "Full name: $fullname"
        # useradd -c "$fullname" "$username"   # Uncomment to actually create user
    fi

    echo
    read -p "Press Enter to continue..."
}

show_menu() {
    clear
    print_colour "$GREEN" "=== SYSTEM ADMIN MENU ==="
    echo "1) Show system info"
    echo "2) Check disk usage"
    echo "3) Monitor processes"
    echo "4) Create user"
    echo "5) Exit"
    echo
}

main() {
    while true; do
        show_menu
        read -p "Enter your choice: " choice
        case $choice in
            1) show_system_info ;;
            2) show_disk_usage ;;
            3) monitor_processes ;;
            4) create_user ;;
            5)
                print_colour "$GREEN" "Good Bye!"
                sleep 1
                exit 0
                ;;
            *)
                print_colour "$RED" "Invalid input! Try again."
                sleep 1
                ;;
        esac
    done
}

main
