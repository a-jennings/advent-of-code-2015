file = File.open('input.txt')
input = file.read
data = input.split("")

def part_1(data)
    start_time = Time.now
    puts "Part 1: #{data.count('(') - data.count(')')}"
    puts "Execution time: #{(Time.now - start_time).to_f.round(6)}s"
end

def part_2(data)
    start_time = Time.now
    floor_count = 0
    data.each_with_index do |command, index|
        if floor_count == -1
            puts "Part 2: #{index}"
            puts "Execution time: #{(Time.now - start_time).to_f.round(6)}s"
            break
        end
        command == '(' ? floor_count += 1 : floor_count -=1
    end
end

part_1(data)
part_2(data)
