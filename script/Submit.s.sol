// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract SubmitScript is Script {
    address instanceAddr = 0xE005F019B047e2c3A69f8767bf68646B2B313821;
    address levelAddr = 0x725595BA16E76ED1F6cC1e1b65A88365cC494824;
    address naut = 0xa3e7317E591D5A0F1c605be1b3aC4D2ae56104d6;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        (bool b,) = address(naut).call(abi.encodeWithSignature("submitLevelInstance(address)", instanceAddr));
        require(b);
        vm.stopBroadcast();
    }
}
