# 100-days-of-swift

### Going through the 100 Days of Swift course

- [Hacking Swift: 100 Days of SwiftUI](https://www.hackingwithswift.com/100/swiftui)
- [Roadmap: iOS Developer](https://roadmap.sh/ios)
- [Apple Developer](https://developer.apple.com/)
- [Apple Learn](https://developer.apple.com/learn/)
- [iOS Icons Pack Download](https://developer.apple.com/sf-symbols/)
- [Free Stanford University Course](https://cs193p.sites.stanford.edu/2023)

### Demo Tutorials

- [01 Emoji Selector App](https://youtu.be/nqTcAzPS3oc?si=ht1HXpnLeILSAGSR)
- [02 Code with Chris](https://www.youtube.com/playlist?list=PLMRqhzcHGw1Y5Cluhf7pKRNZtKaA3Q4kg)
- [03 R&M App](https://www.youtube.com/playlist?list=PL5PR3UyfTWvdl4Ya_2veOB6TM16FXuv4y)
- [04 Storyboard Quick Demo](https://youtu.be/oZGAicT2zbg?si=z65NFC9qt4MjcTPL)
- [05 ToDo App](https://www.youtube.com/playlist?list=PLwvDm4VfkdpheGqemblOIA7v3oq0MS30i)
- [06 Intro to Programmatic UI](https://youtu.be/_U6_l58Cv4E?si=qJabWFLW9GNkSeeX)

# Setup CocoaPods

- Install / Update Homebrew
  - [Homebrew Installation Guide](https://brew.sh/)
  - [Updating/Upgrading Homebrew](https://osxdaily.com/2021/02/13/how-update-homebrew-mac/)
- Install Ruby through Homebrew
  - Overrides the Ruby that comes with Mac
  - [Installation and Path setup](https://mac.install.guide/ruby/13)
- Install CocoaPods
  - [Installation](https://cocoapods.org/)
  - `pod --version` to confirm CocoaPods installed

# Setup iPhone

- Turn on Developer Mode on the iPhone:
  - Settings > Privacy & Security > Developer Mode
  - Requires a restart whenever turned on or off
- Add developer account to trusted accounts on iPhone:
  - Settings > General > VPN & Device Management
  - Select the trusted accounts under Developer App  

# XCode Layout Items

### XCode shortcuts

- [XCode online download](https://developer.apple.com/download/all/)
  - Alternative to using App Store, requires Apple ID login
- iPhone Preview, toggle dark/light modes: `CMD + SHIFT + A`
- Emoji Menu: `CTRL + CMD + Space`
- Create Documentation Comment Line: `Option + CMD + /`
- Documentation
  - Documentation built into XCode
  - Top Bar > Window > Developer Documentation
  - Also found in the Inspector panel
  - Hold down OPTION key while hovering over for panel

### Sections

- File Navigator
  - All project files
  - Navigation buttons
- Editor Area
- Utility / Inspector Area
  -  Inspector for setting object values manually
  -  Quick Help inspector for objects
- Toolbar
  - Run button
  - Simulator selector
  - "+" Button to get to the Library

### Project Files

- Root File (name of project) .xcodeproj file extension
  - Has project settings / build settings
  - iOS version
  - Horizontal / Vertical settings
- Main File
  - .swift file extension
  - Named after project file
  - Has the Main start point for the project, entry point of the App
  - `@main`
  - `struct projectName: App`
  - Calls the View files, ex `ContentView()`
- Asset Library 

### Project Example

- DemoProject (.xcodeproj)
  - DemoProject
    - DemoProject.swift (main)
   
# XCode Deploying Apps

### Schemes

- Setup scheme settings
  - Top bar > Product > Scheme > Edit Scheme
  - Can set Build/Run/Archive to Debug/Release/Etc
- Make sure you have the right scheme selected before archiving   

### Archive

- Set settings in General
  - Minimum iOS Version deployment
  - Display Name
  - App Icon
- Archive the app
  - Top Bar > Product > Archive
 
# Apple Store Connect

- Add users by email
  - Top Bar > Users and Access
  - Click "+" icon to add users
  - Users must be added in order to be added to a test flight
  - User has to accept email invitation
-  Add User to TestFlight
  - Open App: Top Bar > Apps > Select App > TestFlight > Side Bar > Testers > Internal Testing
  - Create a Group and add that group to the testing
  - Select the Group and add users to the group
- Users installing with TestFlight
  - Users accept invitation to test app
  - Users install TestFlight app on iPhone (on App store, developed by Apple)
  - Within TestFlight App, Users see a list of all Apps invited to test
  - Can install from the list 

### TestFlight Notes

- Archiving an update to App Store Connect, automatically sends the update to all TestFlight testers
  - Users have to restart App to download and see new update
- Previous Builds and Previous Versions all available to install
   
# UI Notes

- Basics
  -  `Views` are the elements that users see on the screen
  -  `Modifiers` are applied to the views to change their look and feek
  -  `Container view` (`Layout Container`) organize and arrange the views
     -  also considered as a view

# Storyboard Notes

- Hold `CTRL` and drag Storyboard item into View.swift file
- DOT icon on line number column indicates storyboard item
- Can also click storyboard item and look at inspector for where it connects to .swift file

# Android

### Android Tutorials

- [Roadmap: Android Developer](https://roadmap.sh/android)
- [Philipp Lackner YouTube](https://www.youtube.com/@PhilippLackner/playlists)
- [Android Developers Google](https://developer.android.com/courses)
- [Kotlin Lang Org](https://kotlinlang.org/)
- [Hyperskill Kotlin](https://hyperskill.org/categories/4)
