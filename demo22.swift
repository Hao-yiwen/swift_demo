// 高级泛型 Sequence是集合类型 Equatable： 它要求类型提供一种方法来测试其实例之间的等价性。
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Element: Equatable, T.Element == U.Element
{
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}

print(anyCommonElements([1, 2, 3], [3]))