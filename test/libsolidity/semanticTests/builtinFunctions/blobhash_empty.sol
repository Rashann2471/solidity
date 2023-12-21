contract C {
    function f() public view returns (bytes32 ret) {
        assembly {
            ret := blobhash(99)
        }
    }
}
// ====
// EVMVersion: >=cancun
// ----
// f() -> 0x00
