// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {NaughtCoin} from "../src/Level15.sol";

contract Level15Test is Test {
    function setUp() public {}

    // function test_Elevator() public {
    //     address bob = makeAddr("bob");
    //     NaughtCoin c = new NaughtCoin(bob);
    //     console.log(address(c));
    //     console.log(c.balanceOf(bob), "before bal");
    //     address alice = makeAddr("alice");
    //     vm.startPrank(bob);
    //     c.approve(alice, type(uint256).max);
    //     vm.stopPrank();
    //     vm.startPrank(alice);
    //     c.transferFrom(bob, alice, c.balanceOf(bob));
    //     vm.stopPrank();
    //     console.log(c.balanceOf(bob), "after bal");
    //     console.log(c.balanceOf(alice), "after bal");
    // }
}
