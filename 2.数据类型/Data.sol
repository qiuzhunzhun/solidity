// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract DataTypes {
    bool public b = true; // 布尔类型
    uint public u = 123; // 无符号整数类型
    // uint = uint256   0 to 2**256 - 1

    int public i = -123; // 有符号整数类型
    // int = int256     -2**255 to 2*255 - 1
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // 地址类型
    bytes32 public b32 =
        0x7465737400000000000000000000000000000000000000000000000000000000; // 字节类型
    string public str = "Hello, Solidity"; // 字符串类型
    uint[5] public arr = [1, 2, 3, 4, 5]; // 固定长度数组
    struct Person {
        string name;
        uint age;
    }
    Person public person = Person("Alice", 30); // 结构体类型
    mapping(address => uint) public balances; // 映射类型
    enum Status {
        Active,
        Inactive,
        Suspended
    } // 枚举类型
}
