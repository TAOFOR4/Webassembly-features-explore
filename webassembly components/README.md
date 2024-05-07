# What Are WebAssembly Components?

WebAssembly components are a high-level abstraction introduced in the WebAssembly Component Model. Components allow seamless interoperability between different WebAssembly modules and languages by providing standardized interfaces through WebAssembly Interface Types (WIT).

## Key Features of WebAssembly Components

1. **Language Interoperability:** Components allow WebAssembly modules written in different languages to work together seamlessly.
2. **Interface Types (WIT):** Provides a standardized way to describe module interfaces and communicate across components.
3. **Component Composition:** Components can import and export other components, allowing for modular and reusable application architecture.

## Useful Links

- [WebAssembly Component Model Proposal](https://github.com/WebAssembly/component-model)
- [WIT Bindgen](https://github.com/wasmerio/wit-bindgen) - Tool to generate bindings between components and interface types
- [WebAssembly Interface Types](https://github.com/WebAssembly/interface-types) - Specification for WebAssembly Interface Types
- [WASI (WebAssembly System Interface)](https://wasi.dev/) - Set of standardized system APIs for WebAssembly
- [WebAssembly Component Tutorial](https://component-model.bytecodealliance.org/introduction.html) - This is a tutorial for WebAssembly Component.

## Supported Runtime
- [wasmtime] (https://github.com/bytecodealliance/wasmtime)
- [how to use it] (https://github.com/bytecodealliance/component-docs/blob/main/component-model/src/runtimes/wasmtime.md)
