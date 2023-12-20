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
// Warning 2394: (77-83): Due to a bug in the specification of EIP-1153, transient storage can break the composability of smart contracts. Since transient storage is cleared only at the end of the transaction and not at the end of call frames, your contract may unintentionally misbehave when invoked multiple times in a complex transaction. To avoid this, be sure to clear all transient storage at the end of any call to your contract. The use of transient storage for reentrancy guards that are cleared at the end of the call is safe.
// TypeError 8961: (77-89): Function cannot be declared as view because this expression (potentially) modifies the state.
