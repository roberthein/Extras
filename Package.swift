// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Extras",
    platforms: [ .macOS(.v10_14), .iOS(.v10), .tvOS(.v10)],
    products: [
        .library(name: "Extras", targets: ["Extras"])
    ],
    targets: [
        .target(name: "Extras", path: "Extras/Classes")
    ]
)
