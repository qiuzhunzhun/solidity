// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract DataTypes {
    bool public b = true; // 布尔类型
    uint public u = 123; // 无符号整数类型
    int public i = -123; // 有符号整数类型
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // 地址类型
    bytes32 public b32 = 0x7465737400000000000000000000000000000000000000000000000000000000; // 字节类型
}