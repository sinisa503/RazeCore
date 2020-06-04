import XCTest
@testable import RazeCore

final class RazeCoreTests: XCTestCase {
  
  func testColorRedEqual() {
    let color = RazeCore.colorFromHexDecString("FF0000")
    XCTAssertEqual(color, UIColor.red)
  }
  
  func testRazeCoreColorsAreEqual() {
    let color = RazeCore.colorFromHexDecString("006736")
    XCTAssertEqual(color, RazeCore.razeColor)
  }
  
  func testSecondaryRazeColorsAreEqual() {
    let color = RazeCore.colorFromHexDecString("FCFFFD")
    XCTAssertEqual(color, RazeCore.secondaryRazeColor)
  }
  
    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testRazeCoreColorsAreEqual", testRazeCoreColorsAreEqual)
    ]
}
