module practice::practice {
    use std::string::String;
    use sui::transfer;
    use sui::tx_context::TxContext;
    
    Struct Dao {
        id: u8
        treasury: u128
        membership: u128
    }

    public fun sum(x: u64, y: u64)): u64 {
        x + y
    }


}
