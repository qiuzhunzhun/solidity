// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Variable {
    uint public num = 123; // 状态变量是存储在链上
    bool public b = false;

    function foo() external {
        uint l = 1; // 局部变量，只存在某个作用域内
        bool s = true;
        num = num + l;
        b = s;
    }

    function globalVars() external view returns (address, uint, uint) {
        address sender = msg.sender; // 全局变量
        uint t = block.timestamp;
        uint blockNum = block.number;

        return (sender, t, blockNum);
    }
}
