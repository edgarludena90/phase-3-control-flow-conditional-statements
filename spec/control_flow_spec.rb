require_relative 'spec_helper'
require_relative '../control_flow'

def admin_login(admin, password)
  
  if (username == "admin" || username == "ADMIN" ) && password =="12345"
  "Access granted" 
  else
    "Access denied" 
  end
end

def hows_the_weather(temperature)
  res = if temperature < 40 
    "Brisk!"
  elsif temperature >=40 ||temperature <=65
    "It's a little chilly out there!"
  elsif temperature > 90 
    "It's too dang hot out there!"
  else 
    "It's perfect out there!"
   end
end

def fizzbuzz(num)
  if num % 3 == 0 && num % 5 == 0
  "FizzBuzz"
  elsif num % 3 ==0
    "fizz"
  elsif num %5 ==0 
    "Buzz"
  else 
    num  
  end

end

describe '#calculator' do
  
  it 'adds two numbers' do
    expect(calculator('+', 1, 1)).to eq(2)
  end
  
  it 'subtracts two numbers' do
    expect(calculator('-', 3, 1)).to eq(2)
  end
  
  it 'multiplies two numbers' do
    expect(calculator('*', 3, 2)).to eq(6)
  end
  
  it 'divides two numbers' do
    expect(calculator('/', 4, 2)).to eq(2)
  end
  
  it 'outputs an error message for invalid operators' do
    expect { calculator('nope', 4, 2) }.to output(a_string_including('Invalid operation!')).to_stdout
  end

  it 'returns nil for invalid operators' do
    expect(calculator('nope', 4, 2)).to eq(nil)
  end
  
end
