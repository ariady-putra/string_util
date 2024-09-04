//// ```
//// ┍━ test_bytes ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//// │ PASS [mem:  208834, cpu:  62088601] print_bytes_to_hex
//// │ · with traces
//// │ | Hello world!: "48656C6C6F20776F726C6421"
//// │ | ABC: "414243"
//// ┕━━━━━━━━━━━━━━━━━━━━━━━━━ 1 tests | 1 passed | 0 failed
//// ```

use string_util/bytes.{print}

test print_bytes_to_hex() {
  trace print("Hello world!", "Hello world!")
  trace print("ABC", #"414243")
  True
}
