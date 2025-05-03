// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Level23} from "../src/Level23.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Level23Test is Test {
    address dex = 0x1F3877Fbe5aCb86b3f2bC5b85666c4144D19881F;

    function setUp() public {}

    function test_Elevator() public {
        Level23 a = new Level23();
        a.attack(dex);
        (, bytes memory data1) = address(dex).staticcall(abi.encodeWithSignature("token1()"));
        (, bytes memory data2) = address(dex).staticcall(abi.encodeWithSignature("token2()"));
        address token1 = abi.decode(data1, (address));
        address token2 = abi.decode(data2, (address));
        uint256 bal1 = IERC20(token1).balanceOf(dex);
        uint256 bal2 = IERC20(token2).balanceOf(dex);
        console.log(bal1, "bal1");
        console.log(bal2, "bal2");
        assertTrue(bal1 == 0 && bal2 == 0);
    }
}
