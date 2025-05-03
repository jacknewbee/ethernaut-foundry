// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Level22} from "../src/Level22.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Level22Test is Test {
    address addr = 0x90dB8E0f614c1a22442fEf0ea482eE78D168e3A2;

    function setUp() public {}

    // function test_Elevator() public {
    //     address sender = 0xb1Eab112a506ab057ED7c5E9aB32758521497951;
    //     vm.startPrank(sender);
    //     Level22 a = new Level22();
    //     (bool b1, bytes memory data1) = address(addr).staticcall(abi.encodeWithSignature("token1()"));
    //     (bool b2, bytes memory data2) = address(addr).staticcall(abi.encodeWithSignature("token2()"));
    //     assertTrue(b1);
    //     assertTrue(b2);
    //     address token1 = abi.decode(data1, (address));
    //     address token2 = abi.decode(data2, (address));
    //     bool b3 = IERC20(token1).transfer(address(a), IERC20(token1).balanceOf(sender));
    //     bool b4 = IERC20(token2).transfer(address(a), IERC20(token2).balanceOf(sender));
    //     assertTrue(b3);
    //     assertTrue(b4);
    //     a.attack(addr);
    //     uint256 bal1 = IERC20(token1).balanceOf(addr);
    //     uint256 bal2 = IERC20(token2).balanceOf(addr);
    //     assertTrue(bal1 == 0 || bal2 == 0);
    //     vm.stopPrank();
    // }
}
