use aiken/primitive/bytearray.{to_hex, to_string}
use aiken/primitive/string.{join}

/// ```
/// print("Hello world!", "Hello world!") // Hello world!: "48656c6c6f20776f726c6421"
/// print("ABC", #"414243") // ABC: "414243"
/// ```
pub fn print(label: ByteArray, bytes: ByteArray) -> String {
  [
    label |> to_string,
    @": ",
    #"22" |> to_string,
    bytes |> to_hex,
    #"22" |> to_string,
  ]
    |> join(@"")
}
