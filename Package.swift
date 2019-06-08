// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Extras",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "Extras", targets: ["Extras"])
    ],
    targets: [
        .target(name: "Extras", path: "Extras/Classes")
    ]
)
