//// ```
//// ┍━ test_integer ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//// │ PASS [mem:   41783, cpu:  19389424] print_integer
//// │ · with traces
//// │ | Deadline: 42
//// ┕━━━━━━━━━━━━━━━━━━━━ 1 tests | 1 passed | 0 failed
//// ```

use string_util/integer.{print}

test print_integer() {
  trace print("Deadline", 42)
  True
}
