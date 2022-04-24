// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;

import "src/Contract.sol";
import "ds-test/test.sol";

contract ContractTest is DSTest {
    Deployment d;
    function setUp() public {
        d = new Deployment();
        d.deploy();
    }

    function testPool() public {
        assertTrue(d.pool().token0() == address(d.token0()));
        assertTrue(d.pool().token1() == address(d.token1()));
        assertTrue(d.pool().liquidity() == 0);
    }
}
