# Credit Card Validator

This project is a Swift-based application designed to validate various credit card types, including Visa, Mastercard, Elo, American Express, Discover, Hipercard, Diners Club, EnRoute, JCB, Voyager, and HiperCard. The application provides a user-friendly interface for inputting credit card details and displays validation results based on the entered information.

## Features

- Input fields for credit card number and expiry date.
- Real-time validation of credit card details.
- Support for multiple credit card types.
- Utilizes the Luhn algorithm for credit card number validation.

## Project Structure

- **Models**
  - `CreditCard.swift`: Defines the `CreditCard` struct with properties for card details and validation methods.
  
- **Views**
  - `ContentView.swift`: Contains the main user interface for the application.
  
- **ViewModels**
  - `CreditCardViewModel.swift`: Manages the logic for validating credit card information and updating the UI.
  
- **Services**
  - `CreditCardValidatorService.swift`: Implements the core validation logic for credit card numbers and types.
  
- **Resources**
  - `Assets.xcassets`: Contains image assets and other resources used in the application.
  
- **Tests**
  - `CreditCardValidatorTests.swift`: Contains unit tests for the validation logic.
  - `CreditCardValidatorUITests.swift`: Contains UI tests for the application.

## Setup Instructions

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/CreditCardValidator.git
   ```

2. Open the project in Xcode.

3. Build and run the application on a simulator or a physical device.

## Usage

- Launch the application.
- Enter the credit card number and expiry date in the provided fields.
- The application will validate the input and display the results.

## Testing

To run the unit tests, use the following command in the terminal:
```
xcodebuild test -scheme CreditCardValidatorTests
```

For UI tests, use:
```
xcodebuild test -scheme CreditCardValidatorUITests
```

## License

This project is licensed under the MIT License. See the LICENSE file for more details.