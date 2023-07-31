use std::io::{Write, stdin, stdout};

fn add_numbers(n1: &i32, n2: &i32) -> i32 {
    n1 + n2
}

fn subtract_numbers(n1: &i32, n2: &i32) -> i32 {
    n1 - n2
}

fn multiply_numbers(n1: &i32, n2: &i32) -> i32 {
    n1 * n2
}

fn divide_numbers(n1: &i32, n2: &i32) -> i32 {
    n1 / n2
}

fn get_number_from_input() -> i32 {
    print!("Enter your number: ");
    stdout().flush().unwrap();
    let mut n1 = String::new();
    let _ = stdin().read_line(&mut n1).expect("Error getting first number");

    n1.trim().parse::<i32>().expect("Please type a number")
}

fn get_operation_from_input() -> String {
    print!("Enter your operation (+, -, *, /): ");
    stdout().flush().unwrap();
    let mut operation = String::new();
    let _ = stdin().read_line(&mut operation).expect("Error getting operation");

    operation.trim().to_string()
}

fn main() {
    let n1 = get_number_from_input();
    let operation = get_operation_from_input();
    let n2 = get_number_from_input();

    let result: i32;

    if operation == "+" {
        result = add_numbers(&n1, &n2);
    } else if operation == "-" {
        result = subtract_numbers(&n1, &n2);
    }  else if operation == "*" {
        result = multiply_numbers(&n1, &n2);
    } else if operation == "/" {
        result = divide_numbers(&n1, &n2);
    } else {
        println!("Invalid operation: {}", operation);
        return;
    }

    println!("result:  {}", result);
}
