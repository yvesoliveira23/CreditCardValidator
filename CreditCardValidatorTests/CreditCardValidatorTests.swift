import XCTest

// The @testable import statement allows the test target to access internal entities of the CreditCardValidator module.
@testable import CreditCardValidator

class CreditCardValidatorTests: XCTestCase {
    var validatorService: CreditCardValidatorService!

    // MARK: - Setup and Teardown
    override func setUp() {
        super.setUp()
        validatorService = CreditCardValidatorService()
    }

    override func tearDown() {
        validatorService = nil
        super.tearDown()
    }

    // MARK: - Visa card number validation tests
    func testGivenVisaCardNumber_WhenValid_ThenReturnsTrue() {
        // Given
        let cardNumber = "4111111111111111"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertTrue(result, "Visa card should be valid")
    }

    func testGivenVisaCardNumber_WhenInvalid_ThenReturnsFalse() {
        // Given
        let cardNumber = "4111111111111112"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertFalse(result, "Visa card should be invalid")
    }

    // MARK: - Mastercard number validation tests
    func testGivenMastercardNumber_WhenValid_ThenReturnsTrue() {
        // Given
        let cardNumber = "5500000000000004"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertTrue(result, "Mastercard should be valid")
    }

    func testGivenMastercardNumber_WhenInvalid_ThenReturnsFalse() {
        // Given
        let cardNumber = "5500000000000005"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertFalse(result, "Mastercard should be invalid")
    }

    // MARK: - American Express card number validation tests
    func testGivenAmericanExpressNumber_WhenValid_ThenReturnsTrue() {
        // Given
        let cardNumber = "378282246310005"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertTrue(result, "American Express card should be valid")
    }

    func testGivenAmericanExpressNumber_WhenInvalid_ThenReturnsFalse() {
        // Given
        let cardNumber = "378282246310006"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertFalse(result, "American Express card should be invalid")
    }

    // MARK: - Discover card number validation tests
    func testGivenDiscoverCardNumber_WhenValid_ThenReturnsTrue() {
        // Given
        let cardNumber = "6011000990139424"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertTrue(result, "Discover card should be valid")
    }

    func testGivenDiscoverCardNumber_WhenInvalid_ThenReturnsFalse() {
        // Given
        let cardNumber = "6011000990139425"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertFalse(result, "Discover card should be invalid")
    }

    // MARK: - Diners Club card number validation tests
    func testGivenDinersClubNumber_WhenValid_ThenReturnsTrue() {
        // Given
        let cardNumber = "30569309025904"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertTrue(result, "Diners Club card should be valid")
    }

    func testGivenDinersClubNumber_WhenInvalid_ThenReturnsFalse() {
        // Given
        let cardNumber = "30569309025905"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertFalse(result, "Diners Club card should be invalid")
    }

    // MARK: - JCB card number validation tests
    func testGivenJCBNumber_WhenValid_ThenReturnsTrue() {
        // Given
        let cardNumber = "3530111333300000"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertTrue(result, "JCB card should be valid")
    }

    func testGivenJCBNumber_WhenInvalid_ThenReturnsFalse() {
        // Given
        let cardNumber = "3530111333300001"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertFalse(result, "JCB card should be invalid")
    }
    // MARK: - Elo card number validation tests
    func testGivenEloCardNumber_WhenValid_ThenReturnsTrue() {
        // Given
        let cardNumber = "5066991111111118"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertTrue(result, "Elo card should be valid")
    }

    func testGivenEloCardNumber_WhenInvalid_ThenReturnsFalse() {
        // Given
        let cardNumber = "5066991111111119"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertFalse(result, "Elo card should be invalid")
    }

    // MARK: - Hipercard card number validation tests
    func testGivenHipercardNumber_WhenValid_ThenReturnsTrue() {
        // Given
        let cardNumber = "6062825624254001"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertTrue(result, "Hipercard should be valid")
    }

    func testGivenHipercardNumber_WhenInvalid_ThenReturnsFalse() {
        // Given
        let cardNumber = "6062825624254002"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertFalse(result, "Hipercard should be invalid")
    }

    // MARK: - EnRoute card number validation tests
    func testGivenEnRouteCardNumber_WhenValid_ThenReturnsTrue() {
        // Given
        let cardNumber = "201400000000009"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertTrue(result, "EnRoute card should be valid")
    }

    func testGivenEnRouteCardNumber_WhenInvalid_ThenReturnsFalse() {
        // Given
        let cardNumber = "201400000000010"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertFalse(result, "EnRoute card should be invalid")
    }

    // MARK: - Voyager card number validation tests
    func testGivenVoyagerCardNumber_WhenValid_ThenReturnsTrue() {
        // Given
        let cardNumber = "869926275400000"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertTrue(result, "Voyager card should be valid")
    }

    func testGivenVoyagerCardNumber_WhenInvalid_ThenReturnsFalse() {
        // Given
        let cardNumber = "869926275400001"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertFalse(result, "Voyager card should be invalid")
    }

    // MARK: - HiperCard card number validation tests
    func testGivenHiperCardNumber_WhenValid_ThenReturnsTrue() {
        // Given
        let cardNumber = "6370950000000005"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertTrue(result, "HiperCard should be valid")
    }

    func testGivenHiperCardNumber_WhenInvalid_ThenReturnsFalse() {
        // Given
        let cardNumber = "6370950000000006"

        // When
        let result = validatorService.validate(cardNumber: cardNumber)

        // Then
        XCTAssertFalse(result, "HiperCard should be invalid")
    }
}
