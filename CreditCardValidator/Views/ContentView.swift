import SwiftUI

struct ContentView: View {
    @State private var cardNumber: String = ""
    @State private var expiryDate: String = ""
    @State private var cardType: String = ""
    @State private var validationMessage: String = ""
    
    var body: some View {
        VStack {
            TextField("Card Number", text: $cardNumber)
                .padding()
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Expiry Date (MM/YY)", text: $expiryDate)
                .padding()
                .keyboardType(.numbersAndPunctuation)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: validateCard) {
                Text("Validate Card")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            Text(validationMessage)
                .padding()
                .foregroundColor(.red)
        }
        .padding()
    }
    
    private func validateCard() {
        let validatorService = CreditCardValidatorService()
        if let cardType = validatorService.getCardType(cardNumber) {
            if validatorService.validate(cardNumber) {
                validationMessage = "\(cardType) card is valid."
            } else {
                validationMessage = "Invalid card number."
            }
        } else {
            validationMessage = "Unknown card type."
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}