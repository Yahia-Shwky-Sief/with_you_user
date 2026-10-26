import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('fr'),
  ];

  /// No description provided for @withyou.
  ///
  /// In en, this message translates to:
  /// **'With You'**
  String get withyou;

  /// No description provided for @withyous.
  ///
  /// In en, this message translates to:
  /// **'With you is a program to support refugees in the world by providing them with a decent life and helping them to have a better life'**
  String get withyous;

  /// No description provided for @unchrregistrationnumberpassportnumber.
  ///
  /// In en, this message translates to:
  /// **'UNHCR Registration Number/Passport Number'**
  String get unchrregistrationnumberpassportnumber;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @rememberme.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberme;

  /// No description provided for @forgetpasswordbutton.
  ///
  /// In en, this message translates to:
  /// **'Forget password?'**
  String get forgetpasswordbutton;

  /// No description provided for @forgetpassword.
  ///
  /// In en, this message translates to:
  /// **'Forget password'**
  String get forgetpassword;

  /// No description provided for @choosecontactway.
  ///
  /// In en, this message translates to:
  /// **'Choose a way to contact you'**
  String get choosecontactway;

  /// No description provided for @yourphonenumber.
  ///
  /// In en, this message translates to:
  /// **'010..9397'**
  String get yourphonenumber;

  /// No description provided for @sendemail.
  ///
  /// In en, this message translates to:
  /// **'Send Email'**
  String get sendemail;

  /// No description provided for @sendsms.
  ///
  /// In en, this message translates to:
  /// **'Send SMS'**
  String get sendsms;

  /// No description provided for @resetpassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetpassword;

  /// No description provided for @confirmpassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmpassword;

  /// No description provided for @createaccount.
  ///
  /// In en, this message translates to:
  /// **'To create account click here'**
  String get createaccount;

  /// No description provided for @toregisterwithuncherclickhere.
  ///
  /// In en, this message translates to:
  /// **'To Register With UNHCR, CLICK HERE'**
  String get toregisterwithuncherclickhere;

  /// No description provided for @signin.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signin;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signup;

  /// No description provided for @fullname.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullname;

  /// No description provided for @dateofbirth.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get dateofbirth;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get day;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @nationality.
  ///
  /// In en, this message translates to:
  /// **'Nationality'**
  String get nationality;

  /// No description provided for @homeaddress.
  ///
  /// In en, this message translates to:
  /// **'Home Address'**
  String get homeaddress;

  /// No description provided for @currentaddress.
  ///
  /// In en, this message translates to:
  /// **'Current Address'**
  String get currentaddress;

  /// No description provided for @selectcountry.
  ///
  /// In en, this message translates to:
  /// **'Select Country'**
  String get selectcountry;

  /// No description provided for @phonenumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phonenumber;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'User Name'**
  String get username;

  /// No description provided for @tips.
  ///
  /// In en, this message translates to:
  /// **'Tips'**
  String get tips;

  /// No description provided for @governmentservices.
  ///
  /// In en, this message translates to:
  /// **'UNHCR Services'**
  String get governmentservices;

  /// No description provided for @publicservices.
  ///
  /// In en, this message translates to:
  /// **'Public Services'**
  String get publicservices;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @healthcare.
  ///
  /// In en, this message translates to:
  /// **'Health Care'**
  String get healthcare;

  /// No description provided for @aid.
  ///
  /// In en, this message translates to:
  /// **'Aid'**
  String get aid;

  /// No description provided for @jobs.
  ///
  /// In en, this message translates to:
  /// **'Jobs'**
  String get jobs;

  /// No description provided for @education.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get education;

  /// No description provided for @legaladvice.
  ///
  /// In en, this message translates to:
  /// **'Legal Advice'**
  String get legaladvice;

  /// No description provided for @hosting.
  ///
  /// In en, this message translates to:
  /// **'Hosting'**
  String get hosting;

  /// No description provided for @childprotection.
  ///
  /// In en, this message translates to:
  /// **'Protection Services'**
  String get childprotection;

  /// No description provided for @generaladvice.
  ///
  /// In en, this message translates to:
  /// **'General Advice'**
  String get generaladvice;

  /// No description provided for @ambulance.
  ///
  /// In en, this message translates to:
  /// **'Ambulance'**
  String get ambulance;

  /// No description provided for @hospitals.
  ///
  /// In en, this message translates to:
  /// **'Hospitals'**
  String get hospitals;

  /// No description provided for @pharmacies.
  ///
  /// In en, this message translates to:
  /// **'Pharmacies'**
  String get pharmacies;

  /// No description provided for @psychologicalaid.
  ///
  /// In en, this message translates to:
  /// **'Psychological Aid'**
  String get psychologicalaid;

  /// No description provided for @trainingcenters.
  ///
  /// In en, this message translates to:
  /// **'Training Centers'**
  String get trainingcenters;

  /// No description provided for @institutionaleducation.
  ///
  /// In en, this message translates to:
  /// **'school education'**
  String get institutionaleducation;

  /// No description provided for @grant.
  ///
  /// In en, this message translates to:
  /// **'Grant'**
  String get grant;

  /// No description provided for @meansofcommunication.
  ///
  /// In en, this message translates to:
  /// **'Means of Communication\n'**
  String get meansofcommunication;

  /// No description provided for @information.
  ///
  /// In en, this message translates to:
  /// **'Information line: '**
  String get information;

  /// No description provided for @ambulancenumber.
  ///
  /// In en, this message translates to:
  /// **'The unified ambulance number for the Arab Republic of Egypt: '**
  String get ambulancenumber;

  /// No description provided for @hotline.
  ///
  /// In en, this message translates to:
  /// **'Hotline (24 hours a day): '**
  String get hotline;

  /// No description provided for @thofoctober.
  ///
  /// In en, this message translates to:
  /// **'6th of October:'**
  String get thofoctober;

  /// No description provided for @whatsapp.
  ///
  /// In en, this message translates to:
  /// **'Whatsapp: '**
  String get whatsapp;

  /// No description provided for @alex.
  ///
  /// In en, this message translates to:
  /// **'Alex: '**
  String get alex;

  /// No description provided for @alajmi.
  ///
  /// In en, this message translates to:
  /// **'Al Ajmi: '**
  String get alajmi;

  /// No description provided for @damiette.
  ///
  /// In en, this message translates to:
  /// **'Damitte:'**
  String get damiette;

  /// No description provided for @mansoura.
  ///
  /// In en, this message translates to:
  /// **'Mansoura: '**
  String get mansoura;

  /// No description provided for @matrouh.
  ///
  /// In en, this message translates to:
  /// **'Matrouh: '**
  String get matrouh;

  /// No description provided for @cairo.
  ///
  /// In en, this message translates to:
  /// **'Cairo: '**
  String get cairo;

  /// No description provided for @nasrcity.
  ///
  /// In en, this message translates to:
  /// **'Nasr City: '**
  String get nasrcity;

  /// No description provided for @ainshams.
  ///
  /// In en, this message translates to:
  /// **'Ain-Shams University'**
  String get ainshams;

  /// No description provided for @elharam.
  ///
  /// In en, this message translates to:
  /// **'EL-HARAM: '**
  String get elharam;

  /// No description provided for @complaints.
  ///
  /// In en, this message translates to:
  /// **'Complaints: '**
  String get complaints;

  /// No description provided for @psychosocial.
  ///
  /// In en, this message translates to:
  /// **'Psychosocial support for children and raising parents\' awareness of positive parenting: '**
  String get psychosocial;

  /// No description provided for @earlyeducation.
  ///
  /// In en, this message translates to:
  /// **'Early Education: '**
  String get earlyeducation;

  /// No description provided for @arabicenglishsomali.
  ///
  /// In en, this message translates to:
  /// **'Arabic, English, Somali: '**
  String get arabicenglishsomali;

  /// No description provided for @arabicenglishturkish.
  ///
  /// In en, this message translates to:
  /// **'Arabic, English, Tigrinya: '**
  String get arabicenglishturkish;

  /// No description provided for @alllanguages.
  ///
  /// In en, this message translates to:
  /// **'All Languages: '**
  String get alllanguages;

  /// No description provided for @takeappointment.
  ///
  /// In en, this message translates to:
  /// **'to make an appointment: '**
  String get takeappointment;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic: '**
  String get arabic;

  /// No description provided for @oromoandamhara.
  ///
  /// In en, this message translates to:
  /// **'Oromo & Amharic: '**
  String get oromoandamhara;

  /// No description provided for @tigrinya.
  ///
  /// In en, this message translates to:
  /// **'Tigrinya: '**
  String get tigrinya;

  /// No description provided for @somali.
  ///
  /// In en, this message translates to:
  /// **'Somali: '**
  String get somali;

  /// No description provided for @villa.
  ///
  /// In en, this message translates to:
  /// **'Villa 8/48, 8th District, 2nd Neighborhood\n'**
  String get villa;

  /// No description provided for @noaman.
  ///
  /// In en, this message translates to:
  /// **'10 Talaat Noaman Street, Raml Station, daily except Friday and Sunday: 8:30 - 15:30\n'**
  String get noaman;

  /// No description provided for @killo.
  ///
  /// In en, this message translates to:
  /// **'Kilo 21, behind Asafra Hospital West Monday - Wednesday: 8:30 - 15:30\n'**
  String get killo;

  /// No description provided for @villag.
  ///
  /// In en, this message translates to:
  /// **'Garden City: 8 Abdel Latif Baltia Street, behind the Four Seasons Hotel\n'**
  String get villag;

  /// No description provided for @villan.
  ///
  /// In en, this message translates to:
  /// **'Nasr City: 15 Mohamed Youssef Mousa Street\n'**
  String get villan;

  /// No description provided for @property.
  ///
  /// In en, this message translates to:
  /// **'Property 81/21, District One, District One, next to Al-Rashidi Mosque, Sunday - Thursday: 8:30 - 15:30\n'**
  String get property;

  /// No description provided for @imam.
  ///
  /// In en, this message translates to:
  /// **'Imam Muhammad Abdo Street, off Suez Canal Street, Monday: 8:30 - 15:30\n'**
  String get imam;

  /// No description provided for @asr.
  ///
  /// In en, this message translates to:
  /// **'Asr Al-Islam Medical Center, Al-Thanawiya Street, next to Al-Dafrawi Mosque, Monday: 8:30 - 15:30\n'**
  String get asr;

  /// No description provided for @mohamed.
  ///
  /// In en, this message translates to:
  /// **'15 Mohamed Youssef Mousa Street, parallel to Mostafa El-Nahhas Street, Nasr City\n Monday - Friday: 8:30 AM - 3:30 PM\n'**
  String get mohamed;

  /// No description provided for @sibawayh.
  ///
  /// In en, this message translates to:
  /// **'30 Sibawayh Al-Masry Street, off Anwar Al-Mufti, behind the first Nasr City traffic unit\n'**
  String get sibawayh;

  /// No description provided for @jobcstreet.
  ///
  /// In en, this message translates to:
  /// **'Building 33, Street 106, Hadyek El-Maadi\n'**
  String get jobcstreet;

  /// No description provided for @jobestreet.
  ///
  /// In en, this message translates to:
  /// **'5 Michel Lotfallah Street, behind the Marriott Hotel\n'**
  String get jobestreet;

  /// No description provided for @lawlstreet.
  ///
  /// In en, this message translates to:
  /// **'Real Estate 114, Third Floor, Flat 8, Street 105, Hadayek El Maadi\n'**
  String get lawlstreet;

  /// No description provided for @grantcstreet.
  ///
  /// In en, this message translates to:
  /// **'Building 33, Street 106, Maadi Gardens\n'**
  String get grantcstreet;

  /// No description provided for @procstreet.
  ///
  /// In en, this message translates to:
  /// **'7 Golf Street - Maadi'**
  String get procstreet;

  /// No description provided for @proestreet.
  ///
  /// In en, this message translates to:
  /// **'2, Hussain El-Ma’mar, off Mahmoud Bassiouny St., Downtown\n'**
  String get proestreet;

  /// No description provided for @schoolsstreet.
  ///
  /// In en, this message translates to:
  /// **'38 26th of July Street, Ambulance Square (Metro: Nasser)\n'**
  String get schoolsstreet;

  /// No description provided for @schoolsg.
  ///
  /// In en, this message translates to:
  /// **'Monday - Thursday 9:00 to 15:00 \n Information lines \n Arabic, English, Oromo, Amharic: '**
  String get schoolsg;

  /// No description provided for @hospitalctime.
  ///
  /// In en, this message translates to:
  /// **'Sunday - Thursday: 9:00 - 17:00'**
  String get hospitalctime;

  /// No description provided for @dailyexcept.
  ///
  /// In en, this message translates to:
  /// **'Daily except Friday and Sunday: 8:30 - 15:30\n'**
  String get dailyexcept;

  /// No description provided for @psychologicalSupportctime.
  ///
  /// In en, this message translates to:
  /// **'Daily except Friday and Sunday: 8:30 AM - 3:30 PM\n'**
  String get psychologicalSupportctime;

  /// No description provided for @psychologicalSupportct.
  ///
  /// In en, this message translates to:
  /// **'Sunday - Thursday: 9:00 AM - 4:00 PM\n'**
  String get psychologicalSupportct;

  /// No description provided for @psychologicalsupportttime.
  ///
  /// In en, this message translates to:
  /// **'Sunday - Thursday: 9:00 - 17:00\n'**
  String get psychologicalsupportttime;

  /// No description provided for @helpctime.
  ///
  /// In en, this message translates to:
  /// **'Monday to Friday: from 8:00 to 15:30\n'**
  String get helpctime;

  /// No description provided for @jobctime.
  ///
  /// In en, this message translates to:
  /// **'Sunday - Thursday: 9:00 - 14:00\n'**
  String get jobctime;

  /// No description provided for @jobetime.
  ///
  /// In en, this message translates to:
  /// **'Daily except Friday and Sunday: 10:00 - 13:00\n'**
  String get jobetime;

  /// No description provided for @lawltime.
  ///
  /// In en, this message translates to:
  /// **'Sunday - Thursday: 9:00 to 18:00\n'**
  String get lawltime;

  /// No description provided for @grantctime.
  ///
  /// In en, this message translates to:
  /// **'Sunday - Thursday: 8:30 - 17:00\n'**
  String get grantctime;

  /// No description provided for @complaintstime.
  ///
  /// In en, this message translates to:
  /// **'Sunday - Thursday: 9:00 - 17:00\n'**
  String get complaintstime;

  /// No description provided for @proetime.
  ///
  /// In en, this message translates to:
  /// **'Sunday - Thursday: 10:00  – 17:00\n'**
  String get proetime;

  /// No description provided for @egyptianmbulance.
  ///
  /// In en, this message translates to:
  /// **'Egyptian Ambulance'**
  String get egyptianmbulance;

  /// No description provided for @savethechildren.
  ///
  /// In en, this message translates to:
  /// **'Save the Children'**
  String get savethechildren;

  /// No description provided for @doctorswithoutborders.
  ///
  /// In en, this message translates to:
  /// **'Doctors Without Borders'**
  String get doctorswithoutborders;

  /// No description provided for @caritasegypt.
  ///
  /// In en, this message translates to:
  /// **'Caritas Egypt'**
  String get caritasegypt;

  /// No description provided for @catholic.
  ///
  /// In en, this message translates to:
  /// **'Catholic Relief'**
  String get catholic;

  /// No description provided for @egyptrefuge.
  ///
  /// In en, this message translates to:
  /// **'Egypt Refuge'**
  String get egyptrefuge;

  /// No description provided for @terredezoom.
  ///
  /// In en, this message translates to:
  /// **'Terre de Zoom'**
  String get terredezoom;

  /// No description provided for @unitedlawyers.
  ///
  /// In en, this message translates to:
  /// **'United Lawyers'**
  String get unitedlawyers;

  /// No description provided for @stars.
  ///
  /// In en, this message translates to:
  /// **'Stars'**
  String get stars;

  /// No description provided for @care.
  ///
  /// In en, this message translates to:
  /// **'Care'**
  String get care;

  /// No description provided for @pstic.
  ///
  /// In en, this message translates to:
  /// **'Pstic'**
  String get pstic;

  /// No description provided for @egyptianfoundationforrefugees.
  ///
  /// In en, this message translates to:
  /// **'EFRR'**
  String get egyptianfoundationforrefugees;

  /// No description provided for @anmbulancees.
  ///
  /// In en, this message translates to:
  /// **'An independent body established by Presidential Decree No. 139 of 2009, which provides urgent medical services and is of great importance because it is related to saving the lives of citizens and foreigners in Egypt.\n'**
  String get anmbulancees;

  /// No description provided for @hospitalcs.
  ///
  /// In en, this message translates to:
  /// **'It is one of the partner companies of UNHCR, which worked to facilitate access to health services for refugees and asylum seekers in Egypt in cooperation with the Egyptian Ministry of Health and Population.\n'**
  String get hospitalcs;

  /// No description provided for @hospitalds.
  ///
  /// In en, this message translates to:
  /// **'It is one of the partner companies of the UNHCR, which provides health clinics service.\n'**
  String get hospitalds;

  /// No description provided for @pilscs.
  ///
  /// In en, this message translates to:
  /// **'It is one of the partner companies of UNHCR, which provides primary health services and dispenses monthly medicines.\n'**
  String get pilscs;

  /// No description provided for @psycs.
  ///
  /// In en, this message translates to:
  /// **'It is one of UNHCR\'s partner companies that provides individual and group counseling and psychosocial support to people with special needs and the elderly\n'**
  String get psycs;

  /// No description provided for @psychologicalSupportts.
  ///
  /// In en, this message translates to:
  /// **'It is one of UNHCR\'s partner companies and provides psychosocial services: case management, positive education programs, recreational activities through community protection and psychosocial centers.\n'**
  String get psychologicalSupportts;

  /// No description provided for @helpc.
  ///
  /// In en, this message translates to:
  /// **'It is one of UNHCR\'s partner companies, which provides UNHCR cash assistance only to the most needy refugees and asylum seekers for a pre-determined period of time.\n'**
  String get helpc;

  /// No description provided for @jobcs.
  ///
  /// In en, this message translates to:
  /// **'It is one of UNHCR\'s partner companies that supports refugees and asylum seekers interested in starting/expanding their own business\n'**
  String get jobcs;

  /// No description provided for @jobes.
  ///
  /// In en, this message translates to:
  /// **'It is one of UNHCR\'s partner companies that provide livelihood services by facilitating paid work.\n'**
  String get jobes;

  /// No description provided for @lawls.
  ///
  /// In en, this message translates to:
  /// **'United Advocates provides legal aid to all refugees and asylum seekers.\n'**
  String get lawls;

  /// No description provided for @grantcs.
  ///
  /// In en, this message translates to:
  /// **'It is one of UNHCR\'s partner companies, which provides educational grants through the Catholic Relief Commission, which helps fund educational opportunities in Egypt in public, private and community schools.\n'**
  String get grantcs;

  /// No description provided for @schoolss.
  ///
  /// In en, this message translates to:
  /// **'Stars is one of the partner companies of UNHCR, which offers different educational programs, including pre-school, primary, secondary and secondary education using the Sudanese curriculum in English.\n'**
  String get schoolss;

  /// No description provided for @traines.
  ///
  /// In en, this message translates to:
  /// **'It is one of UNHCR\'s partner companies that offer vocational training sessions and job applications.\n'**
  String get traines;

  /// No description provided for @trainls.
  ///
  /// In en, this message translates to:
  /// **'It is one of the partner companies of UNHCR, which provides training courses and legal awareness sessions.\n'**
  String get trainls;

  /// No description provided for @trainss.
  ///
  /// In en, this message translates to:
  /// **'STARS is a partner company of UNHCR, which offers a range of skills courses, including different levels of English, Arabic and IT for adult refugees and vulnerable migrants. Several professional courses for adults are also available, including sewing, handicrafts and henna.\n'**
  String get trainss;

  /// No description provided for @prod.
  ///
  /// In en, this message translates to:
  /// **'MSF provides medical and psychological care for people who have been sexually assaulted.\n'**
  String get prod;

  /// No description provided for @prost.
  ///
  /// In en, this message translates to:
  /// **'STARZ provides child protection services for unaccompanied and separated children and youth, including emergency response.\n'**
  String get prost;

  /// No description provided for @proP.
  ///
  /// In en, this message translates to:
  /// **'Pstic assists refugees and asylum seekers who are at risk of protection in providing them with safe housing.\n'**
  String get proP;

  /// No description provided for @pros.
  ///
  /// In en, this message translates to:
  /// **'Save the Children provides many services to children at risk and children at risk of abuse, neglect and exploitation. It also provides services for unaccompanied and separated children including assessment of the best interests of the child.\n'**
  String get pros;

  /// No description provided for @cairocountry.
  ///
  /// In en, this message translates to:
  /// **'Cairo\n'**
  String get cairocountry;

  /// No description provided for @dubaicountry.
  ///
  /// In en, this message translates to:
  /// **'Dubai\n'**
  String get dubaicountry;

  /// No description provided for @website.
  ///
  /// In en, this message translates to:
  /// **'website\n'**
  String get website;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'location\n'**
  String get location;

  /// No description provided for @germansaudihospital.
  ///
  /// In en, this message translates to:
  /// **'German Saudi'**
  String get germansaudihospital;

  /// No description provided for @germansaudistreet.
  ///
  /// In en, this message translates to:
  /// **'JOSEF TETO STREET - NOZHA, HELIOPOLIS\n'**
  String get germansaudistreet;

  /// No description provided for @germansaudistreetdubai.
  ///
  /// In en, this message translates to:
  /// **'Hessa Street 331 West, Al Barsha 3, Exit 36 Sheikh Zayed Road,Opposite of American School - Dubai - United Arab Emirates, Dubai\n'**
  String get germansaudistreetdubai;

  /// No description provided for @germansaudihospitals.
  ///
  /// In en, this message translates to:
  /// **'Saudi German is one of the largest hospitals that provide its services in Egypt, the United Arab Emirates, Yemen and Saudi Arabia.\n'**
  String get germansaudihospitals;

  /// No description provided for @americanhospital.
  ///
  /// In en, this message translates to:
  /// **'American Hospital'**
  String get americanhospital;

  /// No description provided for @americanhospitalstreet.
  ///
  /// In en, this message translates to:
  /// **'Oud Metha - Dubai - United Arab Emirates\n'**
  String get americanhospitalstreet;

  /// No description provided for @americanhospitals.
  ///
  /// In en, this message translates to:
  /// **'The American Hospital is considered the largest hospital in Dubai, specifically in the Bur Dubai region, as it accommodates 143 beds, and those in charge of it continue to provide programs for progress and development to accommodate the largest possible number of patients\' cases.\n'**
  String get americanhospitals;

  /// No description provided for @ganzourispecialized.
  ///
  /// In en, this message translates to:
  /// **'Ganzouri Specialized'**
  String get ganzourispecialized;

  /// No description provided for @ganzourispecializedstreet.
  ///
  /// In en, this message translates to:
  /// **'63 Tomanbay Street - Qasr Al-Tahira Square - Roxy\n'**
  String get ganzourispecializedstreet;

  /// No description provided for @ganzourispecializeds.
  ///
  /// In en, this message translates to:
  /// **'This hospital was established more than 37 years ago in Cairo, where it has the best medical specialties and is considered the largest medical center in the Arab Republic of Egypt, where it ranked 2244 in the world.\n'**
  String get ganzourispecializeds;

  /// No description provided for @lifepharmacies.
  ///
  /// In en, this message translates to:
  /// **'Life Pharmacies'**
  String get lifepharmacies;

  /// No description provided for @lifepharmaciesstreet.
  ///
  /// In en, this message translates to:
  /// **'Life Pharmacy - Corporate Office Marasi Dr - Business Bay Bay Square - Dubai\n'**
  String get lifepharmaciesstreet;

  /// No description provided for @lifepharmaciess.
  ///
  /// In en, this message translates to:
  /// **'Life Pharmacies was established in Dubai in 1996, and is considered one of the largest pharmacies in Dubai, with more than 200 pharmacies in its chain.\n'**
  String get lifepharmaciess;

  /// No description provided for @elezabypharmacies.
  ///
  /// In en, this message translates to:
  /// **'El Ezaby Pharmacies'**
  String get elezabypharmacies;

  /// No description provided for @elezabypharmaciess.
  ///
  /// In en, this message translates to:
  /// **'El-Ezaby Pharmacy started in 1975, and it has about 90 branches around Egypt.\n'**
  String get elezabypharmaciess;

  /// No description provided for @elezabypharmaciesstreet.
  ///
  /// In en, this message translates to:
  /// **'69 El Nasr, Sheraton Al Matar, El Nozha, Cairo Governorate 11799'**
  String get elezabypharmaciesstreet;

  /// No description provided for @bootspharmacies.
  ///
  /// In en, this message translates to:
  /// **'Boots Pharmacies'**
  String get bootspharmacies;

  /// No description provided for @bootspharmaciess.
  ///
  /// In en, this message translates to:
  /// **'The Boots pharmacies chain was established in 1849 by the Boots family, and its branches are located in the United Arab Emirates, Oman, Qatar, Kuwait, Bahrain and the Kingdom of Saudi Arabia.\n'**
  String get bootspharmaciess;

  /// No description provided for @bootspharmaciesstreet.
  ///
  /// In en, this message translates to:
  /// **'Dubai Festival City - Dubai - United Arab Emirates'**
  String get bootspharmaciesstreet;

  /// No description provided for @orman.
  ///
  /// In en, this message translates to:
  /// **'Orman'**
  String get orman;

  /// No description provided for @ormantreet.
  ///
  /// In en, this message translates to:
  /// **'7 Abbas El Akkad St. - Above Koshary El Tahrir - Floor 2, Flat 4 - Nasr City'**
  String get ormantreet;

  /// No description provided for @ormans.
  ///
  /// In en, this message translates to:
  /// **'Orman Association provides seasonal assistance, including the distribution of sacrifice meat, Ramadan cartons and its branches in all governorates of Egypt.\n'**
  String get ormans;

  /// No description provided for @resala.
  ///
  /// In en, this message translates to:
  /// **'Resala'**
  String get resala;

  /// No description provided for @resalastreet.
  ///
  /// In en, this message translates to:
  /// **'2 Zaki Rostom, Sixth District, Nasr City, Cairo Governorate'**
  String get resalastreet;

  /// No description provided for @resalas.
  ///
  /// In en, this message translates to:
  /// **'They serve millions of Egyptians in about 30 voluntary activities, including orphan care, used clothing exhibitions, sheltering street children, and serving the blind, with a mission of more than 60 branches spread throughout Egypt.\n'**
  String get resalas;

  /// No description provided for @misreLkhair.
  ///
  /// In en, this message translates to:
  /// **'Misr ELkhair'**
  String get misreLkhair;

  /// No description provided for @misreLkhairstreet.
  ///
  /// In en, this message translates to:
  /// **'9 Mostafa El-Nahhas Street after the Oriental Weavers - Nasr City - Cairo'**
  String get misreLkhairstreet;

  /// No description provided for @misreLkhairs.
  ///
  /// In en, this message translates to:
  /// **'The Misr El Khair Foundation is one of the best charitable associations, as it makes a large number of contributions to charitable work in all parts of Egypt, as it reaches all governorates and even the villages of Upper Egypt.\n'**
  String get misreLkhairs;

  /// No description provided for @arabteccontracting.
  ///
  /// In en, this message translates to:
  /// **'Capriol Contracting'**
  String get arabteccontracting;

  /// No description provided for @arabteccontractingstreet.
  ///
  /// In en, this message translates to:
  /// **'Al Reem Island'**
  String get arabteccontractingstreet;

  /// No description provided for @arabConstruction.
  ///
  /// In en, this message translates to:
  /// **'Arab Construction'**
  String get arabConstruction;

  /// No description provided for @arabConstructionstreet.
  ///
  /// In en, this message translates to:
  /// **'Arabian Construction Co Building New Cairo, Egypt'**
  String get arabConstructionstreet;

  /// No description provided for @alshamscontracting.
  ///
  /// In en, this message translates to:
  /// **'Al Shams Contracting'**
  String get alshamscontracting;

  /// No description provided for @alshamscontractingstreet.
  ///
  /// In en, this message translates to:
  /// **'27 Attia El-Khouly, Khader El-Tuni, Nasr City, Cairo'**
  String get alshamscontractingstreet;

  /// No description provided for @arabteccontractings.
  ///
  /// In en, this message translates to:
  /// **'Capriol is a certified contracting company with many ISO certificates, which is distinguished by its long experience and professional team that has supervised several projects.\n'**
  String get arabteccontractings;

  /// No description provided for @arabConstructions.
  ///
  /// In en, this message translates to:
  /// **'The Arab Construction Company was established in Lebanon, by the Al-Murabi and Mikati families, who own and run the company until now. The company is currently headquartered in Abu Dhabi and has businesses in the UAE, Saudi Arabia, Lebanon, Egypt, England, India, Ivory Coast and Cameroon, with 11 offices and a workforce of over 20,000 people.\n'**
  String get arabConstructions;

  /// No description provided for @alshamscontractings.
  ///
  /// In en, this message translates to:
  /// **'A company specialized in the field of general contracting and has been established in Egypt since 1987. It is worth mentioning that the founders of the company have experience in the field of civil work since 1981. Of the first category according to the classification of the Egyptian Federation of Construction and Building Contractors.\n'**
  String get alshamscontractings;

  /// No description provided for @homesite.
  ///
  /// In en, this message translates to:
  /// **'Home Site'**
  String get homesite;

  /// No description provided for @jobscomwebsite.
  ///
  /// In en, this message translates to:
  /// **'Jobs.com Website'**
  String get jobscomwebsite;

  /// No description provided for @excavationsite.
  ///
  /// In en, this message translates to:
  /// **'Excavation Site'**
  String get excavationsite;

  /// No description provided for @excavationsites.
  ///
  /// In en, this message translates to:
  /// **'Tanqeeb allows you to search within all vacancies and vacancies from all Arab and Middle Eastern recruitment sites in one place - Tanqeeb is the largest employment search engine in the Arab world.\n'**
  String get excavationsites;

  /// No description provided for @homesites.
  ///
  /// In en, this message translates to:
  /// **'Bayt.com is the largest job site in the Middle East and North Africa region, which connects job seekers with employers who intend to hire.\n'**
  String get homesites;

  /// No description provided for @jobscomwebsites.
  ///
  /// In en, this message translates to:
  /// **'Wzayef.com is the Middle East job site. Browse hundreds of jobs posted daily.\n'**
  String get jobscomwebsites;

  /// No description provided for @bakermckenzie.
  ///
  /// In en, this message translates to:
  /// **'Baker McKenzie'**
  String get bakermckenzie;

  /// No description provided for @bakermckenziestreet.
  ///
  /// In en, this message translates to:
  /// **'Nile City Building, North Tower, 21st Floor 2005C, Cornich El Nil, Ramlet Beaulac, Cairo, Egypt'**
  String get bakermckenziestreet;

  /// No description provided for @alzayat.
  ///
  /// In en, this message translates to:
  /// **'Al-Zayat'**
  String get alzayat;

  /// No description provided for @alzayatstreet.
  ///
  /// In en, this message translates to:
  /// **'Villa 32, 2ND District, 5TH Zone، Cairo Governorate'**
  String get alzayatstreet;

  /// No description provided for @adsero.
  ///
  /// In en, this message translates to:
  /// **'Adsero'**
  String get adsero;

  /// No description provided for @adserostreet.
  ///
  /// In en, this message translates to:
  /// **'1 El Gabalaya St, Al Gabalayah, Zamalek, Cairo'**
  String get adserostreet;

  /// No description provided for @adseros.
  ///
  /// In en, this message translates to:
  /// **'One of the best offices in the directory of law firms in Egypt.\n'**
  String get adseros;

  /// No description provided for @bakermckenzies.
  ///
  /// In en, this message translates to:
  /// **'It is one of the largest law firms around the world with its presence in more than 47 countries, including Egypt, Morocco, Qatar, Saudi Arabia and the United Arab Emirates.\n'**
  String get bakermckenzies;

  /// No description provided for @alzayats.
  ///
  /// In en, this message translates to:
  /// **'El-Zayat International Law Firm is a leading international law firm in Egypt.\n'**
  String get alzayats;

  /// No description provided for @theunitedarabemirates.
  ///
  /// In en, this message translates to:
  /// **'United Arab Emirates'**
  String get theunitedarabemirates;

  /// No description provided for @ainshamsstreet.
  ///
  /// In en, this message translates to:
  /// **'El-Khalyfa El-Mamoun Street Abbasya, Cairo , Eygpt'**
  String get ainshamsstreet;

  /// No description provided for @theunitedarabemiratess.
  ///
  /// In en, this message translates to:
  /// **'A public university established in 1976 in the city of Al Ain, it is a federal university with an Arab-Islamic identity and a source of civilizational radiation for thought, culture and science.\n'**
  String get theunitedarabemiratess;

  /// No description provided for @harvards.
  ///
  /// In en, this message translates to:
  /// **'It is an Egyptian university, an independent, not-for-profit, multicultural and multidisciplinary university, and it is considered one of the largest universities that provides distinguished education in the English language.\n'**
  String get harvards;

  /// No description provided for @ainshamss.
  ///
  /// In en, this message translates to:
  /// **'Ain Shams University is a public university and the third oldest Egyptian university. It was founded in July 1950. Today, it includes 15 colleges and two high institutes. Study costs are free.\n'**
  String get ainshamss;

  /// No description provided for @egyptianlanguageschool.
  ///
  /// In en, this message translates to:
  /// **'Egyptian language school'**
  String get egyptianlanguageschool;

  /// No description provided for @rajakschool.
  ///
  /// In en, this message translates to:
  /// **'Rajak School'**
  String get rajakschool;

  /// No description provided for @akhnatonschools.
  ///
  /// In en, this message translates to:
  /// **'Akhnaton Schools'**
  String get akhnatonschools;

  /// No description provided for @akhnatonschoolsstreet.
  ///
  /// In en, this message translates to:
  /// **'82 Axis, the beginning of New Cairo, Cairo Governorate, Egypt'**
  String get akhnatonschoolsstreet;

  /// No description provided for @akhnatonschoolss.
  ///
  /// In en, this message translates to:
  /// **'Akhnaton Egyptian Language Schools (AELS) Fifth District - Cairo Akhnaton School was founded in 2002 AD.\n'**
  String get akhnatonschoolss;

  /// No description provided for @egyptianlanguageschools.
  ///
  /// In en, this message translates to:
  /// **'The Egyptian School of Languages was established in El Tagamoa in 1996.\n'**
  String get egyptianlanguageschools;

  /// No description provided for @rajakschools.
  ///
  /// In en, this message translates to:
  /// **'Rajak School was established in 1981, it is one of the oldest schools in Egypt.\n'**
  String get rajakschools;

  /// No description provided for @britishcouncil.
  ///
  /// In en, this message translates to:
  /// **'Udemy'**
  String get britishcouncil;

  /// No description provided for @americanuniversity.
  ///
  /// In en, this message translates to:
  /// **'American University'**
  String get americanuniversity;

  /// No description provided for @americanuniversitystreet.
  ///
  /// In en, this message translates to:
  /// **'AUC Ave, New Cairo,  Egypt'**
  String get americanuniversitystreet;

  /// No description provided for @amideast.
  ///
  /// In en, this message translates to:
  /// **'AMIDEAST'**
  String get amideast;

  /// No description provided for @britishcouncils.
  ///
  /// In en, this message translates to:
  /// **'It is an online educational platform that deals with many content, including programming, translation, drawing, profit from the Internet or creativity in general.\n'**
  String get britishcouncils;

  /// No description provided for @americanuniversitys.
  ///
  /// In en, this message translates to:
  /// **'It is a university that gives English language lessons from the beginning of the A1 stage to the end of the B2 stage using digital resources.\n'**
  String get americanuniversitys;

  /// No description provided for @amideasts.
  ///
  /// In en, this message translates to:
  /// **'AMIDEAST is a prominent American non-profit organization, founded in 1951, that deals with international education, training and development activities in the Middle East and North Africa.\n'**
  String get amideasts;

  /// No description provided for @tipone.
  ///
  /// In en, this message translates to:
  /// **'1- Meet and communicate with local residents while on the move.\n'**
  String get tipone;

  /// No description provided for @tiptwo.
  ///
  /// In en, this message translates to:
  /// **'2- Beware of pickpocketing,Since there are fewer eyes on your stuff, opportunistic thieves can quickly get away with your valuables after picking them up. Invest in an anti-theft backpack, to keep your gear safe, put your money and phone in your front pockets, and don\'t carry all your cash when you go out.\n'**
  String get tiptwo;

  /// No description provided for @tipthree.
  ///
  /// In en, this message translates to:
  /// **'3- Play it safe by printing out multiple copies of your travel documents.Carry a few copies of your passport photos and other travel documents. You may need it in the most unexpected places to prove your credentials. It is always a good idea to keep pictures of important documents on your mobile phone.\n'**
  String get tipthree;

  /// No description provided for @tipfour.
  ///
  /// In en, this message translates to:
  /// **'4- Carry cash with you, but only as much as you need for the day.When going to any exotic country, it\'s easy to want to keep all your cash on hand, but in order to protect yourself from pickpockets (or even want to spend all your money in one day), carry as much as you need.\n'**
  String get tipfour;

  /// No description provided for @tipfive.
  ///
  /// In en, this message translates to:
  /// **'5- Pay attention to charging your phone at public charging stations. If you\'re out all day and your phone needs to be charged, public transit stations are great, but you have to be careful about the wires they use at those stations. Use only the charging cable, not the data cable. Data cables can put your personal information at risk depending on where it is used.\n'**
  String get tipfive;

  /// No description provided for @uae.
  ///
  /// In en, this message translates to:
  /// **'UAE'**
  String get uae;

  /// No description provided for @egy.
  ///
  /// In en, this message translates to:
  /// **'Egypt'**
  String get egy;

  /// No description provided for @saudiarabia.
  ///
  /// In en, this message translates to:
  /// **'Saudi Arabia'**
  String get saudiarabia;

  /// No description provided for @algeria.
  ///
  /// In en, this message translates to:
  /// **'Algeria'**
  String get algeria;

  /// No description provided for @noresults.
  ///
  /// In en, this message translates to:
  /// **'No results found,\nPlease try different keyword'**
  String get noresults;

  /// No description provided for @changelanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changelanguage;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Update Profile'**
  String get profile;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'version 1.0'**
  String get version;

  /// No description provided for @aboutus.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutus;

  /// No description provided for @contactus.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactus;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logout;

  /// No description provided for @ucurrentaddress.
  ///
  /// In en, this message translates to:
  /// **'Your Current Address'**
  String get ucurrentaddress;

  /// No description provided for @uusername.
  ///
  /// In en, this message translates to:
  /// **'Your User Name'**
  String get uusername;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
