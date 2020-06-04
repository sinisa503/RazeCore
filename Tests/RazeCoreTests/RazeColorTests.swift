import XCTest
@testable import RazeCore

final class RazeColorTests: XCTestCase {
  
  func testColorRedEqual() {
    let color = RazeCore.Color.fromHexDecString("FF0000")
    XCTAssertEqual(color, UIColor.red)
  }
  
  func testRazeCoreColorsAreEqual() {
    let color = RazeCore.Color.fromHexDecString("006736")
    XCTAssertEqual(color, RazeCore.Color.razeColor)
  }
  
  func testSecondaryRazeColorsAreEqual() {
    let color = RazeCore.Color.fromHexDecString("FCFFFD")
    XCTAssertEqual(color, RazeCore.Color.secondaryRazeColor)
  }
  
    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testRazeCoreColorsAreEqual", testRazeCoreColorsAreEqual)
    ]
}
