//// ```
//// ┍━ test_cbor ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//// │ PASS [mem: 1472738, cpu: 880660102] print_cbor_hex
//// │ · with traces
//// │ | Hello world!: "4c48656c6c6f20776f726c6421"
//// │ | ABC: "43414243"
//// │ | 42: "182a"
//// │ | []: "80"
//// │ | [foo, bar]: "9f43666f6f43626172ff"
//// │ | (1, 2): "9f0102ff"
//// │ | [(1, ABC)]: "9f9f0143414243ffff"
//// │ | [(1, 250), (2, 200), (3, 300)]: "9f9f0118faff9f0218c8ff9f0319012cffff"
//// │ | Some(None): "d8799fd87a80ff"
//// │ | None: "d87a80"
//// │ | True: "d87a80"
//// │ | False: "d87980"
//// │ | (True, False): "9fd87a80d87980ff"
//// │ | [True, False]: "9fd87a80d87980ff"
//// │ | [(True, False)]: "9f9fd87a80d87980ffff"
//// ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1 tests | 1 passed | 0 failed
//// ```

use string_util/cbor.{print}

test print_cbor_hex() {
  trace print("Hello world!", "Hello world!")
  trace print("ABC", #"414243")
  trace print("42", 42)
  trace print("[]", [])
  trace print("[foo, bar]", ["foo", "bar"])
  trace print("(1, 2)", (1, 2))
  trace print("[(1, ABC)]", [(1, "ABC")])
  trace print("[(1, 250), (2, 200), (3, 300)]", [(1, 250), (2, 200), (3, 300)])
  trace print("Some(None)", Some(None))
  trace print("None", None)
  trace print("True", True)
  trace print("False", False)
  trace print("(True, False)", (True, False))
  trace print("[True, False]", [True, False])
  trace print("[(True, False)]", [(True, False)])
  True
}
