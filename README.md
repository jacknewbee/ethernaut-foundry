## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
anvil --fork-url $SEPOLIA_RPC_URL


forge test --fork-url $SEPOLIA_RPC_URL -vv
forge test --fork-url $env:SEPOLIA_RPC_URL -vv
forge test --fork-url $ANVIL_RPC_URL -vvv
forge script script/Level1.s.sol:Level1Script --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY -vvv 
forge script script/Level3.s.sol:Level3Script --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY -vvv 
level3 : 
forge script script/Level3.s.sol:Level3Script --rpc-url $env:SEPOLIA_RPC_URL --private-key $env:PRIVATE_KEY -vvv --broadcast --slow --gas-limit 3000000 --gas-estimate-multiplier 200 --sig "execute(address)" 0xe07da093Ae9b2Cf16FF6aAbB80eb7ed5F7E455D2
level4 : 
forge script script/Level4.s.sol:Level4Script --rpc-url $env:SEPOLIA_RPC_URL --private-key $env:PRIVATE_KEY -vvv --broadcast --slow --gas-limit 3000000 --gas-estimate-multiplier 200
submit:
forge script script/Submit.s.sol:SubmitScript --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY -vvv --broadcast --slow --gas-limit 3000000 --gas-estimate-multiplier 200
forge script script/Submit.s.sol:SubmitScript --rpc-url $env:SEPOLIA_RPC_URL --private-key $env:PRIVATE_KEY -vvv --broadcast --slow --gas-limit 3000000 --gas-estimate-multiplier 200
level5:
forge script script/Level5.s.sol:Level5Script --rpc-url $env:SEPOLIA_RPC_URL --private-key $env:PRIVATE_KEY -vvv --broadcast --slow --gas-limit 3000000 --gas-estimate-multiplier 200 
level6:
forge script script/Level6.s.sol:Level6Script --rpc-url $env:SEPOLIA_RPC_URL --private-key $env:PRIVATE_KEY -vvv --broadcast --slow --gas-limit 3000000 --gas-estimate-multiplier 200 
level7:
forge script script/Level7.s.sol:Level7Script --rpc-url $env:SEPOLIA_RPC_URL --private-key $env:PRIVATE_KEY -vvv --broadcast --slow --gas-limit 3000000 --gas-estimate-multiplier 200 
level8:
forge script script/Level8.s.sol:Level8Script --rpc-url $env:SEPOLIA_RPC_URL --private-key $env:PRIVATE_KEY -vvv --broadcast --slow --gas-limit 3000000 --gas-estimate-multiplier 200 
level9:
forge script script/Level9.s.sol:Level9Script --rpc-url $env:SEPOLIA_RPC_URL --private-key $env:PRIVATE_KEY -vvv --broadcast --slow --gas-limit 3000000 --gas-estimate-multiplier 200 
level10:
forge script script/Level10.s.sol:Level10Script --rpc-url $env:SEPOLIA_RPC_URL --private-key $env:PRIVATE_KEY -vvv --broadcast --slow --gas-limit 3000000 --gas-estimate-multiplier 200 
level11:
forge script script/Level11.s.sol:Level11Script --rpc-url $env:SEPOLIA_RPC_URL --private-key $env:PRIVATE_KEY -vvv --broadcast --slow --gas-limit 3000000 --gas-estimate-multiplier 200 
level12:
forge script script/Level12.s.sol:Level12Script --rpc-url $env:SEPOLIA_RPC_URL --private-key $env:PRIVATE_KEY -vvv --broadcast --slow 
