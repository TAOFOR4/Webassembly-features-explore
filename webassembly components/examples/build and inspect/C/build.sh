WAMR_DIR=${PWD}/../../..

echo "Build wasm app .."
$WASI_SDK_PATH/bin/clang host.c host_component_type.o my-component.c -o my-core.wasm -mexec-model=reactor


wasm-tools component new ./my-core.wasm -o my-component.wasm

