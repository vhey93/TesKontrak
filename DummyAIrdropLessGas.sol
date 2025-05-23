
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DummyAirdropToken is ERC20 {
    uint256 public constant MAX_SUPPLY = 1_000_000_000 * 10**18;
    
    constructor() ERC20("Dummy Airdrop", "DUM") {
        _mint(msg.sender, MAX_SUPPLY);
    }

    // Fungsi sederhana untuk airdrop (bisa dipanggil oleh bot)
    function claim() external {
        _mint(msg.sender, 1000 * 10**18); // 1000 token per claim
    }
}
