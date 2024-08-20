
module practice::asserts {

    public struct Asset has drop {
        value : u64,
        flag : u8
    }

    public entry fun build_asset(value : u64, flag : u8) {
        assert!(flag < 2 ,13);
        assert!(value > 100,14);
        let _ = create(value,flag);

    }


    fun create(value : u64, flag : u8) : Asset {
        Asset{value, flag}
    }


}