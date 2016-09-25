import XCTest
@testable import CoglPango

class CoglTests: XCTestCase {
    func testFixedPoint() {
        let x = Fixed(doubleValue: 0.5)
        let y = mul(x, Fixed(intValue: 2))
        XCTAssertEqual(y.intValue, 1)
    }


    static var allTests : [(String, (CoglTests) -> () throws -> Void)] {
        return [
            ("testFixedPoint", testFixedPoint),
        ]
    }
}
