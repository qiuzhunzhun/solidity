// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Constructor {
    address public owner;
    uint256 public x;

    constructor(uint _x) {
        owner = msg.sender;
        x = _x;
    }
}
