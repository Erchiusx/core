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
/// Creates a new array that is a copy of the original array.
///
/// Parameters:
///
/// * `self` : The array to be copied. The type of elements in the array must be
/// `T`.
///
/// Returns a new array containing all elements from the original array in the
/// same order.
///
/// Example:
///
/// ```moonbit
///   let original = [1, 2, 3]
///   let copied = original.copy()
///   inspect(copied, content="[1, 2, 3]")
///   inspect(physical_equal(original, copied), content="false")
/// ```
pub fn[T] FixedArray::copy(self : FixedArray[T]) -> FixedArray[T] {
  let len = self.length()
  if len == 0 {
    []
  } else {
    let arr = FixedArray::make(len, self[0])
    FixedArray::unsafe_blit(arr, 0, self, 0, len)
    arr
  }
}
