//
//  LiveChatBot
//
//  Created by ozzmhmt on 10/06/25.
//

import XCTest
@testable import LiveChatBot

final class LiveSupportTests: XCTestCase {
    var sut: LiveSupportInteractor!
    var mockPresenter: MockLiveSupportPresenter!
    var mockWebSocketService: MockWebSocketService!
    
    override func setUp() {
        super.setUp()
        mockPresenter = MockLiveSupportPresenter()
        mockWebSocketService = MockWebSocketService()
        sut = LiveSupportInteractor(webSocketService: mockWebSocketService)
        sut.presenter = mockPresenter
    }
    
    override func tearDown() {
        sut = nil
        mockPresenter = nil
        mockWebSocketService = nil
        super.tearDown()
    }
    
    func test_InitialStep_ShouldLoadCorrectly() {
        // Given
        let expectation = XCTestExpectation(description: "Load initial step")
        
        // When
        sut.connectWebSocket()
        
        // Then
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            XCTAssertNotNil(self.mockPresenter.receivedStep)
            XCTAssertEqual(self.mockPresenter.receivedStep?.id, "start")
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 2.0)
    }
    
    func test_ButtonSelection_ShouldSendCorrectStep() {
        // Given
        let button = LiveSupportButton(id: "test_button", title: "Test", nextStep: "next_step")
        let expectation = XCTestExpectation(description: "Send step")
        
        // When
        sut.sendStep(LiveSupportStep(id: "next_step", title: "Next Step", buttons: []))
        
        // Then
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            XCTAssertTrue(self.mockWebSocketService.didSendMessage)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 2.0)
    }
}

// MARK: - Mock Classes
class MockLiveSupportPresenter: LiveSupportPresenterProtocol {
    var receivedStep: LiveSupportStep?
    
    func didReceiveStep(_ step: LiveSupportStep) {
        receivedStep = step
    }
    
    func startFlow() {}
    func didSelectButton(_ button: LiveSupportButton) {}
    func endConversation() {}
}

class MockWebSocketService: WebSocketServiceProtocol {
    var didSendMessage = false
    
    func connect() {}
    func disconnect() {}
    func send(_ message: String) {
        didSendMessage = true
    }
    func onMessage(_ handler: @escaping (String) -> Void) {}
} 