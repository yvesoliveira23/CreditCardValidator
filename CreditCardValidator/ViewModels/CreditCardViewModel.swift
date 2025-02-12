import Foundation
import Combine

class CreditCardViewModel: ObservableObject {
    @Published var cardNumber: String = ""
    @Published var expiryDate: String = ""
    @Published var cardType: String = ""
    @Published var isValid: Bool = false
    @Published var validationMessage: String = ""

    private var cancellables = Set<AnyCancellable>()
    private let validatorService = CreditCardValidatorService()

    init() {
        setupBindings()
    }

    private func setupBindings() {
        $cardNumber
            .combineLatest($expiryDate)
            .sink { [weak self] cardNumber, expiryDate in
                self?.validateCard(cardNumber: cardNumber, expiryDate: expiryDate)
            }
            .store(in: &cancellables)
    }

    private func validateCard(cardNumber: String, expiryDate: String) {
        guard !cardNumber.isEmpty, !expiryDate.isEmpty else {
            isValid = false
            validationMessage = "Please enter card number and expiry date."
            return
        }

        if let cardType = validatorService.detectCardType(cardNumber: cardNumber) {
            self.cardType = cardType
            isValid = validatorService.validateCardNumber(cardNumber: cardNumber)
            validationMessage = isValid ? "Valid \(cardType) card." : "Invalid card number."
        } else {
            isValid = false
            validationMessage = "Unknown card type."
        }
    }
}