// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Level10} from "../src/Level10.sol";

contract Level10Test is Test {
    address addr = 0x858F548d98CC78901Ff4dEd865E20b7d4Dc81567;

    function setUp() public {}

    // function test_Reentrance() public {
    //     console.log(addr.balance, "before bal");
    //     Level10 l10 = new Level10{value: 0.0002 ether}();
    //     l10.attack();
    //     console.log(addr.balance, "after bal");
    //     assertEq(addr.balance, 0);
    // }
}
