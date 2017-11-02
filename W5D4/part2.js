function titleize(array, printCallback) {
  var names = array.map(function(name) {
    `Mx. ${name} Jingleheimer Schmidt`
  });
  callback(names);
}

titleize(["Mary", "Brian", "Leo"], (array) => {
  array.forEach(name => console.log(name));
});

// console.log(titleize(["Mary", "Brian", "Leo"], printCallback));

function Elephant(name, height, tricksArray) {
  this.name = name;
  this.height = height;
  this.tricksArray = tricksArray;
}

Elephant.prototype.trumpet = function () {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function () {
  this.height = this.height + 12;
};

Elephant.prototype.addTrick = function(trick) {
  this.tricksArray.push(trick);
};

Elephant.prototype.play = function () {
  trickIndex = Math.floor(Math.random() * this.tricksArray.length);
  console.log(`${this.name} is ${this.tricksArray[trickIndex]}!`);
};

Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by!`);
};

// let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
// let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
// let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
// let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);
//
// let herd = [ellie, charlie, kate, micah];



function dinerBreakfast() {
  let foodOrder = "I'd like cheesy scrambled eggs please.";
  console.log(foodOrder);

  return function(food) {
    order = `${foodOrder} and ${food} please.`;
    console.log(food);
  };
};
