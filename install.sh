#!/bin/bash
forge install Uniswap/v3-core
forge install OpenZeppelin/openzeppelin-contracts
cd lib/openzeppelin-contracts
git checkout solc-0.7
cd ../..
