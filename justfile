TARGET := "wasm32-unknown-unknown"
SIMD128 := "RUSTFLAGS=\"-C target-feature=+simd128\""

test:
    {{ SIMD128 }} cargo test --target={{TARGET}}

expand:
    {{ SIMD128 }} cargo expand --target={{TARGET}}

build:
    {{ SIMD128 }} cargo build --target={{TARGET}}
