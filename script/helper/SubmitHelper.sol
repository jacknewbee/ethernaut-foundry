// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

library SubmitHelper {
    address constant naut = 0xa3e7317E591D5A0F1c605be1b3aC4D2ae56104d6;

    function submit(address _instance) public returns (bool success) {
        (success,) = address(naut).call(abi.encodeWithSignature("submitLevelInstance(address)", _instance));
        return success;
    }
}
