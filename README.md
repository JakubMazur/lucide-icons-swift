# Lucide Icons for Swift Package Manager

This repository integrates [Lucide Icons](https://lucide.dev) and makes them available through the Swift Package Manager (SPM). With this package, you can easily use Lucide icons in your macOS and iOS applications.

## Installation Guide

To install this package using Swift Package Manager, follow these steps:

1. Open your Xcode project.
2. Select your project in the Project Navigator.
3. Choose the `Package Dependencies` tab.
4. Click the `+` button to add a new package dependency.
5. Enter the URL of this repository: `https://github.com/yourusername/lucide-icons-swift.git`.
6. Select the version you want to use, then click `Add Package`.

## Usage

After installing the package, you can start using Lucide icons in your project.

### Importing the Package

In your Swift files, import the package:

```swift
import LucideIcons
```

## Using Icons

You can use the icons in your macOS or iOS applications as follows:
```swift
myImageView.image = Lucide.tada
```

## Example

```swift
import LucideIcons

struct ContentView: View {
    var body: some View {
        VStack {
            Image(nsImage: Lucide.tada) // For macOS
            Image(uiImage: Lucide.tada) // For iOS
            Text("Hello, Lucide Icons!")
        }
    }
}
```

Replace tada with any icon name you want to use. The icons are available as static properties on the Lucide class.

## Viewing All Icons

You can view all available icons at [lucide.dev/icons](https://lucide.dev/icons).

Enjoy using Lucide Icons in your Swift projects!
