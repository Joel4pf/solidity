contract C {
    function f() public view returns (uint) {
        return block.blobbasefee;
    }
    function g() public view returns (uint ret) {
        assembly {
            ret := blobbasefee()
        }
    }
}
// ====
// EVMVersion: =shanghai
// ----
// TypeError 1006: (74-91): "blobbasefee" is not supported by the VM version.
// TypeError 6679: (187-198): The "blobbasefee" instruction is only available for Cancun-compatible VMs (you are currently compiling for "shanghai").
