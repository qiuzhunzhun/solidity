// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Array {
    uint[] public nums = [1, 2, 3];
    uint[3] public numFixed = [4, 5, 6];

    function examples() external returns (uint, uint, uint[] memory) {
        nums.push(4); // [1,2,3,4]
        uint x = nums[1]; // 2
        delete nums[1]; // [1,0,3,4]

        uint len = nums.length;

        uint[] memory numsMemory = new uint[](5);
        numsMemory[0] = 1;
        // 函数中尽量不要去返回一个数组
        return (x, len, numsMemory);
    }
}
