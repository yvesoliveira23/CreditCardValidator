struct CreditCard {
    var number: String
    var expiryDate: String
    var cardType: CardType

    enum CardType {
        case visa
        case mastercard
        case elo
        case americanExpress
        case discover
        case hipercard
        case dinersClub
        case enRoute
        case jcb
        case voyager
        case hiperCard
    }

    func isValid() -> Bool {
        return validateCardNumber() && validateExpiryDate()
    }

    private func validateCardNumber() -> Bool {
        // Implement Luhn algorithm for card number validation
        let digits = number.compactMap { Int(String($0)) }
        let checksum = digits.reversed().enumerated().reduce(0) { (sum, element) in
            let (index, digit) = element
            let value = (index % 2 == 1) ? digit * 2 : digit
            return sum + (value > 9 ? value - 9 : value)
        }
        return checksum % 10 == 0
    }

    private func validateExpiryDate() -> Bool {
        // Implement expiry date validation logic
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/yy"
        guard let expiry = dateFormatter.date(from: expiryDate) else { return false }
        return expiry > Date()
    }
}