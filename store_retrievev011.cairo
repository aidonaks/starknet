from starkware.cairo.common.registers import get_fp_and_pc

@external
func main{output_ptr : felt*, range_check_ptr}():
    alloc_locals
    local memory_dict : DictAccess* = new_dict_access()

    let (fp, _) = get_fp_and_pc()
    let key = [fp + (-3)]
    let value = [fp + (-4)]

    dict_write(memory_dict, key, value)

    let stored_value = dict_read(memory_dict, key)

    [output_ptr] = stored_value
    return ()
end
