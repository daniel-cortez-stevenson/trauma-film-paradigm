create_randomization <- function(num_trials, trials_per_block){
  num_blocks = num_trials/trials_per_block
  randomized_blocks = sample(c(1:num_blocks), num_blocks)
  
  randomized_trials = integer(num_trials)
  index = 1
  for (block in randomized_blocks){
    min_trial = (block -1)*10+1
    max_trial = block*10
    randomized_trials[index:(index+9)] = sample(c(min_trial:max_trial),trials_per_block)
    index = index + 10
  }
  return(randomized_trials)
}


rand1 = create_randomization(60, 10)
rand2 = create_randomization(60, 10)
rand3 = create_randomization(60, 10)
rand4 = create_randomization(60, 10)


