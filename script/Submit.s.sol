// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract SubmitScript is Script {
    address instanceAddr = 0x858F548d98CC78901Ff4dEd865E20b7d4Dc81567;
    address levelAddr = 0x2a24869323C0B13Dff24E196Ba072dC790D52479;
    address naut = 0xa3e7317E591D5A0F1c605be1b3aC4D2ae56104d6;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        (bool b,) = address(naut).call(abi.encodeWithSignature("submitLevelInstance(address)", instanceAddr));
        console.log(b);
        vm.stopBroadcast();
    }
}
