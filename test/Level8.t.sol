// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

contract Level8Test is Test {
    address addr = 0xdF8C2463216234CF248487dd91c5b1a865C8b9CB;

    function setUp() public {}

    // function test_Vault() public {
    //     bytes32 pwd = vm.load(addr, bytes32(uint256(1)));
    //     console.logBytes32(pwd);
    //     (bool c,) = address(addr).call(abi.encodeWithSignature("unlock(bytes32)", pwd));
    //     console.log(c);
    //     (bool d, bytes memory e) = address(addr).call(abi.encodeWithSignature("locked()"));
    //     console.log(d);
    //     bool isLock = abi.decode(e, (bool));
    //     console.log(isLock);
    //     // console.logBytes32(abi.encodePacked(pwd));
    //     console.log(string(abi.encodePacked(pwd)));
    //     console.log(string(abi.encode(pwd)));
    // }
}
