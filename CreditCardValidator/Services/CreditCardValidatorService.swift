import Foundation

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
    case unknown
}

class CreditCardValidatorService {
    
    func validate(cardNumber: String) -> (isValid: Bool, cardType: CardType) {
        let cleanedNumber = cardNumber.replacingOccurrences(of: " ", with: "")
        
        guard isValidLength(cleanedNumber) else {
            return (false, .unknown)
        }
        
        let cardType = detectCardType(cardNumber: cleanedNumber)
        let isValid = luhnCheck(cardNumber: cleanedNumber)
        
        return (isValid, cardType)
    }
    
    private func isValidLength(_ cardNumber: String) -> Bool {
        let length = cardNumber.count
        return (length >= 13 && length <= 19)
    }
    
    private func detectCardType(cardNumber: String) -> CardType {
        let firstDigit = cardNumber.prefix(1)
        let firstTwoDigits = cardNumber.prefix(2)
        
        switch firstDigit {
        case "4":
            return .visa
        case "5":
            return .mastercard
        case "6":
            if cardNumber.hasPrefix("6011") || cardNumber.hasPrefix("65") {
                return .discover
            }
            return .elo
        case "3":
            if firstTwoDigits == "34" || firstTwoDigits == "37" {
                return .americanExpress
            } else if firstTwoDigits == "36" || firstTwoDigits == "38" {
                return .dinersClub
            } else if firstTwoDigits == "35" {
                return .jcb
            }
            return .unknown
        case "2":
            return .voyager
        default:
            return .unknown
        }
    }
    
    private func luhnCheck(cardNumber: String) -> Bool {
        let digits = cardNumber.compactMap { Int(String($0)) }
        let checksum = digits.reversed().enumerated().reduce(0) { (sum, element) in
            let (index, digit) = element
            if index % 2 == 1 {
                let doubled = digit * 2
                return sum + (doubled > 9 ? doubled - 9 : doubled)
            }
            return sum + digit
        }
        return checksum % 10 == 0
    }
}