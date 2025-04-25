// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Level13} from "../src/Level13.sol";
import {Level13R} from "../src/Level13R.sol";

contract Level13Test is Test {
    function setUp() public {}

    function test_Elevator() public {
        Level13 l13 = new Level13();
        l13.attack();
    }
}
