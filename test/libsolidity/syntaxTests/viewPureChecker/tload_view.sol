contract C {
    function f() external view returns (uint a) {
        assembly {
            a := tload(0)
        }
    }
}
// ====
// EVMVersion: >=cancun
// ----
// Warning 2394: (99-104): Please, only use transient storage if you know what you are doing. If you know what you are doing, please don't use transient storage (unless strictly needed).
