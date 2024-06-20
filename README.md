[![Auto-update Lucide Icons and Generate Swift Files](https://github.com/JakubMazur/lucide-icons-swift/actions/workflows/main.yml/badge.svg)](https://github.com/JakubMazur/lucide-icons-swift/actions/workflows/main.yml)

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

## Usage for iOS

For iOS, the `UIImage` extension provides a convenient initializer that loads images by their Lucide ID directly from the module's bundle:

```swift
import UIKit

let image: UIImage = Lucide.tada

if let icon: UIImage? = .init(lucideId: "tada") {
    // Use your icon
}
```

## Usage for macOS

For macOS, the NSImage extension offers a static function that fetches images by their Lucide ID from the module’s bundle:

```swift
import AppKit

let image: NSImage = Lucide.tada

if let icon = NSImage.image(lucideId: "yourIconId") {
    // Use your icon
}
```

## Usage for SwiftUI

```swift
import SwiftUI
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

struct ContentView: View {
    var body: some View {
        #if canImport(UIKit)
        if let uiImage = UIImage(lucideId: "tada") {
            Image(uiImage: uiImage)
        }
        #elseif canImport(AppKit)
        if let nsImage = NSImage.image(lucideId: "tada") {
            Image(nsImage: nsImage)
        }
        #endif
    }
}
```

## Viewing All Icons

You can view all available icons at [lucide.dev/icons](https://lucide.dev/icons).

Enjoy using Lucide Icons in your Swift projects!
