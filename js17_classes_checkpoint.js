class Computer {
  constructor(brand, model) {
    this.brand = computerBrand;
    this.model = computerModel;
  };
}

class Laptop extends Computer {
  constructor() {
    super("Microsoft", "Surface Book")
  }
}
