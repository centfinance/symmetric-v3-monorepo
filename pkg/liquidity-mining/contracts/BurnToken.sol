// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.7.0;

import "@balancer-labs/v2-solidity-utils/contracts/openzeppelin/SafeERC20.sol";
import "@balancer-labs/v2-solidity-utils/contracts/openzeppelin/ERC20Burnable.sol";

contract  BurnToken {
    using SafeERC20 for IERC20;
    using ERC20Burnable for IERC20;
    /**
     * @notice Deposits symm tokens to be burned
     *
     * @param token - The ERC20 token address to burn.
     * @param amount - The amount of tokens to burn.
     */
    function depositToken(IERC20 token, uint256 amount) external override nonReentrant {
        token.safeTransferFrom(msg.sender, address(this), amount);
        token.burn(amount);
    }

  
}