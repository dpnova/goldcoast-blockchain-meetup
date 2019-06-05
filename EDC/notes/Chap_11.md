CHAPTER 11 - Oracles
====================

In order to maintain consensus, EVM execution must be totally deterministic and based only on the shared context of the Ethereum state and signed transactions.  
Oracles, ideally, provide a trustless (or at least near-trustless) way of getting extrinsic (i.e., "rea-world" or off-chain) information, such as the results of football games, the price of gold, or truly random numbers, onto the Ethereum platform for smart contracts to use. 

Categories:
- request–response (most complicated: this is where the data space is too huge to be stored in a smart contract and users are expected to only need a small part of the overall dataset at a time)
- publish-subscribe
- immediate-read


Data Authentication
-------------------
authenticity proof - ensures data returned by Oracle has not been tampered with. shift the trust from the data carrier to the attestor.
trusted execution environments (TEEs) - TownCrier is example of this which uses hardware-based secure enclaves to ensure data integrity.

Computation Oracles
-------------------
Oracle can perform computation instead of just returning data.

Decentralized Oracles
---------------------

ChainLink - a reputation contract, an order-matching contract, and an aggregation contract—and an off-chain registry of data providers.

Oracle Client Interfaces in Solidity
------------------------------------

contract EthUsdPriceTicker is usingOraclize

