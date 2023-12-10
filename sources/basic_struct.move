module wallet_address::basic_asset {
    struct Asset has drop {
        flag: u8,
        value: u64
    }
// add build_asset function
    fun create(value : u64, flag: u8 ): Asset {
        Asset {flag, value}  
    }

    public fun build_asset(value: u64, flag: u8): Asset {
        assert!(value < 100, 17)
        assert!(flag =!  1 || 0,  17)

        create(value, flag)

    }
}