import 'package:cais/features/admin/Village/village.dart';
import 'package:cais/features/admin/counties/Counties.dart';
import 'package:cais/features/admin/ethnicity/ethnicity.dart';
import 'package:cais/features/admin/genders/genders.dart';
import 'package:cais/features/admin/schools_cartegories/school_categories.dart';
import 'package:cais/features/admin/sub_counties/sub_counties.dart';
import 'package:cais/features/admin/ward/Ward.dart';

const adminDash = [
  {"name": "Counties", "description": " Set Up Counties", "to": Counties()},
  {
    "name": "Sub Counties",
    "description": " Set Up Sub Counties",
    "to": SubCounties()
  },
  {"name": "Wards ", "description": " Set Up Wards", "to": Wards()},
  {"name": "Village ", "description": " Set Up Villages", "to": Village()},
  {"name": "Genders ", "description": "Set Up System Genders", "to": Genders()},
  {
    "name": "Ethnicity",
    "description": "Set Up System Ethnicity",
    "to": Ethnicity()
  },
  {
    "name": "School Cartegories",
    "description": "Set Up System School Cartegories",
    "to": SchoolCartegories()
  },
];

const countiesEntries = [
  "name",
  "code",
];
const subCountiesEntries = ["name", "code"];
const ethnicityEntries = ["name", "description"];
const wardEntries = ["name", "description"];
const genderEntries = ["name", "description"];
const scoolCartegoriesEntries = ["name", "description"];
const officerAuthEntries = ["service_number", "password"];
const newSchoolEntries = ["name"];
const newSchoolStudentEntries = ["student_number"];
const reportEntries = [
  "who_was_affected",
  "suspect",
  "description",
];
const newSchoolTeacherEntries = ["teachers_count"];
