//// ```
//// ┍━ test_cbor ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//// │ PASS [mem: 1472738, cpu: 492103863] print_cbor_hex
//// │ · with traces
//// │ | Hello world!: "4C48656C6C6F20776F726C6421"
//// │ | ABC: "43414243"
//// │ | 42: "182A"
//// │ | []: "80"
//// │ | [foo, bar]: "9F43666F6F43626172FF"
//// │ | (1, 2): "9F0102FF"
//// │ | [(1, ABC)]: "9F9F0143414243FFFF"
//// │ | [(1, 250), (2, 200), (3, 300)]: "9F9F0118FAFF9F0218C8FF9F0319012CFFFF"
//// │ | Some(None): "D8799FD87A80FF"
//// │ | None: "D87A80"
//// │ | True: "D87A80"
//// │ | False: "D87980"
//// │ | (True, False): "9FD87A80D87980FF"
//// │ | [True, False]: "9FD87A80D87980FF"
//// │ | [(True, False)]: "9F9FD87A80D87980FFFF"
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
