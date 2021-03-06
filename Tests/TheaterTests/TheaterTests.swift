//
// Copyright (c) 2016 Huawei PT-Lab Open Source project authors.
// Licensed under Apache License v2.0
//
// TheatorTests.swift
// Test driver for basic actor feature tests 
//

import XCTest
import Foundation
@testable import Theater

class TheaterTests: XCTestCase {
    func testParentChild() {
        let f = Family()
        sleep(1) //Wait for finish
        f.stop()
        sleep(1)

    }
    func testPingPong() {
        let pp = PingPong()
        pp.waitforStop()
    }

    func testGreetings() {
        let sys = GreetingActorController()
        sys.kickoff()
    }

    func testCloudEdge() {
        simpleCase(count:1000)
    }

    static var allTests: [(String, (TheaterTests) -> () throws -> Void)] {
        return [
            ("testParentChild", testParentChild),
            ("testPingPong", testPingPong),
            ("testGreetings", testGreetings),
            ("testCloudEdge", testCloudEdge),
        ]
    }
}
