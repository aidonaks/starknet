from starkware.cairo.common.registers import get_fp_and_pc

@external
func main{output_ptr : felt*, range_check_ptr}():
    alloc_locals
    local memory_dict : DictAccess* = new_dict_access()

    let (fp, _) = get_fp_and_pc()
    let x = [fp + (-3)]
    let y = [fp + (-4)]
    let op = [fp + (-5)]

    if op == 0:
        let res = x + y
    elif op == 1:
        let res = x - y
    elif op == 2:
        let res = x * y
    elif op == 3:
        assert y != 0
        let res = x / y
    else:
        assert 0 = 1  # Invalid operation.

    [output_ptr] = res
    return ()
end
