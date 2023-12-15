contract C {
    function f() public {
        assembly {
            tstore(0, 13)
            pop(tload(0))
        }
    }
}
// ====
// EVMVersion: <=cancun
// ----
// TypeError 3768: (70-76): The "tstore" instruction is only available for Cancun-compatible VMs (you are currently compiling for "shanghai").
// TypeError 3768: (100-105): The "tload" instruction is only available for Cancun-compatible VMs (you are currently compiling for "shanghai").
