// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level13} from "../src/Level13.sol";

contract Level13Script is Script {
    address addr = 0x1F674B3a4758ed8c1608f0664387c69570570279;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Level13 l13 = new Level13();
        l13.attack(33020, addr);
        vm.stopBroadcast();
    }
}
