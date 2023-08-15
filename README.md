# string_util

A utility library to pretty-print data, useful for tracing.

| ℹ️ | Package info    | aiken-extra/string_util v2.140.202308 | 🪲 |
|----|-----------------|---|---|
| 🟢 | **Depends on**  | **aiken-lang/stdlib v1.4.0** | ✔️ |
| 🟢 | **Tested with** | **[4a1ae9f412](https://github.com/aiken-lang/aiken/tree/4a1ae9f412041b573506084411bdedf50ed21f30)** | ✔️ |

## Usage Example

```
use string_util/cbor.{print}

test should_unlock() {

    // arrange:
    let datum = datum.new(42)
    let redeemer = redeemer.new(42)

    // trace:
    trace print("Datum", datum)
    trace print("Redeemer", redeemer)

    // assert:
    unlock(datum, redeemer, 42)
}
```
will give something like,
```
    ┍━ lock_unlock/tests ━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem: ####, cpu: ######] should_unlock
    │ ↳ Datum: "182a"
    │ ↳ Redeemer: "182a"
    │ PASS [mem: ####, cpu: ######] should_not_unlock
    │ ↳ Datum: "182a"
    │ ↳ Redeemer: "1818"
    ┕━━━━━━━━━━━━━━━━━━━━━━ 2 tests | 2 passed | 0 failed
```
