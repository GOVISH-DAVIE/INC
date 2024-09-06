import 'package:cais/features/admin/Village/state/state_village.dart';
import 'package:cais/features/admin/counties/state/counties_state.dart';
import 'package:cais/features/admin/ethnicity/state/ethnicity_notifier.dart';
import 'package:cais/features/admin/genders/state/gender_notifier.dart';
import 'package:cais/features/admin/schools_cartegories/state/school_cartegories_notifier.dart';
import 'package:cais/features/admin/sub_counties/state_sub_counties.dart';
import 'package:cais/features/admin/ward/state_ward.dart';
import 'package:cais/features/officer/admin/applications/state/relief_notifier.dart';
import 'package:cais/features/officer/admin/relief/state/relief_notifier.dart';
import 'package:cais/features/officer/auth/state/auth.dart';
import 'package:cais/features/officer/disaster/state/reports_notifier.dart';
import 'package:cais/features/officer/education/state/education_notifier.dart';
import 'package:cais/features/officer/projects/state/project_notifier.dart';
import 'package:cais/features/officer/reports/state/reports_notifier.dart';
import 'package:cais/providers/locator.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providersChange = [
  ChangeNotifierProvider(create: (context) => locator.get<CountiesNotifier>()),
  ChangeNotifierProvider(create: (context) => locator.get<EthnicityNotifier>()),
  ChangeNotifierProvider(create: (context) => locator.get<GenderNotifier>()),
  ChangeNotifierProvider(create: (context) => locator.get<VillageNotifier>()),
  ChangeNotifierProvider(create: (context) => locator.get<WardNotifier>()),
  ChangeNotifierProvider(create: (context) => locator.get<EducationNotifier>()),
  ChangeNotifierProvider(create: (context) => locator.get<ReportsNotifier>()),
  ChangeNotifierProvider(create: (context) => locator.get<DisasterNotifier>()),
  ChangeNotifierProvider(create: (context) => locator.get<ProjectNotifier>()),
  ChangeNotifierProvider(create: (context) => locator.get<ReliefNotifier>()),
  ChangeNotifierProvider(
      create: (context) => locator.get<ApplicationsNotifier>()),
  ChangeNotifierProvider(
      create: (context) => locator.get<SchoolCartegoriesNotifier>()),
  ChangeNotifierProvider(
      create: (context) => locator.get<OfficerAuthNotifier>()),
  ChangeNotifierProvider(
      create: (context) => locator.get<SubCountiesNotifier>()),
];
