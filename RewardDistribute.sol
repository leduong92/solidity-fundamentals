// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract RewardDistributor {
    address[] public recipients;

    function addRecipient(address _recipient) external {
        recipients.push(_recipient);
    }

    function distributeRewards() external {
        uint256 totalRecipients = recipients.length;
        require(totalRecipients > 0, "No recipients");

        uint256 totalBalance = address(this).balance;
        require(totalBalance > 0, "No balance to distribute");

        uint256 amount = totalBalance / totalRecipients;

        for (uint256 i = 0; i < totalRecipients; i++) {
            (bool success, ) = recipients[i].call{value: amount}("");
            require(success, "Transfer failed");
        }
    }
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
    receive() external payable {}
}