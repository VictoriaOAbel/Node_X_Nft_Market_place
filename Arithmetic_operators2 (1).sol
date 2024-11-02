// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// A simple contract to perform arithmetic operations
contract ArithmeticOperations {

    // Function to add two unsigned integers
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    // Function to subtract one unsigned integer from another
    // Handles the case where b is greater than a
    function subtract(uint a, uint b) public pure returns (uint) {
        require(b <= a, "Subtraction would result in a negative value");
        return a - b;
    }

    // Function to multiply two unsigned integers
    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b;
    }

    // Function to divide one unsigned integer by another
    // Prevents division by zero
    function divide(uint a, uint b) public pure returns (uint) {
        require(b > 0, "Cannot divide by zero");
        return a / b;
    }
}

// Counter.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter {
    uint256 public count;

    // Function to get the current count
    function get() public view returns (uint256) {
        return count;
    }

    // Function to increment count by 1
    function inc() public {
        count += 1;
    }

    // Function to decrement count by 1
    function dec() public {
        // This function will fail if count = 0
        count -= 1;
    }
}
