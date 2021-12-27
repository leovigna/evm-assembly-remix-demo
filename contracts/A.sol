// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract A {

    uint256 public a;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function setA(uint256 num) public {
        a = num;
    }

    /**
     * @dev Store value in variable using assembly
     * @param num value to store
     */
    function sstoreA(uint256 num) public {
        assembly {
            sstore(0, num)
        }
    }

    /**
     * @dev Return value 
     * @return value
     */
    function readA() public view returns (uint256){
        return a;
    }

    /**
     * @dev Return value using assembly
     * @return v value
     */
    function sloadA() public view returns (uint256 v){
        assembly {
            v := sload(0)
        }
    }
}