
contract Staking {
    storage {
        stakes: b256 => u64,
        rewards: b256 => u64,
        total_staked: u64,
        reward_rate: u64,
        stake_time: u64,
    }

    abi IStaking {
        fn stake(amount: u64);
        fn unstake() -> u64;
        fn claim_rewards() -> u64;
    }

    impl IStaking for Contract {
        fn stake(amount: u64) {
            let caller = msg_sender();
            let balance = Token::balance_of(caller);
            assert(balance >= amount, "Insufficient balance");

            Token::transfer(self, amount);
            self.stakes[caller] += amount;
            self.total_staked += amount;
        }

        fn unstake() -> u64 {
            let caller = msg_sender();
            let stake_amount = self.stakes[caller];
            assert(stake_amount > 0, "No staked amount");

            let rewards = self.claim_rewards();
            self.stakes[caller] = 0;
            self.total_staked -= stake_amount;

            Token::transfer(caller, stake_amount + rewards);
            stake_amount + rewards
        }

        fn claim_rewards() -> u64 {
            let caller = msg_sender();
            let stake_amount = self.stakes[caller];
            let reward = (stake_amount * self.reward_rate) / 100;
            self.rewards[caller] += reward;
            reward
        }
    }
}
