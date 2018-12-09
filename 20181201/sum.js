// Run this code in the console of the window with the input list.

let screenInput = document.getElementsByTagName('pre')[0].innerHTML;
let inputArray= screenInput.split("\n");
let numberArray = [];

inputArray.forEach((element) => {
  if (element != "") {
    numberArray.push(Number(element));
    }
  });

let sum = 0;

numberArray.forEach((number) => {
  sum += number;
});

console.log(`The resulting frequency is ${sum}.`);
