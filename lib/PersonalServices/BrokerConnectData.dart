class Broker {
  late String name;
  late String contactNumber;
  Broker({required String name, required String contactNumber}) {
    this.name = name;
    this.contactNumber = contactNumber;
  }
}

List<Broker> brokersData = [
  Broker(name: "Manoj Sharma", contactNumber: "1234 5678 91"),
  Broker(name: "Vishal Sirvastava", contactNumber: "8282 9191 12"),
  Broker(name: "Ramesh Singhal", contactNumber: "9232 9141 27"),
];
