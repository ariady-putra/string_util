//// ```
//// ┍━ test_integer ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//// │ PASS [mem:   44115, cpu:  19919424] print_integer
//// │ ↳ Deadline: 42
//// ┕━━━━━━━━━━━━━━━━━━━━ 1 tests | 1 passed | 0 failed
//// ```

use string_util/integer.{print}

test print_integer() {
  trace print("Deadline", 42)
  True
}
