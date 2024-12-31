module practice::asserts {

    public struct Asset has drop {
        value : u64,
        flag : u8
    }

let mut asset = Asset {
    value: 500,
    flag: 12,
}

let Asset {value: _ , flag: _ } = asset



    public entry fun build_asset(value : u64, flag : u8) {
        assert!(flag < 2 ,13);
        assert!(value > 100,14);
        let _ = create(value,flag);
    }


    fun create(value : u64, flag : u8) : Asset {
        Asset{value, flag}
    }


}