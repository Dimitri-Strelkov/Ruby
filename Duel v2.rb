# coding: utf-8

#В игре два ковбоя перестреливаются.
#Игрок - ковбой Биба. Его противник - ковбой Боба
#У каждого игрока 3 очка жизни, которые нужно привести к 0
#Enter  - это выстрел (shot)
#Если условие выполнено и попал = у противника отнимается 1 очко
#Иначе = "не попал", стреляет ковбой-компьютер Боба
#Если попал, Боба выиграл
#Если "не попал", стреляет Биба, цикл повторяется.
#Если Жизнь противника = 0, стрелок выиграл.

# 1. Компьютер придумывает случайное число от 1 до 10
# 2. Компьютер придумывает еще одно случайное число от 1 до 10
# 3. Пользователь нажимает ввод "Выстрел"
# 4. Число 1 (выстрел) сравнивается с числом 2 (шанс)
# 5. Если число 1 больше числа 2, то Успех
# rand - функция, которая создает случайное дробное число от 0 до 1.

# Биба жизнь = 3
# Боба жизнь = 3
# успешный выстрел = 3 - 1


puts "Однажды ковбои Биба и Боба решили выяснить, кто из них лучший стрелок, и устроили дуель."
puts "Вы ковбой Биба."
puts "Чтобы выстрелить, нажмите Enter"
puts
biba_hp = 3
boba_hp = 3

puts "Биба: здоровье #{biba_hp}"
puts "Боба Бонс: здоровье #{boba_hp}"
puts

loop do

random1 = rand(1..10)
random2 = rand(1..10)

print 'Биба стреляет'
gets.chomp

if random1 > random2
  puts "Биба попал!"
  puts
  boba_hp -= 1
  puts "Боба Бонс: здоровье #{boba_hp}"
  puts
    if boba_hp ==0
    puts "Вы победили!"
    break
    end
    puts "Боба Бонс стреляет"

    random1 = rand(1..10)
    random2 = rand(1..10)

    if random1 > random2
      puts "Боба Бонс попал!"
      puts
      biba_hp -= 1
      puts "Биба: здоровье #{biba_hp}"
      puts
        if biba_hp ==0
        puts "Боба Бонс победил!"
        break
        end
    elsif random1 == random2
      puts "Заклинило!"
      puts
    else
      puts "Мимо!"
      puts 
    end

elsif random1 == random2
  puts "Заклинило!"
  puts

  sleep 1

    # теперь стреляет Боба
    
    puts "Боба Бонс выстрелил в ответ и..."

    random1 = rand(1..10)
    random2 = rand(1..10)

    if random1 > random2
    puts "Боба Бонс попал!"
    puts
    biba_hp -= 1
    puts "Биба: здоровье #{biba_hp}"
    puts
        if biba_hp ==0
        puts "Боба Бонс победил!"
        break
        end
    elsif random1 == random2
    puts "Заклинило!"
    puts
    else
    puts "Мимо!"
    puts 
    end

else
  puts "Мимо!"
  puts

    # теперь стреляет Боба

  sleep 1
    puts ''
    puts "Боба Бонс выстрелил в ответ и..."

      random1 = rand(1..10)
      random2 = rand(1..10)

    if random1 > random2
    puts "Боба Бонс попал!"
    puts
    biba_hp -= 1
    puts "Биба: здоровье #{biba_hp}"
    puts
        if biba_hp ==0
        puts "Боба Бонс победил!"
        break
        end
    elsif random1 == random2
    puts "Заклинило!"
    puts
    else
    puts "Мимо!"
    puts
    end
end

end

gets