# Doodle - Domain-Driven Design in einer Flutter-App

Dieses Repository enthält den Quellcode für die mobile Anwendung "Doodle", die im Rahmen meiner Bachelorarbeit an der Hochschule für Technik und Wirtschaft Berlin entwickelt wurde.

## Softwarepaket (Was?)
Die Software ist eine prototypische mobile Anwendung namens Doodle, entwickelt mit dem Flutter-Framework. Sie dient als praktische Fallstudie zur Umsetzung der Prinzipien des Domain-Driven Design in der Cross-Plattform-App-Entwicklung.

Die App simuliert eine Lernplattform, die Dozenten und Studierende bei Organisation und Kommunikation unterstützt. Kernfunktionen umfassen:

- Lehrmanagement: Erstellen von Kursen, Bereitstellen von Materialien, Verwalten von Aufgaben und Noten.
- Nutzerverwaltung: Authentifizierung und Verwaltung von Nutzerprofilen.
- Kalender- & E-Mail-Integration: Planung von Terminen und Kommunikation.

Die Architektur der Anwendung ist modular aufgebaut und nutzt für verschiedene fachliche Kontexte (Bounded Contexts) unterschiedliche Architekturmuster wie die klassische Schichtenarchitektur und Command Query Responsibility Segregation (CQRS) in Kombination mit Event Sourcing.

Sprache des Quellcodes: Englisch (Variablen, Klassennamen, Kommentare)
Sprache der Dokumentation: Deutsch

## Datenursprung (Wer?)
- Autor: Jakob Florian Merten
- Institution: Hochschule für Technik und Wirtschaft Berlin
- Erstgutachter: Prof. Dr. Arif Wider
- Zweitgutachter: Lucas Larisch

Der gesamte Quellcode wurde im Rahmen der oben genannten Abschlussarbeit selbstständig erstellt.

Lizenz: Dieses Projekt steht unter der MIT-Lizenz. Details finden Sie in der LICENSE-Datei.

Zeitraum (Wann?)
Entwicklungszeitraum: Sommersemester 2025
Abgabedatum der Arbeit: 08. August 2025

## Einrichtung & Ausführung des Projekts
1. Klonen Sie das Repository
2. Installieren Sie die Abhängigkeiten: `flutter pub get`
3. Starten Sie die App: `flutter run` - Voraussetzung dafür ist eine installierte Flutter Umgebung.

**Wichtiger Hinweis zum Firebase-Backend:**
Das Projekt ist mit den Konfigurationsdateien für ein spezifisches Firebase-Projekt vorkonfiguriert, das für diese Bachelorarbeit erstellt wurde. Es ist möglich, dass dieses Firebase-Projekt in Zukunft deaktiviert wird. Voraussichtlich bestehen bleibt das Firebase-Projekt bis zum 31.10.2025.

Sollten bei der Ausführung der App Fehler im Zusammenhang mit Firebase auftreten (z.B. bei der Authentifizierung), müssen Sie die Anwendung mit Ihrem eigenen Firebase-Projekt verbinden. 


## Werkzeuge (Womit?)
Für die Entwicklung und Implementierung wurden folgende Technologien und Werkzeuge verwendet:
- Programmiersprache: Dart
- Flutter (für Cross-Plattform-Entwicklung auf iOS & Android)
- Architekturen & Methoden:
    - Domain-Driven Design (DDD)
    - Command Query Responsibility Segregation (CQRS)
    - Event Sourcing
    - Schichtenarchitektur (Layered Architecture)
- State Management: BLoC (Business Logic Component)
- Backend & Datenbank:
    - Firebase Authentication (für die Nutzerauthentifizierung)
    - Hive (als lokale Datenbank für Offline-Fähigkeit)
- Relevante Dart/Flutter-Bibliotheken:
    - bloc / flutter_bloc: Für das State Management.
    - event_bus: Für die entkoppelte Kommunikation zwischen Bounded Contexts.
    - dartz: Für funktionale Fehlerbehandlung.
    - get_it: Als Service Locator für Dependency Injection.
    - dio: Für HTTP-Anfragen.
    - firebase_auth: Für die Integration mit Firebase Authentication


## Qualitätssicherung
Die Architektur wurde so entworfen, dass eine hohe Testbarkeit gewährleistet ist. Insbesondere die Domänenlogik ist vollständig von Flutter und Infrastruktur-Komponenten entkoppelt und in reinen Dart-Paketen gekapselt. Dies ermöglicht es, die Geschäftsregeln mit isolierten, automatisierten Unit-Tests zu überprüfen und die Korrektheit der Kernlogik sicherzustellen.

## Datenschutz
Bei der entwickelten Anwendung handelt es sich um einen Prototyp zu Demonstrationszwecken. Es werden keine echten personenbezogenen Daten verarbeitet oder gespeichert. Die Nutzerauthentifizierung über Firebase ist rein exemplarisch und nutzt keine realen Nutzerkonten.

Der vollständige Quellcode ist in diesem GitHub-Repository abgelegt. Die Struktur orientiert sich an den Prinzipien des Domain-Driven Design und ist wie folgt aufgebaut:

```text
doodle/
├── app/                  # Die Flutter-Anwendung
│   └── lib/              # Dart Code
│       ├── core/  
│       └── bounded_contexts/ 
│           ├── auth/
│           ├── user/
│           ├── course/
│           ├── task/
│           ├── email/
│           ├── calendar/
│           └── ...
├── auth_module/          # Eigenständiges Dart-Paket für den Auth Bounded Context
├── user_module/          # Eigenständiges Dart-Paket für den User Bounded Context
├── course_module/        # Eigenständiges Dart-Paket für den Course Bounded Context
├── task_module/          # Eigenständiges Dart-Paket für den Course Bounded Context
├── email_module/         # Eigenständiges Dart-Paket für den Email Bounded Context
├── calendar_module/      # Eigenständiges Dart-Paket für den Calendar Bounded Context
```