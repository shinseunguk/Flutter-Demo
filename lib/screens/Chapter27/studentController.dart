import 'package:get/get.dart';
import 'studentModel.dart';

class StudentController extends GetxController {
  RxList<Rx<Student>> studentList =
      [
        Student(studentId: 1, studentName: 'Alice Smith', studentGrade: 'A').obs,
        Student(studentId: 2, studentName: 'Bob Johnson', studentGrade: 'B').obs,
        Student(studentId: 3, studentName: 'Charlie Brown', studentGrade: 'C').obs,
      ].obs;

  List<String> newStudentNames = ["Andrew2", "Bob2", "Charlie2"];
  List<String> newStudentGrades = ["A+", "B+", "C+"];

  void updateStudentName(String name, int index) {
    studentList[index].update((val) {
      val?.studentName = name;
    });
  }

  void updateStudentGrade(String grade, int index) {
    studentList[index].update((val) {
      val?.studentGrade = grade;
    });
  }
}
