
  window.setTimeout(function () {
    alert('HAMMERTIME');
  }, 5000);


function hammerTime(time) {
  window.setTimeout(function () {
    alert(`${time} is hammertime!`);
  }, 5000);
}

const readline = require('readline');

const reader = readline.createInterface({

  input: process.stdin,
  output: process.stdout
});

reader.question("Would you like some tea?", function (answerTea) {
  reader.question("Would you like some biscuits?", function (answerBisc) {
    console.log(`${answerTea}, thank you.`);
    console.log(`${answerBisc}, thank you.`);


  const firstRes = (answerTea === 'yes') ? 'do' : 'don\'t';
  const secondRes = (answerBisc === 'yes') ? 'do' : 'don\'t';
  console.log(`So you ${answerTea} want tea and you ${answerBisc} want biscuits.`);
  reader.close();
  });
});
