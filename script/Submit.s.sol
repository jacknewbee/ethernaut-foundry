// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract SubmitScript is Script {
    address instanceAddr = 0x1F674B3a4758ed8c1608f0664387c69570570279;
    address levelAddr = 0xb5858B8EDE0030e46C0Ac1aaAedea8Fb71EF423C;
    address naut = 0xa3e7317E591D5A0F1c605be1b3aC4D2ae56104d6;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        (bool b,) = address(naut).call(abi.encodeWithSignature("submitLevelInstance(address)", instanceAddr));
        require(b);
        vm.stopBroadcast();
    }
}
