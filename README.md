# ETH-AVAX

SecureBank Smart Contract
Overview
The SecureBank smart contract is a simple banking system on the Ethereum blockchain, allowing users to deposit, withdraw, and transfer funds securely.

Features
Deposit Funds: Users can deposit a specified amount to their account.
Withdraw Funds: Users can withdraw an amount up to their account balance.
Transfer Funds: Users can transfer funds to another account.
Check Balance: Users can check their account balance.
Check Bank Balance: Users can view the total balance of the bank.
Contract Functions
1. depositFunds(uint256 amount)
Description: Deposits the specified amount into the user's account.
Parameters:
amount: The amount to deposit (must be greater than zero).
Requirements:
amount must be greater than zero.
2. withdrawFunds(uint256 amount)
Description: Withdraws the specified amount from the user's account.
Parameters:
amount: The amount to withdraw.
Requirements:
The user must have a sufficient balance to cover the withdrawal.
3. transferFunds(address to, uint256 amount)
Description: Transfers the specified amount to another user's account.
Parameters:
to: The recipient's address.
amount: The amount to transfer.
Requirements:
to cannot be the zero address.
The user must have a sufficient balance to cover the transfer.
4. checkUserBalance()
Description: Returns the balance of the calling user's account.
Returns: The account balance of the user.
5. checkBankBalance()
Description: Returns the total balance held by the bank.
Returns: The total bank balance (always non-negative).
Usage
Deposit: Call depositFunds with the amount to deposit.
Withdraw: Call withdrawFunds with the amount to withdraw.
Transfer: Call transferFunds with the recipient's address and amount.
Check Balance: Call checkUserBalance to view your balance.
Check Bank Balance: Call checkBankBalance to view the bank's total balance.
Requirements
Solidity version: ^0.8.0
Ethereum wallet (e.g., MetaMask) to interact with the contract.
