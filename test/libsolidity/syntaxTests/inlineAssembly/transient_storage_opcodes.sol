contract C {
    function f() external returns(uint a) {
        assembly {
            tstore(0, 13)
            a := tload(0)
        }
    }
}
// ====
// EVMVersion: >=cancun
// ----
// Warning 2394: (88-94): Please, only use transient storage if you know what you are doing. If you know what you are doing, please don't use transient storage (unless strictly needed).
// Warning 2394: (119-124): Please, only use transient storage if you know what you are doing. If you know what you are doing, please don't use transient storage (unless strictly needed).
