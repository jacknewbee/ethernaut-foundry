// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Level21} from "../src/Level21.sol";

contract Level21Test is Test {
    address addr = 0x4F4f9D2aae43aCa0C9748599908463bBA2B2D903;

    function setUp() public {}

    function test_Elevator() public {
        Level21 bob = new Level21();
        bob.attack(addr);
        (bool b, bytes memory d) = address(addr).staticcall(abi.encodeWithSignature("price()"));
        require(b);
        uint256 price = abi.decode(d, (uint256));
        assertTrue(price < 100);
    }
}
