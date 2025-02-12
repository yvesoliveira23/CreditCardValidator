import XCTest

class CreditCardValidatorUITests: XCTestCase {

    // MARK: - Setup and Teardown
    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // Clean up code if needed
    }

    // MARK: - Visa card number validation tests
    func testGivenVisaCardNumber_WhenValid_ThenDisplaysValidVisaCard() throws {
        // Given
        let app = XCUIApplication()
        app.launch()
        let cardNumberTextField = app.textFields["CardNumber"]
        cardNumberTextField.tap()
        cardNumberTextField.typeText("4111111111111111")

        // When
        let validateButton = app.buttons["Validate"]
        validateButton.tap()

        // Then
        let resultLabel = app.staticTexts["ResultLabel"]
        XCTAssertEqual(resultLabel.label, "Valid Visa Card")
    }

    // MARK: - Invalid card number validation tests
    func testGivenInvalidCardNumber_WhenInvalid_ThenDisplaysInvalidCard() throws {
        // Given
        let app = XCUIApplication()
        app.launch()
        let cardNumberTextField = app.textFields["CardNumber"]
        cardNumberTextField.tap()
        cardNumberTextField.typeText("1234567890123456")

        // When
        let validateButton = app.buttons["Validate"]
        validateButton.tap()

        // Then
        let resultLabel = app.staticTexts["ResultLabel"]
        XCTAssertEqual(resultLabel.label, "Invalid Card")
    }

    // MARK: - Mastercard number validation tests
    func testGivenMastercardNumber_WhenValid_ThenDisplaysValidMasterCard() throws {
        // Given
        let app = XCUIApplication()
        app.launch()
        let cardNumberTextField = app.textFields["CardNumber"]
        cardNumberTextField.tap()
        cardNumberTextField.typeText("5500000000000004")

        // When
        let validateButton = app.buttons["Validate"]
        validateButton.tap()

        // Then
        let resultLabel = app.staticTexts["ResultLabel"]
        XCTAssertEqual(resultLabel.label, "Valid MasterCard")
    }

    // MARK: - American Express card number validation tests
    func testGivenAmericanExpressNumber_WhenValid_ThenDisplaysValidAmericanExpressCard() throws {
        // Given
        let app = XCUIApplication()
        app.launch()
        let cardNumberTextField = app.textFields["CardNumber"]
        cardNumberTextField.tap()
        cardNumberTextField.typeText("378282246310005")
        
        // When
        let validateButton = app.buttons["Validate"]
        validateButton.tap()
        
        // Then
        let resultLabel = app.staticTexts["ResultLabel"]
        XCTAssertEqual(resultLabel.label, "Valid American Express Card")
    }

    // MARK: - Discover card number validation tests
    func testGivenDiscoverNumber_WhenValid_ThenDisplaysValidDiscoverCard() throws {
        // Given
        let app = XCUIApplication()
        app.launch()
        let cardNumberTextField = app.textFields["CardNumber"]
        cardNumberTextField.tap()
        cardNumberTextField.typeText("6011111111111117")
        
        // When
        let validateButton = app.buttons["Validate"]
        validateButton.tap()
        
        // Then
        let resultLabel = app.staticTexts["ResultLabel"]
        XCTAssertEqual(resultLabel.label, "Valid Discover Card")
    }

    // MARK: - Diners Club card number validation tests
    func testGivenDinersClubNumber_WhenValid_ThenDisplaysValidDinersClubCard() throws {
        // Given
        let app = XCUIApplication()
        app.launch()
        let cardNumberTextField = app.textFields["CardNumber"]
        cardNumberTextField.tap()
        cardNumberTextField.typeText("30569309025904")
        
        // When
        let validateButton = app.buttons["Validate"]
        validateButton.tap()
        
        // Then
        let resultLabel = app.staticTexts["ResultLabel"]
        XCTAssertEqual(resultLabel.label, "Valid Diners Club Card")
    }
}
