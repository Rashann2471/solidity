contract C {
    function f() external pure {
        assembly {
            pop(tload(0))
        }
    }
}
// ====
// EVMVersion: >=cancun
// ----
// Warning 2394: (81-86): Please, only use transient storage if you know what you are doing. If you know what you are doing, please don't use transient storage (unless strictly needed).
// TypeError 2527: (81-89): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
