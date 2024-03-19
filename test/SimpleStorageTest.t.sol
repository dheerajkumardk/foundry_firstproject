// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    function test_ReadStorageVariables() public view {
        // I have set favouriteNumber to 7, the jersey number of MSD, let's check that
        assertEq(simpleStorage.favouriteNumber(), 7);

        assertEq(simpleStorage.greeting(), "Namaskaar");
    }

    function test_IncrementNumber() public {
        // this should increase the value by 1, at first, it was set to 7
        simpleStorage.incrementNumber();
        assertEq(simpleStorage.favouriteNumber(), 8);
    }

    function test_JumpNumberBy() public {
        uint256 jumpBy = 5;
        simpleStorage.jumpNumberBy(jumpBy);
        assertEq(simpleStorage.favouriteNumber(), 12);
    }

    function test_SetGreeting() public {
        string memory newGreeting = "Jai Shree Ram";
        simpleStorage.setGreeting(newGreeting);

        assertEq(simpleStorage.greeting(), newGreeting);
    }

    function test_Greet() public view {
        string memory name = "Dheeraj";
        string memory greetMessage = string.concat(simpleStorage.greeting(), name);

        assertEq(simpleStorage.greet(name), greetMessage);

    }
    
}
