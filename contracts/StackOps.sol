// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

/**
* @title StackOps
* @dev Debug stack operations using REMIX
*/
contract StackOps {
    /**
    * - Compile and deploy on VM
    * - Activate the Debugger under Plugins (Socket icon)
    * - Run call, copy transaction, and enter into debugger
    * - Observe the OPCODES & the stack state
    * Some noteworthy operations
    * - 077: PUSH1 01 -> a := 1
    * - 083: PUSH1 0F -> b := 15
    * - 089: ADD -> Pops a & b, and pushes their sum.
    * 
    */
    function add()  public pure returns (uint256) {
        uint256 a = 1;
        uint256 b = 15;

        return a + b;
    } 
}