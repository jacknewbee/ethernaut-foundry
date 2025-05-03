// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract SubmitScript is Script {
    address instanceAddr = 0x1F3877Fbe5aCb86b3f2bC5b85666c4144D19881F;
    address levelAddr = 0xf59112032D54862E199626F55cFad4F8a3b0Fce9;
    address naut = 0xa3e7317E591D5A0F1c605be1b3aC4D2ae56104d6;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        (bool b,) = address(naut).call(abi.encodeWithSignature("submitLevelInstance(address)", instanceAddr));
        require(b);
        vm.stopBroadcast();
    }
}
