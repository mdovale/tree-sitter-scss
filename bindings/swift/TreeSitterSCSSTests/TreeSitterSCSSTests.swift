import XCTest
import SwiftTreeSitter
import TreeSitterSCSS

final class TreeSitterSCSSTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_scss())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading SCSS grammar")
    }
}
