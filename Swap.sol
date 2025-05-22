// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Swap {
    event Swapped(address indexed user, uint256 amountIn, uint256 amountOut);

    function swap(uint256 amountIn) public {
        require(amountIn > 0, "Amount must be > 0");
        emit Swapped(msg.sender, amountIn, amountIn * 2);
    }
}
