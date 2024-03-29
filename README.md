# string_util

A utility library to pretty-print data, useful for tracing.

| ℹ️  | Package info    | aiken-extra/string_util v3.180.202403                                                               | 🪲  |
| --- | --------------- | --------------------------------------------------------------------------------------------------- | --- |
| 🟢  | **Depends on**  | **aiken-lang/stdlib v1.7.0**                                                                        | ✔️  |
| 🟢  | **Tested with** | **[21b1e29f09](https://github.com/aiken-lang/aiken/tree/21b1e29f0951db3574ffe714c06f3fcc5cd28d51)** | ✔️  |

## Usage Example

```gleam
use string_util/cbor.{print}
```

```gleam
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

```gleam
    ┍━ lock_unlock/tests ━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    │ PASS [mem: ####, cpu: ######] should_unlock
    │ ↳ Datum: "182a"
    │ ↳ Redeemer: "182a"
    │ PASS [mem: ####, cpu: ######] should_not_unlock
    │ ↳ Datum: "182a"
    │ ↳ Redeemer: "1818"
    ┕━━━━━━━━━━━━━━━━━━━━━━ 2 tests | 2 passed | 0 failed
```
