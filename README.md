# Web3sh

## Install

First, copy the `.web3sh/.web3env.example` to `.web3sh/.web3env` and update the environment variables. 

Second, run the `./install.sh` script. 

> Note, all scripts will be stored in the `$HOME/.web3sh` directory and the `source ~/.web3sh/.web3sh_main` will be added into your profile

## Usage

- .web3sh_eth

- [x] `get_eth_price`: fetch current ETH price.

- [x] cgas: 

`cgas`: fetch current ethereum gas info.

`cgas swap`: fetch current ethereum estimated swap cost.

- .web3sh_provider

- [x] select_chain:

`select_chain <chain_name>`: set chain context for selected chain in current terminal (evns: ETH_RPC_URL, ETHERSCAN_API_KEY, ETHERSCAN_API_URL, CHAIN, out-of-the-box for the `cast` command)

> Note: 
>
> now support chains:
>
> Ethereum (eth, ethereum, mainnet), 
> Optimism (op),
> Arbitrum (arb, arbnova, arb_nova), 
> Fantom (ftm), 
> Binance Smart Chain (bsc),
> Moonriver (moon),
> Gnosis (gnosis),
> Avalanche (avax),
> Polygon (poly),
> Polygon ZK EVM (polyzk, poly_zkevm, polygonzk, polygon_zkevm),
> Celo (celo),
> Base (base),
> Metis (metis), 
> Harmony (harmony),
> zkSync (zksync, zksyncera, zksync_era),
> Linea (linea)

- [x] `current_chain_context`: print environments for current chain selected.

- [x] `next_rpc`: manually switch to the next RPC provider (current support: alchemy, infura, ankr)

- [x] `next_scan_key`: manually switch to the next Etherscan API key (three options).

- [x] `unset_chain`: clean up current chain environments.

- [x] `get_chain_name` / `get_chain_id`

- .web3sh_utils

- [x] `stmp`: current timestamp


## Features

- [x] Support fetching eth price, gas info

- [x] Automatically select and inject provider environment variables: $ETH_RPC_URL, $ETHERSCAN_API_KEY, $ETHERSCAN_API_URL, $CHAIN

## References

- Etherscan: https://docs.etherscan.io/

- [x] Get Ether Last Price

- BlockNative: https://docs.blocknative.com/ 

- [x] /gasprices/blockprices