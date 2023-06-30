// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract eventChallenge{
    event event1(address indexed user1, uint a);
    event event2(address indexed user2, uint b);
    event event3(address indexed user3, uint c);
    event event4(address indexed user4, uint d);

    mapping(address => uint) private balances;

    function add5(uint _a) public {
        _a += 5;
        emit event1(msg.sender,_a);
    }
    function minus5(uint _b) public {
        _b -= 5;
        emit event2(msg.sender,_b);
    }
    function multiply5(uint _c) public {
        _c *= 5;
        emit event3(msg.sender,_c);
    }
    function div5(uint _d) public {
        _d /= 5;
        emit event4(msg.sender,_d);
    }
}
