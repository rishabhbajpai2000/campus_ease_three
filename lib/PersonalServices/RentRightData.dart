class FlatInfo {
  String name;
  String rentPerMonth;
  String contactNumber;
  String review50words;
  String location;


  FlatInfo(
      {required this.name,
        required this.rentPerMonth,
        required this.contactNumber,
        required this.review50words,
        required this.location,
       }) {}
}

List<FlatInfo> flatInfoData = [
  FlatInfo(
      name: "Gaur Global Village",
      rentPerMonth: "10,000",
      contactNumber: "123 456 789 0",
      location: "Near ABES Engineering College ",
      review50words:
      "The sun rose slowly over the horizon, casting a warm glow over the peaceful meadow. The birds chirped merrily, and a gentle breeze rustled the leaves of the trees. In the distance, a herd of deer grazed lazily, undisturbed by the tranquility of the morning. It was a beautiful day, full of promise and hope.",
      ),
  FlatInfo(
      name: "Sapphire Gold",
      rentPerMonth: "12,000",
      contactNumber: "989 798 234 9",
      location: "Chipyana Bujurg",
      review50words:
      "The sun was setting behind the hills, casting a warm orange glow over the meadow. The air was still, and the only sound was the chirping of crickets. A gentle breeze rustled the leaves on the trees, and a sense of peace settled over the scene. It was the perfect moment to take a deep breath and appreciate the beauty of nature.",
      )
];
