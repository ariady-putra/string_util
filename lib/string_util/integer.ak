use aiken/bytearray.{to_string}
use aiken/string.{from_int, join}

/// ```
/// print("Deadline", 42) // Deadline: 42
/// ```
pub fn print(label: ByteArray, integer: Int) -> String {
  [
    label
      |> to_string,
    @": ",
    integer
      |> from_int,
  ]
    |> join(@"")
}
