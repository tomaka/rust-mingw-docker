A Docker image based on Ubuntu that contains MinGW, rustup, Rust, Cargo and Wine.
Based on the official Rust image and automatically updated when the `rust` image is updated.

Cargo is able to build and run binaries for the `x86_86-pc-windows-gnu` and `i686-pc-windows-gnu`
targets.

Just take your favourite Rust project, put it in that image,
and run `cargo test --target x86_86-pc-windows-gnu`.
