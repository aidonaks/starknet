# starknet

**Overview**

Starknet is a permissionless, decentralized zero-knowledge rollup (ZK rollup) for Ethereum. It operates as a Layer 2 (L2) blockchain, enabling any dApp to achieve unlimited scale for its computation without compromising on Ethereum’s composability and security.

Starknet achieves secure low cost transactions and high performance by using the STARK cryptographic proof system. Starknet contracts and the Starknet OS are written in Cairo, a custom-built and specialized programming language.

**Welcome to Cairo 1.0**

Cairo is the first Turing-complete language for creating provable programs for general computation.

It is a Rust-like high-level language. Like Rust, it is intended to allow developers to easily write code that is efficient and safe.

One of the most significant changes in Cairo 1.0 is the syntax. We have taken inspiration from Rust to create a more developer-friendly language that is easier to read and write. The new version of Cairo allows writing safer code (strongly typed, ownership and borrowing, etc.), while also being more expressive.

Cairo 1.0 also introduces Sierra, a new intermediate representation that ensures every Cairo run can be proven. This makes Cairo 1.0 particularly well-suited for use in a permissionless network like Starknet, where it can provide robust DoS protection and censorship resistance. You can read more about Sierra here.
