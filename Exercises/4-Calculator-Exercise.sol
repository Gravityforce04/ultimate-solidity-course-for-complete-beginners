// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// 1️⃣ Make a contract called Calculator
// 2️⃣ Create Result variable to store result
// 3️⃣ Create functions to add, subtract, and multiply to result
// 4️⃣ Create a function to get result

contract Calculator {

    uint256 public result = 0;

    function add(uint8 num) public  { //name, type, return type(returns)
        result += num;
    }

    function subtract(uint8 num) public  { //name, type, return type(returns)
        result -= num;
    }

    function multiply(uint8 num) public  { //name, type, return type(returns)
        result *= num;
    }

    function get() public view returns (uint256) {
        return result;
    }

}
