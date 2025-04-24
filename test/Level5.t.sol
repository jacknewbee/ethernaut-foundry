// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

contract Level5Test is Test {
    address addr = 0x639FD11B46ff1Bf828fB5cC792d0776E38De1081;

    function setUp() public {}

    // function test_Token() public {
    //     (bool c, bytes memory d) = address(addr).call(
    //         abi.encodeWithSignature("balanceOf(address)", 0xb1Eab112a506ab057ED7c5E9aB32758521497951)
    //     );
    //     assertEq(c, true);
    //     uint256 t = abi.decode(d, (uint256));
    //     console.log(t, "bal");
    //     address alice = makeAddr("alice");
    //     vm.prank(0xb1Eab112a506ab057ED7c5E9aB32758521497951);
    //     (bool cc, bytes memory dd) = address(addr).call(abi.encodeWithSignature("transfer(address,uint256)", alice, 21));
    //     assertEq(cc, true);
    //     bool b = abi.decode(dd, (bool));
    //     assertEq(b, true);
    //     (bool ccc, bytes memory ddd) = address(addr).call(
    //         abi.encodeWithSignature("balanceOf(address)", 0xb1Eab112a506ab057ED7c5E9aB32758521497951)
    //     );
    //     assertEq(ccc, true);
    //     uint256 bal = abi.decode(ddd, (uint256));
    //     console.log(bal, "new bal");
    //     assertTrue(bal > 20);
    // }
}
