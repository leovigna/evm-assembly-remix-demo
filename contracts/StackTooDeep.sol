// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

/**
* @title Example for Stack Too Deep
* @dev While the stack has a max space of 1024, access to it is limited to the top 16 values
* Also see https://soliditydeveloper.com/stacktoodeep
*/
contract StackTooDeep {
    function stackSum() public pure returns (uint256) {
        uint256 s1 = 1;
        uint256 s2 = 2;
        uint256 s3 = 3;
        uint256 s4 = 4;
        uint256 s5 = 5;
        uint256 s6 = 6;
        uint256 s7 = 7;
        uint256 s8 = 8;
        //uint256 s9 = 9;
        uint256 total = s1 + 
            s2 + 
            s3 + 
            s4 + 
            s5 + 
            s6 + 
            s7 +
            s8;// +
            //s9;

        return total;
    }
}