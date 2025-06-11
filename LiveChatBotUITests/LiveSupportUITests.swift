//
//  LiveChatBot
//
//  Created by ozzmhmt on 10/06/25.
//

import XCTest

final class LiveSupportUITests: XCTestCase {
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    func test_InitialView_ShouldShowStartStep() throws {
        // Given
        let titleLabel = app.staticTexts["start_title"]
        let startButton = app.buttons["start_button"]
        
        // Then
        XCTAssertTrue(titleLabel.exists)
        XCTAssertTrue(startButton.exists)
        XCTAssertEqual(titleLabel.label, "Hoş Geldiniz")
    }
    
    func test_ButtonTap_ShouldNavigateToNextStep() throws {
        // Given
        let startButton = app.buttons["start_button"]
        
        // When
        startButton.tap()
        
        // Then
        let nextStepTitle = app.staticTexts["next_step_title"]
        XCTAssertTrue(nextStepTitle.exists)
    }
    
    func test_EndConversation_ShouldShowEndMessage() throws {
        // Given
        let endButton = app.buttons["end_conversation_button"]
        
        // When
        endButton.tap()
        
        // Then
        let endMessage = app.staticTexts["end_message"]
        XCTAssertTrue(endMessage.exists)
    }
} 