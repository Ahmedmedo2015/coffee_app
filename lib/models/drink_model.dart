class DrinkModel {
  late String image;
  late String title;
  late String name;
  late String price;

DrinkModel({
  required this.image,
  required this.title,
  required this.name,
  required this.price,

});
static List<DrinkModel>drinks= [
  DrinkModel(
    image:"assets/images/Chocolate.png",
     title:"Chocolate Drinks" ,
      name: "20 Flavors of your drink",
       price: "20",
       ),
         DrinkModel(
    image:"assets/images/Salted Caramel.png",
     title:"Salted Caramel" ,
      name: "20 Flavors of your drink",
       price: "20",
       ),
  DrinkModel(
    image:"assets/images/carmel.png",
     title:"carmel" ,
      name: "20 Flavors of your drink",
       price: "20",
       ),
       DrinkModel(
    image:"assets/images/Strawberry.png",
     title:"Strawberry" ,
      name: "20 Flavors of your drink",
       price: "20",
       ),
       DrinkModel(
    image:"assets/images/Peanut Butter.png",
     title:"Peanut Butter" ,
      name: "20 Flavors of your drink",
       price: "20",
       ),
       DrinkModel(
    image:"assets/images/Brownie Island.png",
     title:"Brownie Island" ,
      name: "20 Flavors of your drink",
       price: "20",
       ),
       DrinkModel(
    image:"assets/images/Banana.png",
     title:"Banana" ,
      name: "20 Flavors of your drink",
       price: "20",
       ),
];

}