# Building a Calculator of Wasm Components

This example is based on [offical examples](https://github.com/bytecodealliance/component-docs/blob/main/component-model/examples/tutorial/README.md)

## Building and running the example

To compose a calculator component with an add operator, run the following:

```sh
(cd calculator && cargo component build --release)
(cd adder && $WASI_SDK_PATH/bin/clang adder.c adder_component_type.o adder_component.c -o adder_core.wasm -mexec-model=reactor && wasm-tools component new ./adder_core.wasm -o adder.wasm)
(cd command && cargo component build --release)
wasm-tools compose calculator/target/wasm32-wasi/release/calculator.wasm -d adder/target/wasm32-wasi/release/adder.wasm -o composed.wasm
wasm-tools compose command/target/wasm32-wasi/release/command.wasm -d composed.wasm -o command.wasm
```

Now, run the component with wasmtime:

```sh
wasmtime run command.wasm 1 2 add
1 + 2 = 3
```
