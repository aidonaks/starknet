from starkware.cairo.common.registers import get_fp_and_pc

struct Account:
    member balance : felt
end

@external
func transfer{output_ptr : felt*, range_check_ptr}():
    alloc_locals
    local memory_dict : DictAccess* = new_dict_access()

    let (fp, _) = get_fp_and_pc()
    let sender = [fp + (-3)]
    let receiver = [fp + (-4)]
    let amount = [fp + (-5)]

    let sender_account : Account* = dict_read(memory_dict, sender)
    let receiver_account : Account* = dict_read(memory_dict, receiver)

    assert sender_account.balance >= amount

    sender_account.balance = sender_account.balance - amount
    receiver_account.balance = receiver_account.balance + amount

    dict_write(memory_dict, sender, sender_account)
    dict_write(memory_dict, receiver, receiver_account)

    return ()
end
