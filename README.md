# 🎓 Students Marks Sheet – Flutter App

A modern and intuitive **Students Marks Sheet App** built using Flutter, SQLite, and Provider state management.  
This app helps teachers and administrators manage student records, track subject-wise marks, and automatically calculate results locally.

---

## 🚀 Features
- Add & Delete Student Records (Name, Roll No, Class)
- Add Subject-wise Marks for each Student
- View Complete Marksheet with Pass/Fail Status
- Auto-calculate Total Marks & Percentage
- SQLite Local Database for Data Persistence
- Provider State Management for Smooth UI Updates
- Material 3 UI Design with Green Theme

---

## 🛠️ Tech Stack
- Flutter (Material 3)
- SQLite (sqflite)
- Provider State Management
- Path package for database storage

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  sqflite: ^2.3.0
  path: ^1.8.3
  provider: ^6.1.1
```

---

## 📂 Folder Structure

```
lib/
├── db/
│     └── DbHelper.dart
│
├── models/
│     ├── student.dart
│     └── mark.dart
│
├── providers/
│     ├── StudentProvider.dart
│     └── MarksProvider.dart
│
└── views/
      ├── home_screen.dart
      ├── add_screen.dart
      ├── markseet_screen.dart
      └── add_marks_screen.dart
```

---

## ▶️ How to Run

```bash
flutter pub get
flutter run
```

---

## 📄 License
This project is for educational purposes. You may modify and extend it freely.
