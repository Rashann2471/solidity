// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.0.0;

contract C {
    fallback() external {
        assembly {
            tstore(0, 0)
            pop(tload(0))
        }
    }
}
