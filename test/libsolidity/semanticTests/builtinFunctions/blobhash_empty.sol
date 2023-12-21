contract C {
    function f() public view returns (bytes32 ret) {
        assembly {
            ret := blobhash(3)
        }
    }
}
// ====
// EVMVersion: >=cancun
// ----
// f() -> 0x00
