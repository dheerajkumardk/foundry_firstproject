// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract SimpleStorage {
    // our favouriteNumber
    uint256 public favouriteNumber = 7;
    // greeting
    string public greeting = "Namaskaar";

    // increments the favouriteNumber by 1
    function incrementNumber() public {
        favouriteNumber++;
    }

    // adds given number to our favouriteNumber
    function jumpNumberBy(uint256 jumpBy) public {
        favouriteNumber = favouriteNumber + jumpBy;
    }

    // sets greeting to the given greeting
    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }

    // greets the user
    function greet(string memory name) public view returns(string memory) {
        string memory greetingMessage = string.concat(greeting, name);
        return greetingMessage;
    }
}