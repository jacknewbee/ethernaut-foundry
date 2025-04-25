// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract SubmitScript is Script {
    address instanceAddr = 0x452Fe3AC4EC80FaC38eC46411654358F1197d35E;
    address levelAddr = 0x6DcE47e94Fa22F8E2d8A7FDf538602B1F86aBFd2;
    address naut = 0xa3e7317E591D5A0F1c605be1b3aC4D2ae56104d6;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        (bool b,) = address(naut).call(abi.encodeWithSignature("submitLevelInstance(address)", instanceAddr));
        console.log(b);
        vm.stopBroadcast();
    }
}
