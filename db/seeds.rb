

contents = [
  "You can do this",
  "Add User Migration",
  "Do UI for Task",
  "Lowkey regret doing this project", 
  "delete this later!",
  "play some games to de-stress"
]

contents.each{ |content| Task.create(content: content)}
