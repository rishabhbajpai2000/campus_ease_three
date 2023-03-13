class RestaurantInfo {
  String name;
  String menu;
  String contactNumber;
  String review50words;
  String priceRange;

  RestaurantInfo(
      {required this.name,
      required this.menu,
      required this.contactNumber,
      required this.review50words,
      required this.priceRange}) {}
}

List<RestaurantInfo> restaurantData = [
  RestaurantInfo(
      name: "Chandu Restraunt",
      menu: "Click for menu",
      contactNumber: "123 456 789 0",
      review50words:
          "The sun rose slowly over the horizon, casting a warm glow over the peaceful meadow. The birds chirped merrily, and a gentle breeze rustled the leaves of the trees. In the distance, a herd of deer grazed lazily, undisturbed by the tranquility of the morning. It was a beautiful day, full of promise and hope.",
  priceRange: "50-150"),
  RestaurantInfo(
      name: "Mandu Restraunt",
      menu: "Click for menu",
      contactNumber: "989 798 234 9",
      review50words:
          "The sun was setting behind the hills, casting a warm orange glow over the meadow. The air was still, and the only sound was the chirping of crickets. A gentle breeze rustled the leaves on the trees, and a sense of peace settled over the scene. It was the perfect moment to take a deep breath and appreciate the beauty of nature.",
      priceRange: "100-300")
];
