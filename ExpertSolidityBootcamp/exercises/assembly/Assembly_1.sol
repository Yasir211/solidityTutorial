// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Intro {
    function intro() public pure returns (uint16) {
        uint256 mol = 420;

        // Yul assembly magic happens within assembly{} section
        assembly {
            // stack variables are instantiated with
            // let variable_name := VALßUE
            // instantiate a stack variable that holds the value of mol
            // To return it needs to be stored in memory
            // with command mstore(MEMORY_LOCATION, STACK_VARIABLE)
            // to return you need to specify address and the size from the starting point

            let foobar := mol

            mstore(0x0, foobar)

            return(0x0, 32)
        }
    }
}
