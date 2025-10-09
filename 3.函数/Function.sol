// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Function {
    // 关键字function定一个函数 ，add：函数名，(uint x, uint y)函数的参数，external：网络上调用，pure只读，returns(uint)函数返回值的类型
    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }

    function sub(uint x, uint y) external pure returns (uint) {
        return x - y;
    }
}
