# Instructions

- How to set up a Programmatic UI from storyboard

# Clean up

- Delete main storyboard
- Main File > Targets > Demo06 > Info
  - Delete `Main storyboard file base name`
- Search Project for: "storyboard"
  - File result: Info.plist
  - Delete `Storyboard Name` 

# Setup new Launch settings

- Open `SceneDelegate.swift` file
- Create scene
- `FirstScreen.swift` is the file `ViewController.swift` renamed
- Result:
```
func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
  guard let windowScene = (scene as? UIWindowScene) else { return }
      
  window = UIWindow(frame: windowScene.coordinateSpace.bounds)
  window?.windowScene = windowScene
  window?.rootViewController = FirstScreen()
  window?.makeKeyAndVisible()
}
```

# Set up View Page

- See file: `FirstScreen.swift`

# Add Second Screen

- New File > Cocoa Touch Class
- Reconfigure the `SceneDelegate.swift` file
- Have to change the rootViewController
- New: `window?.rootViewController = UINavigationController(rootViewController: FirstScreen())`
- This adds navigation
