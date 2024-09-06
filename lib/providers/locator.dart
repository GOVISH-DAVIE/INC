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
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerFactory<CountiesNotifier>(() => CountiesNotifier());
  locator.registerFactory<EthnicityNotifier>(() => EthnicityNotifier());
  locator.registerFactory<GenderNotifier>(() => GenderNotifier());
  locator.registerFactory<SubCountiesNotifier>(() => SubCountiesNotifier());
  locator.registerFactory<WardNotifier>(() => WardNotifier());
  locator.registerFactory<VillageNotifier>(() => VillageNotifier());
  locator.registerFactory<EducationNotifier>(() => EducationNotifier());
  locator.registerFactory<ReportsNotifier>(() => ReportsNotifier());
  locator.registerFactory<DisasterNotifier>(() => DisasterNotifier());
  locator.registerFactory<SchoolCartegoriesNotifier>(
      () => SchoolCartegoriesNotifier());
  locator.registerFactory<OfficerAuthNotifier>(() => OfficerAuthNotifier());
  locator.registerFactory<ProjectNotifier>(() => ProjectNotifier());
  locator.registerFactory<ReliefNotifier>(() => ReliefNotifier());
  locator.registerFactory<ApplicationsNotifier>(() => ApplicationsNotifier());
}
