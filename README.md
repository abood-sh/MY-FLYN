# MY-FLYN Application Overview

## Purpose and Scope
This document provides a high-level overview of the MY-FLYN Flutter application, summarizing its purpose, architecture, and core technologies. MY-FLYN is a mobile application designed for user profile management and campaign tracking with Korean localization support.

## Application Overview
MY-FLYN is a Flutter-based mobile application that serves as a comprehensive platform for user profile management and campaign tracking. The application features a Korean-localized interface using the Pretendard font family and implements a modern material design aesthetic with a custom mauve color scheme.

video: https://github.com/user-attachments/assets/a2c219e3-1f8a-4545-a2f9-c4a1c6609573 

apk app: https://drive.google.com/file/d/14xGodG1Edx-ghc1Cg3BC1-DT1YD34Y8e/view?usp=sharing


The application name "my_flyn" as defined in 
`android/app/src/main/AndroidManifest.xml`
suggests a personalized platform, while the architecture indicates functionality focused on user data management, campaign organization, and media handling capabilities.

### Core Application Characteristics:
- **Platform:** Flutter cross-platform mobile application  
- **Localization:** Korean language support with Pretendard typography  
- **Architecture:** Feature-based modular design with centralized routing  
- **State Management:** GetX pattern for reactive state management  
- **UI Framework:** Material Design with custom theming  

---

## Technology Stack and Dependencies

### Application Technology Stack
| Technology     | Version | Purpose |
|----------------|---------|---------|
| Flutter SDK    | ^3.8.1  | Cross-platform mobile framework |
| GetX           | ^4.7.2  | State management and navigation |
| ScreenUtil     | ^5.9.3  | Responsive design and screen adaptation |
| Flutter SVG    | ^2.0.13 | SVG asset rendering |
| Image Picker   | ^1.2.0  | Camera and gallery access |

### Responsive Design Configuration:
- Design size: 375x812 (iPhone X/11 Pro dimensions)  
- Minimum text adaptation enabled  
- Split screen mode support  

---

## Application Architecture Overview

### High-Level System Architecture
MY-FLYN follows a layered architectural pattern with clear separation between foundation, infrastructure, and feature layers:  

<img width="1700" height="715" alt="image" src="https://github.com/user-attachments/assets/cf72d9f3-19a6-418d-abd3-0cbb05af088b" />

### Application Initialization Flow
The application follows a structured initialization sequence:

1. **Bootstrap:** `main()` function creates `MyFlyn` widget with `AppRouter` dependency injection  
2. **Framework Setup:** `ScreenUtilInit` configures responsive design parameters  
3. **App Container:** `GetMaterialApp` initializes GetX framework with theme and routing  
4. **Initial Navigation:** Application launches to `FlynPage` as the primary entry point  

---

## Main Application Features

### Primary Feature Modules
The application is organized into distinct feature modules, each serving specific user needs:

| Feature Module       | Primary Component        | Purpose |
|----------------------|--------------------------|---------|
| Flyn Hub             | FlynPage                 | Main dashboard and navigation center |
| Campaign Management  | CampaignPage             | Campaign tracking and organization |
| User Profile         | PersonalInformationPage  | Personal information management |
| Account Setup        | BaseInfoPage             | Basic user information entry |
| Security             | SetPasswordPage          | Password management and authentication |

### Navigation and User Flow
The application implements a hub-and-spoke navigation pattern centered around the FlynPage:  

<img width="1448" height="773" alt="image" src="https://github.com/user-attachments/assets/0623a0da-452d-44dc-ac9e-f3a52fa449ec" />

---

## Korean Localization and Design

### Typography and Localization
MY-FLYN implements Korean localization through several key design decisions:

- **Primary Font:** Pretendard font family with multiple weights (400, 500, 600, 700)  
- **Material Design:** Custom color scheme based on `ColorsManager.mainMauve`  
- **Responsive Design:** Optimized for Korean text rendering with ScreenUtil adaptation  

The Pretendard font is specifically designed for Korean typography and provides excellent readability for Hangul characters while maintaining compatibility with Latin text.  

---

## Development and Quality Approach

### Architecture Patterns
The application demonstrates several modern Flutter development practices:

- **Dependency Injection:** `AppRouter` passed through constructor injection  
- **State Management:** GetX pattern for reactive programming  
- **Feature Modularity:** Clear separation of concerns between feature modules  
- **Responsive Design:** Consistent screen adaptation across device sizes  
- **Asset Management:** Organized asset structure for images and SVG files  

---

## Platform Configuration
The Android configuration reveals the application's intended capabilities:

- **Internet Access:** Network connectivity for data synchronization  
- **Camera Access:** Image capture functionality  
- **Storage Access:** File management and media storage  
- **Flutter Embedding:** Modern Flutter Android embedding (version 2)  

This architectural foundation supports a scalable, maintainable application designed for Korean users with comprehensive profile and campaign management capabilities.  

---

## Core Infrastructure Dependencies
The application implements several key infrastructure systems:  

<img width="1239" height="662" alt="image" src="https://github.com/user-attachments/assets/0e152843-f93c-4fa7-a522-f12af6039d2a" />
