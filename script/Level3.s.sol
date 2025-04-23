// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level3} from "../src/Level3.sol";

contract Level3Script is Script {
    function setUp() public {}

    function run() public {}

    function deployAttack() public {
        vm.startBroadcast();
        Level3 l3 = new Level3();
        console.log(address(l3), " attack address");
        vm.stopBroadcast();
    }

    function execute(address addr) public {
        vm.startBroadcast();
        Level3(addr).attack();
        vm.stopBroadcast();
    }
}
