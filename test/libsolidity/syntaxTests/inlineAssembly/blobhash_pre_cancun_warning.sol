contract C {
    function f() public pure returns (uint ret) {
        assembly {
            let blobhash := 1
            ret := blobhash
        }
    }
    function g() public pure returns (uint ret) {
        assembly {
            function blobhash() -> r {
                r := 1000
            }
            ret := blobhash()
        }
    }
}
// ====
// EVMVersion: <=shanghai
// ----
// Warning 7527: (98-106): "blobhash" was introduced as builtin function in EVM version Cancun but you are currently using EVM version shanghai and it will not behave as expected for EVM version >= Cancun.
