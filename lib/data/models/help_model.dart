class HelpModel {
  int id;
  String question, answer;
  bool isExpanded;

  HelpModel({
    required this.id,
    required this.question,
    required this.answer,
    this.isExpanded = false,
  });
}

List<HelpModel> getHelp() {
  return [
    HelpModel(
      id: 1,
      question: "Account",
      answer:
          "You need to create an account to use the application but you can delete your account any time you want",
    ),
    HelpModel(
      id: 2,
      question: "Data",
      answer: "your data is safe and secure",
    ),
    HelpModel(
        id: 3,
        question: "Fees",
        answer: "the app fees is 2% of your total bill"),
    HelpModel(
        id: 4, question: "Content", answer: "the app content is good all ages"),
    HelpModel(
        id: 4,
        question: "Service",
        answer: "our customer service is on office hours from 9 am to 5 pm"),
  ];
}
