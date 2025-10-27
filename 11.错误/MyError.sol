// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract MyError {
    // require,revert,revert
    function testRequire(uint i) public pure {
        require(i < 10, "i > 10");
    }

    function testRevert(uint i) public pure {
        if (i > 1) {
            if (i > 2) {
                if (i > 10) {
                    revert("i > 10");
                }
            }
        }
    }

    uint public num = 123;
    function testAssert() public view {
        assert(num == 123);
    }

    function foo() public {
        num++;
    }

    error ErrorLimit(address caller, uint value);

    function testError(uint i) public view {
        if (i > 10) {
            revert ErrorLimit(msg.sender, i);
        }
    }
}
