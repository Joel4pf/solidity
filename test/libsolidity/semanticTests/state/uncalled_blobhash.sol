contract C {
    function f() public returns (bytes32) {
        return (blobhash)(0);
    }
}
// ====
// EVMVersion: >=cancun
// ----
// f() -> 0x0100000000000000000000000000000000000000000000000000000000000001
