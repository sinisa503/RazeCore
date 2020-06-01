import XCTest
@testable import RazeCore

final class RazeCoreTests: XCTestCase {
  
  func testColorRedEqual() {
    let color = RazeCore.colorFromHexDecString("FF0000")
    XCTAssertEqual(color, UIColor.red)
  }
  
    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
    ]
}
