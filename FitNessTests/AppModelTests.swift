//
//  AppModelTests.swift
//  FitNessTests
//
//  Created by Anang Nugraha on 25/09/21.
//  Copyright © 2021 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess

class AppModelTests: XCTestCase {
  
  var sut: AppModel!
  
  override func setUp() {
    super.setUp()
    sut = AppModel()
  }

  func testAppModel_whenInitialized_isInNotStartedState()  {
    let initialState = sut.appState
    XCTAssertEqual(initialState, AppState.completed)
  }
  
  func testAppModel_whenStarted_isInInProgressState() {
    //given
    let expectedState = AppState.inProgress
    
    //when
    sut.start()
    
    XCTAssertEqual(sut.appState, expectedState)
  }
}
