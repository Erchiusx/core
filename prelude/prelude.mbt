// Copyright 2025 International Digital Economy Academy
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

///|
pub typealias @builtin.(
  ArgsLoc,
  Array,
  UninitializedArray,
  Failure,
  Hasher,
  Iter,
  Iter2,
  IterResult,
  Json,
  Map,
  InspectError,
  SnapshotError,
  SourceLoc,
  StringBuilder
)

///|
pub typealias @set.Set

///|
pub typealias @bigint.BigInt

///|
pub traitalias @builtin.(
  Eq,
  Compare,
  Hash,
  Logger,
  Show,
  ToJson,
  Default,
  Add,
  Sub,
  Mul,
  Div,
  Mod,
  Neg,
  Shl,
  Shr,
  BitAnd,
  BitOr,
  BitXOr
)

///|
pub fnalias @builtin.(
  abort,
  assert_eq,
  assert_not_eq,
  assert_true,
  assert_false,
  fail,
  ignore,
  inspect,
  panic,
  physical_equal,
  println,
  not,
  repr,
  dump
)

///| 
/// Applies a function to a value and returns the original value.
///
/// # Parameters
/// * `value`: The value to pass to the function.
/// * `f`: The function to apply to the value.
///
/// # Returns
/// The original value, unchanged.
///
/// # Examples
/// ```mbt
/// let val : Ref[Int] = { val : 1 }
/// let x : Int = 5
/// assert_eq(x |> tap((n) => { val.val += n }), 5)
/// // This is not allowed
/// // x |> (val.val += _)
/// assert_eq(val.val, 6)
/// ```
pub fn[T] tap(value : T, f : (T) -> Unit) -> T {
  f(value)
  value
}

///| 
/// Applies a function to a value and returns the result of the function.
///
/// # Parameters
/// * `value`: The value to pass to the function.
/// * `f`: The function to apply to the value.
///
/// # Returns
/// The result of applying the function to the value.
///
/// # Examples
/// ```moonbit
/// let x = 5
/// let result = x |> then((n) => { n * 2 })
/// // This is not allowed
/// // x |> (_ * 2)
/// assert_eq(result, 10)
/// ```
pub fn[T, R] then(value : T, f : (T) -> R) -> R {
  f(value)
}
