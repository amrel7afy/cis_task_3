class FoodModel{
  late final String image;
  late final String address;
  late final String cat;
  late final String status;
  FoodModel({required this.image, required this.address, required this.cat,required  this.status});
  
  static List<FoodModel> groceries=[
    FoodModel(image: 'https://www.edarabia.com/ar/wp-content/uploads/2020/11/definition-food-5-essential-nutrients-day.jpg', address: 'Wust el balad', cat: 'Grocery', status: 'Good'),
    FoodModel(image: 'https://www.almrsal.com/wp-content/uploads/2020/08/healthy-food.jpg', address: 'Cairo', cat: 'Grocery', status: 'Very Good'),
    FoodModel(image: 'https://www.edarabia.com/ar/wp-content/uploads/2020/11/definition-food-5-essential-nutrients-day.jpg', address: 'Wust el balad', cat: 'Grocery', status: 'Good'),
    FoodModel(image: 'https://www.almrsal.com/wp-content/uploads/2020/08/healthy-food.jpg', address: 'Cairo', cat: 'Grocery', status: 'Very Good'),
    FoodModel(image: 'https://www.edarabia.com/ar/wp-content/uploads/2020/11/definition-food-5-essential-nutrients-day.jpg', address: 'Wust el balad', cat: 'Grocery', status: 'Good'),
  ];
  static List<FoodModel>desserts=[
    FoodModel(image: 'https://realfood.tesco.com/media/images/RFO-1400x919-classic-chocolate-mousse-69ef9c9c-5bfb-4750-80e1-31aafbd80821-0-1400x919.jpg', address: 'Cairo', cat: 'dessert', status: 'Under Rated'),
    FoodModel(image: 'https://www.brit.co/media-library/these-nutella-brownies-top-our-list-of-quick-and-easy-dessert-recipes.jpg?id=23305200&width=980', address: 'El- Mahalla', cat: 'Dessert', status: 'Good'),
    FoodModel(image: 'https://realfood.tesco.com/media/images/RFO-1400x919-classic-chocolate-mousse-69ef9c9c-5bfb-4750-80e1-31aafbd80821-0-1400x919.jpg', address: 'Cairo', cat: 'dessert', status: 'Under Rated'),
    FoodModel(image: 'https://www.brit.co/media-library/these-nutella-brownies-top-our-list-of-quick-and-easy-dessert-recipes.jpg?id=23305200&width=980', address: 'El- Mahalla', cat: 'Dessert', status: 'Good'),
  ];
  static var val=1;
}