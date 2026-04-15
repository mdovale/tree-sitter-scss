// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TreeSitterSCSS",
    products: [
        .library(name: "TreeSitterSCSS", targets: ["TreeSitterSCSS"]),
    ],
    dependencies: [
        .package(name: "SwiftTreeSitter", url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterSCSS",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                "src/scanner.c",
            ],
            resources: [
                .copy("queries"),
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")],
        ),
        .testTarget(
            name: "TreeSitterSCSSTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterSCSS",
            ],
            path: "bindings/swift/TreeSitterSCSSTests",
        ),
    ],
    cLanguageStandard: .c11,
)
