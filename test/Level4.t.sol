// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

contract Level4Test is Test {
    address addr = 0x8D3FE79266fF6b750865ba01FB0de9116EE3Dd3C;

    function setUp() public {}

    // function test_Owner() public {
    //     (bool c, bytes memory d) = address(addr).call(abi.encodeWithSignature("owner()"));
    //     assertEq(c, true);
    //     address t = abi.decode(d, (address));
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
