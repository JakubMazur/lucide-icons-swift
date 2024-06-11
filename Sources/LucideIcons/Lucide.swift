// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct Lucide {
	
}

#if canImport(UIKit)
import UIKit
public extension UIImage {
	convenience init?(lucideId: String) {
		self.init(named: lucideId, in: Bundle.module, compatibleWith: nil)
	}
}
#endif

#if canImport(AppKit)
import AppKit
public extension NSImage {
	public static func image(lucideId: String) -> NSImage? {
		Bundle.module.image(forResource: lucideId)
	}
}
#endif
