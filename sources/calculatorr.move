#[allow(unused_variable, unused_use, unused_field)]
module calculator::calculator {
    use sui::tx_context::TxContext;
    use sui::event;

    // Event struct to emit results
    struct Result has copy, drop {
        value: u64,
        operation: vector<u8>, // e.g., "sum", "minus"
    }

    // Function to add two numbers
    public fun sum(a: u64, b: u64, ctx: &mut TxContext): u64 {
        let result = a + b;
        event::emit(Result { value: result, operation: b"sum" });
        result
    }

    // Function to subtract two numbers (a - b)
    public fun minus(a: u64, b: u64, ctx: &mut TxContext): u64 {
        assert!(a >= b, 0);
        let result = a - b;
        event::emit(Result { value: result, operation: b"minus" });
        result
    }

    // Function to divide two numbers (a / b)
    public fun divide(a: u64, b: u64, ctx: &mut TxContext): u64 {
        assert!(b != 0, 1);
        let result = a / b;
        event::emit(Result { value: result, operation: b"divide" });
        result
    }

    // Function to multiply two numbers
    public fun multiply(a: u64, b: u64, ctx: &mut TxContext): u64 {
        let result = a * b;
        event::emit(Result { value: result, operation: b"multiply" });
        result
    }
}