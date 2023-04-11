class Broker {
  late String name;
  late String contactNumber;
  Broker({required String name, required String contactNumber}) {
    this.name = name;
    this.contactNumber = contactNumber;
  }
}

List<Broker> brokersData = [
  Broker(name: "Manoj Sharma", contactNumber: "1234567891"),
  Broker(name: "Vishal Sirvastava", contactNumber: "8282919112"),
  Broker(name: "Ramesh Singhal", contactNumber: "9232914127"),
  Broker(name: "Vishal Sirvastava", contactNumber: "8282919112"),
  Broker(name: "Rakesh Sharma", contactNumber: "9232914128"),
  Broker(name: "Vishal Sirvastava", contactNumber: "8282919112"),
  Broker(name: "Rakesh Sharma", contactNumber: "9232914128"),
];
