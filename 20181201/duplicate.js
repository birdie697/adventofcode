// Run this code in the console of the window with the input list.

let screenInput = document.getElementsByTagName('pre')[0].innerHTML;
let inputArray= screenInput.split("\n");
let numberArray = [];

inputArray.forEach((element) => {
  if (element != "") {
    numberArray.push(Number(element));
    }
  });

//numberArray = [+3, +3, +4, -2, -4  ]
// answer is 10

//numberArray = [-6, +3, +8, +5, -6  ]
// answer is 5

//numberArray = [+7, +7, -2, -7, -4 ]
// answer is 14


let frequencyList = [];
let frequency = 0;
let i = 0;
let matchFound = false;

while (matchFound == false && i<numberArray.length) {
  frequency += numberArray[i];
  if (frequencyList.includes(frequency)) {
    matchFound = true;
    console.log(`The matching frequencey is ${frequency}.`);
  } else {
    frequencyList.push(frequency);
    i++;
  }
  if (i == numberArray.length) {
    i = 0;
  }
}
