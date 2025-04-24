// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Level7} from "../src/Level7.sol";

contract Level7Test is Test {
    address addr = 0x95238B5096bE2759eFFDe5346cAeC26301106411;

    function setUp() public {}

    // function test_Force() public {
    //     console.log(addr.balance, "bal before");
    //     Level7 l7 = new Level7();
    //     (bool c,) = address(l7).call{value: 33 ether}(abi.encode(addr));
    //     assertEq(c, true);
    //     console.log(addr.balance, "bal");
    // }

    // function test_Valid() public view {
    //     console.log(addr.balance);
    //     assertTrue(addr.balance > 0);
    // }
}
