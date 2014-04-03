class List
	def initialize
	end

	def add_item()
	end
end

class ListItem
	@@counter = 0
  
  def initialize(task)
  	@task = task
  	@@counter += 1
  	@id = @@counter
  	@completed = false
  	@created_at = Time.now
  end

  def create_new(input)
  	@items << input
  end
end

class Runner
	def initialize
		@list = List.new
	end

	def run
		loop do
			main_menu
			input = gets.chomp.to_i

			case input
			when 1
				create_item
			when 2
				edit_item
			when 3
				complete_item
			when 4
				list_all
			when 5
				delete_item
			when 0
				break
			end
		end
	end

	def main_menu
		puts "Main menu"
		puts "[1] Create item"
		puts "[2] Edit item"
		puts "[3] Mark as completed"
    puts "[4] List all items"
		puts "[5] Delete item"		
		puts "[0] Exit"
	end

	def create_item
    puts "Enter a new task"
    input = gets.chomp
    item = ListItem.new(input)
    @list.add_item(item)
    
	end

	def edit_item
	end

	def complete_item
	end

	def list_all
	end

	def delete_item
	end
end

jon = Runner.new
jon.run