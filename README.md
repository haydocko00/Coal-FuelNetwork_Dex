# Coal DEX Project

## Overview
Coal DEX is a decentralized exchange on the Fuel Network, built with Sway. Key modules include:

- **Token Module**: ERC-20-like token minting and transfers.
- **Liquidity Pool Module**: Manage and provide liquidity.
- **Swap Module**: Swap tokens with slippage protection.
- **Governance Module**: Propose and vote on decisions.
- **Staking Module**: Stake tokens to earn rewards.
- **Multisig Wallet**: Requires multiple approvals for transactions.

## Key Features
- **Minting**: Controlled by the owner.
- **Liquidity Management**: Add/remove liquidity.
- **Token Swaps**: Safe and efficient.
- **Voting**: Governance participation.
- **Security**: Reentrancy guard, safe math, and multisig approval.

## Structure
- `token_contract.sw`
- `liquidity_pool_contract.sw`
- `swap_contract.sw`
- `governance_contract.sw`
- `staking_contract.sw`
- `multisig_wallet_contract.sw`

## License
Open-source under the MIT License.
