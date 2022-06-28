// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract Module1 {
    uint256 public number;

    function increaseNumber(uint256 _number) external {
        number += _number;
    }

    function decreaseNumber(uint256 _number) external {
        number -= _number;
    }

    // Helper function to ease testing
    function getIncreaseNumberSelector() external pure returns (bytes4) {
        return bytes4(keccak256(bytes("increaseNumber(uint256)")));
    }

    function getDecreaseNumberSelector() external pure returns (bytes4) {
        return bytes4(keccak256(bytes("decreaseNumber(uint256)")));
    }
}
