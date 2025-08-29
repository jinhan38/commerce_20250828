class ProductModel {
  String image;
  String name;
  int price;
  int reviewCont;
  double reviewRating;
  bool cart;

  ProductModel(
    this.image,
    this.name,
    this.price,
    this.reviewCont,
    this.reviewRating,
    this.cart,
  );

  @override
  String toString() {
    return 'ProductModel{image: $image, name: $name, price: $price, reviewCont: $reviewCont, reviewRating: $reviewRating, cart: $cart}';
  }
}
