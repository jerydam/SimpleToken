# SimpleToken Smart Contract

This Solidity smart contract, named `MyToken`, is a basic implementation of a token with minting and burning functionalities.

## Table of Contents

- [Features](#features)
- [Usage](#usage)
- [Contract Details](#contract-details)
- [Contributing](#contributing)
- [License](#license)

## Features

1. **Token Details**: Public variables (`tokenName`, `tokenAbbrv`, and `totalSupply`) to store information about the token.
2. **Address Balances**: A mapping of addresses to balances (`balances`) is used to keep track of the token balances of different addresses.
3. **Mint Function**: The contract provides a `mint` function that allows the creation of new tokens. It increases the total supply and the balance of the specified address.
4. **Burn Function**: The contract provides a `burn` function to destroy tokens. It decreases the total supply and the balance of the specified address, with conditional checks to ensure the sender's balance is sufficient.

## Usage

1. **Deploy Contract**: Deploy the contract to a compatible blockchain (e.g., Ethereum) using a suitable development environment (e.g., Remix, Truffle).

2. **Initialize Token Details**: Pass the token name, abbreviation, and initial total supply to the constructor during deployment.

3. **Mint Tokens**: Use the `mint` function to create new tokens. Provide the receiver's address and the amount of tokens to mint.

4. **Burn Tokens**: Use the `burn` function to destroy tokens. Specify the sender's address and the amount of tokens to burn, ensuring the sender has a sufficient balance.

## Contract Details

- `tokenName`: Public variable representing the name of the token.
- `tokenAbbrv`: Public variable representing the abbreviation of the token.
- `totalSupply`: Public variable representing the total supply of the token.
- `balances`: Mapping variable associating addresses with token balances.
- `mint(address _receiver, uint256 _value)`: Mint function to create new tokens and increase the balance of the specified address.
- `burn(address _sender, uint256 _value)`: Burn function to destroy tokens, deducting from the total supply and sender's balance.

## Contributing

Feel free to contribute by opening issues or creating pull requests. For major changes, please discuss them first in an issue.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
