#[no_mangle]
pub extern "C" fn hello() {
    println!("Hello world from rust!");
}

#[no_mangle]
pub extern "C" fn mul(x: i32) -> i32 {
    x * 2
}