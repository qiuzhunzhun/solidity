// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract FnModifier {
    bool public pass;
    uint public num;

    function setPass(bool p) external {
        pass = p;
    }

    modifier onlyPass() {
        require(!pass, "Not passed");
        _;
    }

    function inc() external onlyPass {
        num++;
    }

    function dec() external onlyPass {
        num--;
    }

    modifier cap(uint x) {
        require(x < 10, "x > 10");
        _;
    }
    function incBy(uint x) external onlyPass cap(x) {
        num += x;
    }

    modifier sandwich() {
        num++;
        _;
        num += 2;
    }

    function foo() external sandwich {
        num++;
    }
}
