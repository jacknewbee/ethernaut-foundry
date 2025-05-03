// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level23} from "../src/Level23.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Level23Script is Script {
    address dex = 0x1F3877Fbe5aCb86b3f2bC5b85666c4144D19881F;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Level23 a = new Level23();
        a.attack(dex);
        vm.stopBroadcast();
    }
}
