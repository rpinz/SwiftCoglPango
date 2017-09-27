import XCTest
import Cogl
@testable import CoglPango

class CoglPangoTests: XCTestCase {
    func testFixedPoint() {
        let x = Fixed(doubleValue: 0.5)
        let y = mul(x, Fixed(intValue: 2))
        XCTAssertEqual(y.intValue, 1)
    }


    static var allTests : [(String, (CoglPangoTests) -> () throws -> Void)] {
        return [
            ("testFixedPoint", testFixedPoint),
        ]
    }
}
