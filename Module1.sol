// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SecureBank {
    uint256 public bankBalance;
    mapping(address => uint256) private accountBalances;

    constructor() {
        bankBalance = 0;
    }

    function depositFunds(uint256 amount) public {
        require(amount > 0, "Deposit amount must be greater than zero");
        accountBalances[msg.sender] += amount;
        bankBalance += amount;
    }

    function withdrawFunds(uint256 amount) public {
        require(amount <= accountBalances[msg.sender], "Insufficient balance to withdraw");
        accountBalances[msg.sender] -= amount;
        bankBalance -= amount;
    }

    function transferFunds(address to, uint256 amount) public {
        require(to != address(0), "Cannot transfer to the zero address");
        require(amount <= accountBalances[msg.sender], "Insufficient balance to transfer");

        if (amount > accountBalances[msg.sender]) {
            revert("Attempt to transfer more than available balance");
        }

        accountBalances[msg.sender] -= amount;
        accountBalances[to] += amount;
    }

    function checkUserBalance() public view returns (uint256) {
        return accountBalances[msg.sender];
    }

    function checkBankBalance() public view returns (uint256) {
        assert(bankBalance >= 0); // Ensuring bank balance is never negative
        return bankBalance;
    }
}
