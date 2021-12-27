// SPDX-License-Identifier: MIT
import './A.sol';
pragma solidity >=0.7.0 <0.9.0;

contract B is A {

    uint256 public b;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function setB(uint256 num) public {
        b = num;
    }

    /**
     * @dev Store value in variable using assembly
     * @param num value to store
     */
    function sstoreB(uint256 num) public {
        assembly {
            sstore(0, num)
        }
    }

    /**
     * @dev Return value 
     * @return value
     */
    function readB() public view returns (uint256){
        return b;
    }

    /**
     * @dev Return value using assembly
     * @return v value
     */
    function sloadB() public view returns (uint256 v){
        assembly {
            v := sload(0)
        }
    }
}