// swift-tools-version:5.3
import PackageDescription

// Transit's patched MapLibre Native iOS build (ios-v6.26.0 + rotate-pixel-offsets + scale-fixed-parts).
// Same shape as maplibre/maplibre-gl-native-distribution, which @maplibre/maplibre-react-native resolves by default.
// Source: https://github.com/piotrski/maplibre-native/tree/transit/rotate-pixel-offsets-6.26.0
let package = Package(
    name: "MapLibre Native",
    products: [
        .library(
            name: "MapLibre",
            targets: ["MapLibre"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "MapLibre",
            url: "https://github.com/piotrski/maplibre-native/releases/download/transit-ios-6.26.0-rotate-2/MapLibre.dynamic.xcframework.zip",
            checksum: "1ea80469c2ba0772ca296c9991ebb85f3ec6dc94335fddc547c31274f1634955")
    ]
)
