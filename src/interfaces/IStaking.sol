// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.9;

import "../structs/Claim.sol";

interface IStaking {
    function STAKING_TOKEN() external view returns (address);

    function YIELDY_TOKEN() external view returns (address);

    function canBatchTransactions() external view returns (bool);

    function sendWithdrawalRequests() external;

    function stake(uint256 _amount, address _recipient) external;

    function instantUnstake(bool _trigger) external;

    function unstake(uint256 amount_, bool trigger) external;

    function claimWithdraw(address _recipient, bool _trigger) external;

    function warmUpInfo(address) external view returns (Claim memory);

    function coolDownInfo(address) external view returns (Claim memory);
}
