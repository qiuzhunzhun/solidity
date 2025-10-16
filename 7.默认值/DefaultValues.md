默认值
solidity 中状态变量和局部变量没有给变量赋值，它们会有一个默认值

bool 默认值是 false

uint 默认值是 0

int 默认值是 0

string 默认值是‘’

address 默认值 0x0000000000000000000000000000000000000000

bytes32 32 字节全 0 值 0x0000000000000000000000000000000000000000000000000000000000000000

mapping(address => uint) public balances; 根据映射的值

uint[] 空数组 []

根据结构体里的类型

struct Person {
string name;
uint age;
}
