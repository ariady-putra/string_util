use aiken/cbor
use aiken/primitive/bytearray
use aiken/primitive/string

/// ```
/// serialise_to_hex(42) // 182a
/// serialise_to_hex(24) // 1818
/// ```
pub fn serialise_to_hex(data: Data) -> String {
  data
    |> cbor.serialise
    |> bytearray.to_hex
}

/// ```
/// print("Datum", 42) // Datum: "182a"
/// print("Redeemer", 24) // Redeemer: "1818"
/// ```
pub fn print(label: ByteArray, data: Data) -> String {
  string.join(
    [
      label
        |> bytearray.to_string,
      @": ",
      #"22"
        |> bytearray.to_string,
      data
        |> serialise_to_hex,
      #"22"
        |> bytearray.to_string,
    ],
    @"",
  )
}
