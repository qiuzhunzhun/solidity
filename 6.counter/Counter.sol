// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Counter {
    uint public count = 0;

    function inc() external {
        count += 1;
    }

    function dec() external {
        count -= 1;
    }
}
