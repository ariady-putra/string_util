//// ```
//// ┍━ test_bytes ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//// │ PASS [mem: ####, cpu: ######] print_bytes_to_hex
//// │ ↳ Hello world!: "48656c6c6f20776f726c6421"
//// │ ↳ ABC: "414243"
//// ┕━━━━━━━━━━━━━━━━━━━ 1 tests | 1 passed | 0 failed
//// ```

use string_util/bytes.{print}

test print_bytes_to_hex() {
  trace "Hello world!"
    |> print("Hello world!")
  //
  trace "ABC"
    |> print(#"414243")
  //
  True
}
