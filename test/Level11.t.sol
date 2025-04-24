// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Level11} from "../src/Level11.sol";

contract Level11Test is Test {
    address addr = 0x452Fe3AC4EC80FaC38eC46411654358F1197d35E;

    function setUp() public {}

    function test_Elevator() public {
        Level11 l11 = new Level11();
        l11.attack();
        (bool d, bytes memory e) = address(addr).call(abi.encodeWithSignature("top()"));
        console.log(d);
        bool top = abi.decode(e, (bool));
        console.log(top);
        assertEq(top, true);
    }
}
