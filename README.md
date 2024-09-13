# Coal DEX (Decentralized Exchange) Project

## Overview
Coal DEX is a fully featured decentralized exchange (DEX) built on the Fuel Network using the Sway smart contract language. The DEX is designed with a robust set of features, offering users secure and efficient decentralized trading. Coal DEX includes the following modules:

- **Token Module**: An ERC-20 like token contract for minting and transferring tokens.
- **Liquidity Pool Module**: Manages liquidity pools, allowing users to add and remove liquidity.
- **Swap Module**: Enables users to swap between different tokens using the liquidity pools.
- **DAO (Decentralized Autonomous Organization)**: Users can vote on governance proposals using their tokens.
- **Staking Module**: Users can stake tokens to earn rewards.
- **Multisig Wallet**: A wallet requiring multiple signatures to execute transactions, adding an extra layer of security.

## Features

### Token Module
- **Minting**: Only the contract owner has permission to mint new tokens.
- **Transfers**: Users can transfer tokens to other addresses.
- **Total Supply**: The contract tracks the total supply of tokens.

### Liquidity Pool Module
- **Provide Liquidity**: Users can add liquidity to token pairs.
- **Remove Liquidity**: Users can withdraw liquidity from the pools.
- **Get Liquidity**: Users can query the current state of the liquidity pools.

### Swap Module
- **Token Swaps**: Users can seamlessly swap between different tokens using the available liquidity pools.
- **Slippage Protection**: Ensures swaps adhere to a specified slippage limit for safe trading.

### DAO Module
- **Create Proposals**: The contract owner can create governance proposals for the DEX.
- **Vote**: Users can vote on proposals using their token holdings.
- **Finalize Proposals**: The contract owner can finalize a proposal and execute decisions based on the vote results.

### Staking Module
- **Stake**: Users can stake tokens and lock them to earn rewards.
- **Unstake**: After the staking period, users can withdraw their staked tokens along with rewards.
- **Claim Rewards**: Users can claim rewards based on their staked amount.

### Multisig Wallet
- **Submit Transaction**: Owners can submit a transaction that needs multiple approvals.
- **Approve Transaction**: Other owners can approve the transaction.
- **Execute Transaction**: Once enough approvals are obtained, the transaction is executed.

## How to Use
1. **Deploy Contracts**: Deploy the modules (Token, Liquidity Pool, Swap, DAO, Staking, and Multisig Wallet) on the Fuel Network.
2. **Interact with Contracts**: Use the provided functions to interact with the contracts, such as minting tokens, adding liquidity, and staking tokens.
3. **Governance and Multisig**: Use the DAO and Multisig Wallet for governance and executing important transactions securely.

## Security Features
- **Reentrancy Guard**: Prevents reentrancy attacks during token transfers and critical operations.
- **Safe Math Operations**: Protects against overflow and underflow in arithmetic operations.
- **Multisig Approval**: Requires multiple signatures for executing sensitive transactions, ensuring enhanced security.

## Project Structure
- `token_contract.sw`: Token contract for minting and transferring tokens.
- `liquidity_pool_contract.sw`: Manages liquidity pools.
- `swap_contract.sw`: Handles token swap functionality.
- `dao_contract.sw`: Governance module for creating and voting on proposals.
- `staking_contract.sw`: Manages staking and rewards.
- `multisig_wallet_contract.sw`: Multisig wallet for secure transaction approvals.

## License
Coal DEX is an open-source project and available under the MIT License.
