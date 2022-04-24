// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;

import {UniswapV3Factory} from "@uniswap/UniswapV3Factory.sol";
import {IUniswapV3Pool} from '@uniswap/interfaces/IUniswapV3Pool.sol';
import {ERC20} from "@openzeppelin/token/ERC20/ERC20.sol";


contract Token is ERC20 {
    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
    }
}


contract Deployment {

    UniswapV3Factory public factory;
    Token public token0;
    Token public token1;
    IUniswapV3Pool public pool;
    uint24 fees;

    function deploy() public {
        factory = new UniswapV3Factory();
        token0 = new Token("T0", "T0", 100e18);
        token1 = new Token("T1", "T1", 100e18);

        fees = 3000;
        pool = IUniswapV3Pool(factory.createPool(address(token0), address(token1), fees));
    }
}
