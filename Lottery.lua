math.randomseed(os.time())

function generate_lottery_numbers()
    local lottery_numbers = {}
    for i = 1, 6 do
        local number = math.random(1, 49)
        -- check if the number has already been picked
        while (check_duplicate(lottery_numbers, number)) do
            number = math.random(1, 49)
        end
        table.insert(lottery_numbers, number)
    end
    return lottery_numbers
end

function check_duplicate(table, number)
    for i, value in ipairs(table) do
        if (value == number) then
            return true
        end
    end
    return false
end

print("Your lottery numbers are:")
print(table.concat(generate_lottery_numbers(), ", "))
