
class Job{
  String? title;
  String? description;
  String? cname;
  int? salary;
  String? schedule;
  String? daytime;
  String? location;
  String? address;
  String? type;
  String? benfits;
  bool applied;
  String? requirement;
  String? experience;
  String? education;

  Job(this.title,this.description,this.cname,this.salary ,this.schedule, this.daytime, this.location, this.address,
      this.type, this.benfits, this.applied, this.requirement,this.education, this.experience);

  static List<Job> available = [
    Job("Flutter Development", "You can directly come for Walk-in Interviews"
        , "Techlyverse", 10000, "Day Shift", "daytime", "Delhi", "Mohali, Punjab: Reliably commute or planning to relocate before starting work",
        "Full Time", "Cell Phone Reimbursement", false, "requirement", "(B.C.A.) (B.Sc.)(B.E.) (M.C.A.) (M.Sc.) (M.Tech) (M.E.) . OR Any Graduation Courses and Diploma course",
        "Experience on the database, SQLite & broadcast receiver.Knowledge of push notification, third-party libraries, and social media integration. Have published at least one original Android app.Work on bug fixing and improving application performance"),

    Job("Flutter Development", "You can directly come for Walk-in Interviews"
        , "Techlyverse", 10000, "Day Shift", "daytime", "Delhi", "Mohali, Punjab: Reliably commute or planning to relocate before starting work",
        "Full Time", "Health Reimbursement", true, "requirement", "(B.C.A.) (B.Sc.)(B.E.) (M.C.A.) (M.Sc.) (M.Tech) (M.E.) . OR Any Graduation Courses and Diploma course",
        "Experience on the database, SQLite & broadcast receiver.Knowledge of push notification, third-party libraries, and social media integration. Have published at least one original Android app.Work on bug fixing and improving application performance"),


    Job("Flutter Development", "You can directly come for Walk-in Interviews"
        , "Techlyverse", 10000, "Day Shift", "daytime", "Delhi", "Mohali, Punjab: Reliably commute or planning to relocate before starting work",
        "Full Time", "Cell Phone Reimbursement", true, "requirement", "(B.C.A.) (B.Sc.)(B.E.) (M.C.A.) (M.Sc.) (M.Tech) (M.E.) . OR Any Graduation Courses and Diploma course",
        "Experience on the database, SQLite & broadcast receiver.Knowledge of push notification, third-party libraries, and social media integration. Have published at least one original Android app.Work on bug fixing and improving application performance"),

    Job("Flutter Development", "You can directly come for Walk-in Interviews"
        , "Techlyverse", 10000, "Day Shift", "daytime", "Delhi", "Mohali, Punjab: Reliably commute or planning to relocate before starting work",
        "Full Time", "Medical Reimbursement", true, "requirement", "(B.C.A.) (B.Sc.)(B.E.) (M.C.A.) (M.Sc.) (M.Tech) (M.E.) . OR Any Graduation Courses and Diploma course",
        "Experience on the database, SQLite & broadcast receiver.Knowledge of push notification, third-party libraries, and social media integration. Have published at least one original Android app.Work on bug fixing and improving application performance"),

    Job("Flutter Development", "You can directly come for Walk-in Interviews"
        , "Techlyverse", 10000, "Day Shift", "daytime", "Delhi", "Mohali, Punjab: Reliably commute or planning to relocate before starting work",
        "Full Time", "Cell Phone Reimbursement", false, "requirement", "(B.C.A.) (B.Sc.)(B.E.) (M.C.A.) (M.Sc.) (M.Tech) (M.E.) . OR Any Graduation Courses and Diploma course",
        "Experience on the database, SQLite & broadcast receiver.Knowledge of push notification, third-party libraries, and social media integration. Have published at least one original Android app.Work on bug fixing and improving application performance"),

    Job("Flutter Development", "You can directly come for Walk-in Interviews"
        , "Techlyverse", 10000, "Day Shift", "daytime", "Delhi", "Mohali, Punjab: Reliably commute or planning to relocate before starting work",
        "Full Time", "Insurance ", true, "requirement", "(B.C.A.) (B.Sc.)(B.E.) (M.C.A.) (M.Sc.) (M.Tech) (M.E.) . OR Any Graduation Courses and Diploma course",
        "Experience on the database, SQLite & broadcast receiver.Knowledge of push notification, third-party libraries, and social media integration. Have published at least one original Android app.Work on bug fixing and improving application performance"),

    Job("Flutter Development", "You can directly come for Walk-in Interviews"
        , "Techlyverse", 10000, "Day Shift", "daytime", "Delhi", "Mohali, Punjab: Reliably commute or planning to relocate before starting work",
        "Full Time", "Shares", false, "requirement", "(B.C.A.) (B.Sc.)(B.E.) (M.C.A.) (M.Sc.) (M.Tech) (M.E.) . OR Any Graduation Courses and Diploma course",
        "Experience on the database, SQLite & broadcast receiver.Knowledge of push notification, third-party libraries, and social media integration. Have published at least one original Android app.Work on bug fixing and improving application performance"),

    Job("Flutter Development", "You can directly come for Walk-in Interviews"
        , "Techlyverse", 10000, "Day Shift", "daytime", "Delhi", "Mohali, Punjab: Reliably commute or planning to relocate before starting work",
        "Full Time", "Cell Phone Reimbursement", true, "requirement", "(B.C.A.) (B.Sc.)(B.E.) (M.C.A.) (M.Sc.) (M.Tech) (M.E.) . OR Any Graduation Courses and Diploma course",
        "Experience on the database, SQLite & broadcast receiver.Knowledge of push notification, third-party libraries, and social media integration. Have published at least one original Android app.Work on bug fixing and improving application performance"),

    Job("Flutter Development", "You can directly come for Walk-in Interviews"
        , "Techlyverse", 10000, "Day Shift", "daytime", "Delhi", "Mohali, Punjab: Reliably commute or planning to relocate before starting work",
        "Full Time", "House Allowance", true, "requirement", "(B.C.A.) (B.Sc.)(B.E.) (M.C.A.) (M.Sc.) (M.Tech) (M.E.) . OR Any Graduation Courses and Diploma course",
        "Experience on the database, SQLite & broadcast receiver.Knowledge of push notification, third-party libraries, and social media integration. Have published at least one original Android app.Work on bug fixing and improving application performance"),

    Job("Flutter Development", "You can directly come for Walk-in Interviews"
        , "Techlyverse", 10000, "Day Shift", "daytime", "Delhi", "Mohali, Punjab: Reliably commute or planning to relocate before starting work",
        "Full Time", "Travelling Allowance", false, "requirement", "(B.C.A.) (B.Sc.)(B.E.) (M.C.A.) (M.Sc.) (M.Tech) (M.E.) . OR Any Graduation Courses and Diploma course",
        "Experience on the database, SQLite & broadcast receiver.Knowledge of push notification, third-party libraries, and social media integration. Have published at least one original Android app.Work on bug fixing and improving application performance"),
 //  Job("Flutter Developer", "", cname, salary, shift, daytime, location, address, type, benfits, applied)
  ];

}