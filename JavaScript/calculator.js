'use strict'

const readline = require('readline')

let firstNumber = 0
let secondNumber = 0

const divide = (firstNumber, secondNumber) => {
  return firstNumber /secondNumber 
}

const multiply = (firstNumber, secondNumber) => {
  return firstNumber *secondNumber 
}

const subtract = (firstNumber, secondNumber) => {
  return firstNumber -secondNumber 
}

const add = (firstNumber, secondNumber) => {
  return firstNumber +secondNumber 
}

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
})

const getFirstNumber = () => {
  return new Promise((resolve, reject) => {
    rl.question('Enter your first number: ', number => {
      firstNumber = parseInt(number)
      resolve()
    })
  })
}

const getSecondNumber = () => {
  return new Promise((resolve, reject) => {
    rl.question('Enter your second number: ', number => {
      secondNumber= parseInt(number)
      resolve()
    })
  })
}

const makeOperation = () => {
  return new Promise((resolve, reject) => {
    console.log('Current supported operations: ')
    console.log('(1) +')
    console.log('(2) -')
    console.log('(3) *')
    console.log('(4) /')
    rl.question('Select the operation number: ', operation => {
      switch (operation) {
        case '1':
          console.log(add(firstNumber, secondNumber))
          break
        case '2':
          console.log(subtract(firstNumber, secondNumber))
          break
        case '3':
          console.log(multiply(firstNumber, secondNumber))
          break
        case '4':
          console.log(divide(firstNumber, secondNumber))
          break
        default:
          console.log('chose a valid operation')
          break
      }
      resolve()
    })
  })
}

const main = async () => {
  await getFirstNumber()
  await getSecondNumber()
  await makeOperation()
  rl.close()
}

main()