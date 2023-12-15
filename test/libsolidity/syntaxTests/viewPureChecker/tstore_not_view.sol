contract C {
    function f() external view {
        assembly {
            tstore(0, 0)
        }
    }
}
// ====
// EVMVersion: >=cancun
// ----
// Warning 2394: (77-83): Please, only use transient storage if you know what you are doing. If you know what you are doing, please don't use transient storage (unless strictly needed).
// TypeError 8961: (77-89): Function cannot be declared as view because this expression (potentially) modifies the state.
