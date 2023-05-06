#include <stdio.h>


void get_input(int *first_number, int *second_number)
{
  printf("Enter your first number: ");
  scanf("%d", first_number);

  printf("Enter your second number: ");
  scanf("%d", second_number);
}

void divide(int first_number, int second_number)
{
  printf("\nThe division of %d and %d is = %f\n", first_number, second_number, (double)first_number/second_number);
}

void multiply(int first_number, int second_number)
{
  printf("\nThe multiplication of %d and %d is = %d\n", first_number, second_number, first_number*second_number);
}

void subtract(int first_number, int second_number)
{
  printf("\nThe subtraction of %d and %d is = %d\n", first_number, second_number, first_number-second_number);
}

void add(int first_number, int second_number)
{
  printf("\nThe sum of %d and %d is = %d\n", first_number, second_number, first_number+second_number);
}

void get_operation(int *operation)
{
  printf("\nCurrent operations supported: \n");
  printf("(1) +\n");
  printf("(2) -\n");
  printf("(3) *\n");
  printf("(4) /\n");
  printf("Enter your operation number: ");
  scanf("%d", operation);
}

void main()
{
  int first_number, second_number, operation;

  get_input(&first_number, &second_number);
  get_operation(&operation);

  switch(operation)
  {
    case 1:
      add(first_number, second_number);
      break;
    case 2:
      subtract(first_number, second_number);
      break;
    case 3:
      multiply(first_number, second_number);
      break;
    case 4:
      divide(first_number, second_number);
      break;
    default:
      printf("invalid option");
      break;
  }
}