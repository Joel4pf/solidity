contract C {
    function f() public view returns (uint ret) {
        assembly {
            let blobbasefee := sload(0)
            ret := blobbasefee
        }
    }
    function g() public pure returns (uint ret) {
        assembly {
            function blobbasefee() -> r {
                r := 1000
            }
            ret := blobbasefee()
        }
    }
}
// ====
// compileViaYul: also
// EVMVersion: <=shanghai
// ----
// f() -> 0
// g() -> 1000
