// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    // Public variables
    string public tokenName;
    string public tokenAbbrv;
    uint256 public totalSupply;

    // Mapping of addresses to balances
    mapping(address => uint256) public balances;

    // Constructor to initialize token details
    constructor(string memory _tokenName, string memory _tokenAbbrv, uint256 _totalSupply) {
        tokenName = _tokenName;
        tokenAbbrv = _tokenAbbrv;
        totalSupply = _totalSupply;
        // Initially, assign the total supply to the contract deployer
        balances[msg.sender] = _totalSupply;
    }

    // Mint function
    function mint(address _receiver, uint256 _value) public {
        // Increase total supply
        totalSupply += _value;
        // Increase balance of the sender address
        balances[_receiver] += _value;
    }

    // Burn function
    function burn(address _sender, uint256 _value) public {
        // Check if the sender has sufficient balance
        require(balances[_sender] >= _value, "Insufficient balance");
        
        // Deduct value from total supply
        totalSupply -= _value;
        // Deduct value from the balance of the sender
        balances[_sender] -= _value;
    }
}
