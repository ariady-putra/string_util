# string_util

A utility library to pretty-print data, useful for tracing.

| ℹ️ | Package name and version | aiken-extra/string_util v2.130.1011-alpha | ✔️ |
|----|--------------------------|-------------------------------------------|---|
| 🟢 | **Depends on**           | **aiken-lang/stdlib v1.3.0**              | ✔️ |
| 🟢 | **Compatible with**      | **aiken v1.0.11-alpha**                   | ✔️ |
| ⚠️ | **Incompatible with**     | **aiken v1.0.12-alpha**[^x]              | ❌ |
[^x]: Some issues with `trace`, `todo`, and `error`/`fail` (<https://github.com/aiken-lang/aiken/issues/675>)

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
    trace "Datum"
        |> print(datum)
    trace "Redeemer"
        |> print(redeemer)

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
