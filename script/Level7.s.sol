// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level7} from "../src/Level7.sol";

contract Level7Script is Script {
    address addr = 0x95238B5096bE2759eFFDe5346cAeC26301106411;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Level7 l7 = new Level7();
        (bool c,) = address(l7).call{value: 0.0000001 ether}(abi.encode(addr));
        console.log(c);
        vm.stopBroadcast();
    }
}
