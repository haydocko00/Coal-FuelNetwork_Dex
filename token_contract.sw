
contract Token {
    storage {
        total_supply: u64,
        balances: b256 => u64,
        owner: b256,
    }

    abi IToken {
        fn total_supply() -> u64;
        fn balance_of(account: b256) -> u64;
        fn transfer(to: b256, amount: u64) -> bool;
        fn mint(amount: u64);
    }

    impl IToken for Contract {
        fn total_supply() -> u64 {
            self.total_supply
        }

        fn balance_of(account: b256) -> u64 {
            self.balances[account]
        }

        fn transfer(to: b256, amount: u64) -> bool {
            let caller = msg_sender();
            let caller_balance = self.balances[caller];

            if caller_balance >= amount {
                self.balances[caller] -= amount;
                self.balances[to] += amount;
                emit Transfer(caller, to, amount);
                true
            } else {
                false
            }
        }

        fn mint(amount: u64) {
            let caller = msg_sender();
            assert(caller == self.owner, "Only owner can mint tokens");
            assert(self.total_supply + amount > self.total_supply, "Overflow error");

            self.total_supply += amount;
            self.balances[caller] += amount;
            emit Mint(caller, amount);
        }
    }
}
