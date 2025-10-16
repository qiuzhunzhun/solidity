// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract ViewAndPure {
    // view和pure的区别
    // 1.view是可以读取链上的数据
    // 2.pure是用于纯函数，函数体中不能有状态变量和全局变量
    uint public num = 123;

    function viewFunc() external view returns (uint) {
        return num;
    }

    function pureFunc() external pure returns (uint) {
        return 1;
    }

    function totalFunc(uint n) external view returns (uint) {
        return num + n;
    }

    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }

    function foo() external {
        num = 456;
    }
}
