// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MessageBoard {
    event MessagePosted(address indexed user, string message);

    function postMessage(string calldata message) public {
        require(bytes(message).length > 0, "Message cannot be empty");
        emit MessagePosted(msg.sender, message);
    }
}
