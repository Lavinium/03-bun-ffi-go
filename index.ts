import { dlopen, FFIType, suffix } from "bun:ffi";
const { i32, void: VOID } = FFIType;

const path = `out/library`;

const lib = dlopen(path, {
  helloWorld: {
    args: [],
    returns: VOID,
  },
});

lib.symbols.helloWorld();
