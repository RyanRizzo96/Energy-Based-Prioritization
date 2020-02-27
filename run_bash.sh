#!/usr/bin/env bash
source ~/.virtualenvs/baseline_env/bin/activate
echo $HOME

export OPENAI_LOG_FORMAT=stdout,log,csv,tensorboard
# for seed in $(seq 4 5); do OPENAI_LOGDIR=/home/ubuntu/RL_baselines/.log/two_seeds/run_1/FPAP_200k-$seed mpirun -np 16 python3 -m baselines.run --alg=her --env=FetchPickAndPlace-v1 --num_timesteps=200000 --seed=$seed --layers=3; done
# for seed in $(seq 2 4); do OPENAI_LOGDIR=/home/ubuntu/Energy-Based-Prioritization/EBP_new_results/FPush_200k/trial_logdir1-$seed mpirun -np 16 python3 -m baselines.run --alg=her --env=FetchPush-v1 --num_timesteps=100000 --seed=$seed; done

python3 -m baselines.run --alg=her --env=FetchReach-v1 --num_timesteps=500

# mpirun -np 16 python3 -m baselines.run --alg=her --env=FetchPickAndPlace-v1 --num_timesteps=200000 --save_path=EBP_policies/FetchPAP200k/trial_1-seed4 --seed=4
