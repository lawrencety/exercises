class Clothes {
  constructor(name, size, price) {
    this.name = name;
    this.size = size;
    this.price = price;
  }
}

var shirt = new Clothes('v-Neck', 'Medium', 20);

console.log(shirt.name);
console.log(shirt.size);
console.log(shirt.price);
