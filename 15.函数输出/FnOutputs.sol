// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract FnOutputs {
    function Many() public pure returns (uint, bool) {
        return (1, true);
    }

    function Named() public pure returns (uint x, bool y) {
        return (2, false);
    }

    function assigned() public pure returns (uint x, bool b) {
        x = 1;
        b = true;
    }

    function destructing() public pure {
        (uint x, bool b) = Many();
        (, bool _b) = Many();
    }
}
