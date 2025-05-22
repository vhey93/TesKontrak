// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PingCounter {
    event Ping(address indexed user, string note);
    function ping(string calldata note) public {
        emit Ping(msg.sender, note);
    }
}
