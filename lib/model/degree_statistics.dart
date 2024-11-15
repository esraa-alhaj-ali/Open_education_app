class DegreeStatistic {
  late String id;
  late String coursename;
  late String degree;
  late String result;
  bool isChecked = false;

  DegreeStatistic(
      {required this.id,
      required this.coursename,
      required this.degree,
      required this.result});
  static List<DegreeStatistic> list = [];
  static List<DegreeStatistic> generate() {
    list.add(DegreeStatistic(
        id: "50",
        coursename: "Entry_into_law",
        degree: "1",
        result: "Success"));
    list.add(DegreeStatistic(
        id: "51",
        coursename: "Entry_into_law",
        degree: "1",
        result: "Success"));
    list.add(DegreeStatistic(
        id: "52",
        coursename: "Entry_into_law",
        degree: "1",
        result: "Success"));
    list.add(DegreeStatistic(
        id: "53",
        coursename: "Entry_into_law",
        degree: "1",
        result: "Success"));
    return list;
  }
}
