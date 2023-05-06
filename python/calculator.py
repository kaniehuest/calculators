def divide(number1, number2):
  return number1 / number2

def multiply(number1, number2):
  return number1 * number2

def subtract(number1, number2):
  return number1 - number2

def sum(number1, number2):
  return number1 + number2

def main():
  print("Calculator")
  number1 = int(input("Enter your first number: "))
  number2 = int(input("Enter your second number: "))

  print("Current supported operations:")
  print("(1) +")
  print("(2) -")
  print("(3) *")
  print("(4) /")
  operation = int(input("Enter the number of the operation: "))

  if operation == 1:
    print(sum(number1, number2))
  elif operation == 2:
    print(subtract(number1, number2))
  elif operation == 3:
    print(multiply(number1, number2))
  elif operation == 4:
    print(divide(number1, number2))

if __name__ == "__main__":
  main()