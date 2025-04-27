// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Level13} from "../src/Level13.sol";
import {Level13R} from "../src/Level13R.sol";

contract Level13Test is Test {
    address addr = 0x1F674B3a4758ed8c1608f0664387c69570570279;

    function setUp() public {}

    // function test_Elevator() public {
    //     Level13 l13 = new Level13();
    //     vm.expectRevert();
    //     l13.attack();
    // }

    // function test_A() public {
    //     Level13 l13 = new Level13();
    //     // bytes8 b8 = 0xaB32758500007951;
    //     uint256 a = 25000;
    //     for (uint256 i = 0; i < 8191; i++) {
    //         console.log(a + i);
    //         try l13.attack(a + i, addr) {
    //             console.log("ok");
    //             break;
    //         } catch Error(string memory reason) {
    //             console.log("Revert reason:", reason);
    //         } catch (bytes memory lowLevelData) {
    //             console.log("Low-level revert reason:", string(lowLevelData));
    //         }
    //     }
    // }
}
