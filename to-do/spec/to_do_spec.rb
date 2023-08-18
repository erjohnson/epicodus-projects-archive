require 'rspec'
require 'lists'
require 'tasks'

describe 'List' do
  it 'initializes a new list' do
    new_list = List.new("Chores")
    new_list.should be_an_instance_of List
  end

  it 'lets you read the title' do
    new_list = List.new("Bucket List")
    new_list.name.should eq "Bucket List"
  end

  it 'adds a task to the list' do
    new_list = List.new("Chores")
    new_list.add_task("Scrub zebrazz")
    new_list.task_list[0].title.should eq "Scrub zebrazz"
  end

  it 'lets you read all the tasks' do
    new_list = List.new("Jobs")
    new_list.add_task("stuff")
    new_list.add_task("things")
    new_list.task_list[0].title.should eq "stuff"
    new_list.task_list[1].title.should eq "things"
  end
end

describe 'Task' do
  it 'initializes a new task' do
    new_task = Task.new("Scrub zebra")
    new_task.should be_an_instance_of Task
  end

  it 'lets you read the description' do
    new_task = Task.new("Jump the shark")
    new_task.title.should eq "Jump the shark"
  end
end
