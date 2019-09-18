#!/bin/bash

cargo build
# blue_increase tests
: '
cd dgen
cargo build
cargo run blue_increase_equivalent_1_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "0,1,2,3,10" ../src/prog_to_run.rs
cd ..
cargo run experiments/blue_increase/blue_increase_1/blue_increase_equivalent_1_canonicalizer_equivalent_0_pred_raw_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_increase
read -p "Press enter to continue"
cd dgen
cargo run blue_increase_equivalent_2_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "11,21,10,12,0,3,1,2,10,2,1" ../src/prog_to_run.rs
cd ..
cargo run experiments/blue_increase/blue_increase_2/blue_increase_equivalent_2_canonicalizer_equivalent_0_pred_raw_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_increase

read -p "Press enter to continue"
cd dgen
cargo run blue_increase_equivalent_3_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "0,1,2,3,10" ../src/prog_to_run.rs
cd ..
cargo run experiments/blue_increase/blue_increase_3/blue_increase_equivalent_3_canonicalizer_equivalent_0_pred_raw_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_increase
read -p "Press enter to continue"
cd dgen
cargo run blue_increase_equivalent_4_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "1,12,3,10,2,11,10,1,0,4,14,2" ../src/prog_to_run.rs

cd ..
cargo run experiments/blue_increase/blue_increase_4/blue_increase_equivalent_2_canonicalizer_equivalent_4_pred_raw_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_increase 

read -p "Press enter to continue"
cd dgen
cargo run blue_increase_equivalent_5_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "0,1,2,3,10" ../src/prog_to_run.rs
cd ..
cargo run experiments/blue_increase/blue_increase_5/blue_increase_equivalent_2_canonicalizer_equivalent_5_pred_raw_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_increase

read -p "Press enter to continue"
cd dgen
cargo run blue_increase_equivalent_6_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "1,10,11,22,1,13,12,10,0,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/blue_increase/blue_increase_6/blue_increase_equivalent_2_canonicalizer_equivalent_6_pred_raw_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_increase

read -p "Press enter to continue"

cd dgen
cargo run blue_increase_equivalent_7_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "5,15,21,9,10,3,14,4,12,10,0,16,1,11,22,6,1,2,20"../src/prog_to_run.rs
cd ..
cargo run experiments/blue_increase/blue_increase_7/blue_increase_equivalent_7_canonicalizer_equivalent_0_pred_raw_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_increase

read -p "Press enter to continue"
cd dgen
cargo run blue_increase_equivalent_8_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "0,1,2,3,10" ../src/prog_to_run.rs
cd ..
cargo run experiments/blue_increase/blue_increase_8/blue_increase_equivalent_8_canonicalizer_equivalent_0_pred_raw_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_increase

read -p "Press enter to continue"
cd dgen
cargo run blue_increase_equivalent_9_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "12,0,10,2,3,215,1,1,203,11,214,204" ../src/prog_to_run.rs
cd ..
cargo run experiments/blue_increase/blue_increase_9/blue_increase_equivalent_9_canonicalizer_equivalent_0_pred_raw_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_increase

read -p "Press enter to continue"
cd dgen
cargo run blue_increase_equivalent_10_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "0,11,1,10,13,3,2,10,12,21,1" ../src/prog_to_run.rs
cd ..
cargo run experiments/blue_increase/blue_increase_10/blue_increase_equivalent_10_canonicalizer_equivalent_0_pred_raw_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_increase
'
# blue_decrease tests
: '
read -p "Press enter to continue"
cd dgen
cargo run blue_decrease_equivalent_1_canonicalizer_equivalent_0 ../example_alus/stateful_alus/sub.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "19,10,15,18,11,1,3,1,0,12,22,2,16,10,9,17" ../src/prog_to_run.rs 
cd ..
cargo run experiments/blue_decrease/blue_decrease_1/blue_decrease_equivalent_1_canonicalizer_equivalent_0_sub_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_decrease

read -p "Press enter to continue"
cd dgen
cargo run blue_decrease_equivalent_2_canonicalizer_equivalent_0 ../example_alus/stateful_alus/sub.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "3,12,1,2,2,0,10,11,10,1" ../src/prog_to_run.rs 
cd ..
cargo run experiments/blue_decrease/blue_decrease_2/blue_decrease_equivalent_2_canonicalizer_equivalent_0_sub_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_decrease

read -p "Press enter to continue"
cd dgen
cargo run blue_decrease_equivalent_3_canonicalizer_equivalent_0 ../example_alus/stateful_alus/sub.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "10,0,216,10,2,3,12,205,11,1,1,4" ../src/prog_to_run.rs 
cd ..
cargo run experiments/blue_decrease/blue_decrease_3/blue_decrease_equivalent_3_canonicalizer_equivalent_0_sub_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_decrease
read -p "Press enter to continue"
cd dgen
cargo run blue_decrease_equivalent_4_canonicalizer_equivalent_0 ../example_alus/stateful_alus/sub.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "12,11,10,10,2,0,1,1,3" ../src/prog_to_run.rs 
cd ..
cargo run experiments/blue_decrease/blue_decrease_4/blue_decrease_equivalent_4_canonicalizer_equivalent_0_sub_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_decrease

read -p "Press enter to continue"
cd dgen
cargo run blue_decrease_equivalent_5_canonicalizer_equivalent_0 ../example_alus/stateful_alus/sub.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "10,0,6,10,2,12,11,1,1,3" ../src/prog_to_run.rs 

cd ..
cargo run experiments/blue_decrease/blue_decrease_5/blue_decrease_equivalent_5_canonicalizer_equivalent_0_sub_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_decrease 

read -p "Press enter to continue"
cd dgen
cargo run blue_decrease_equivalent_6_canonicalizer_equivalent_0 ../example_alus/stateful_alus/sub.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "2,12,11,1,1,2,0,10,3,10,13" ../src/prog_to_run.rs 
cd ..
cargo run experiments/blue_decrease/blue_decrease_6/blue_decrease_equivalent_6_canonicalizer_equivalent_0_sub_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_decrease
read -p "Press enter to continue"

cd dgen
cargo run blue_decrease_equivalent_7_canonicalizer_equivalent_0 ../example_alus/stateful_alus/sub.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "2,1023,10,11,1,13,18,3,5,12,9,20,10,7,1014,0,1" ../src/prog_to_run.rs 
cd ..
cargo run experiments/blue_decrease/blue_decrease_7/blue_decrease_equivalent_7_canonicalizer_equivalent_0_sub_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_decrease

read -p "Press enter to continue"
cd dgen
cargo run blue_decrease_equivalent_8_canonicalizer_equivalent_0 ../example_alus/stateful_alus/sub.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "0,3,11,10,12,1,10,1,2,21" ../src/prog_to_run.rs 
cd ..
cargo run experiments/blue_decrease/blue_decrease_8/blue_decrease_equivalent_1_canonicalizer_equivalent_8_sub_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_decrease

read -p "Press enter to continue"
cd dgen
cargo run blue_decrease_equivalent_9_canonicalizer_equivalent_0 ../example_alus/stateful_alus/sub.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "2,307,9,1,1,10,0,12,3,11" ../src/prog_to_run.rs 
cd ..
cargo run experiments/blue_decrease/blue_decrease_9/blue_decrease_equivalent_9_canonicalizer_equivalent_0_sub_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_decrease

read -p "Press enter to continue"
cd dgen
cargo run blue_decrease_equivalent_10_canonicalizer_equivalent_0 ../example_alus/stateful_alus/sub.alu ../example_alus/stateless_alus/stateless_alu_arith.alu 4 2 2 "11,3,10,0,13,2,10,2,1,1,12" ../src/prog_to_run.rs 
cd ..
cargo run experiments/blue_decrease/blue_decrease_10/blue_decrease_equivalent_10_canonicalizer_equivalent_0_sub_stateless_alu_arith_4_2_hole_cfgs.txt 2 1000 blue_decrease
'
# conga tests
: '
read -p "Press enter to continue"
cd dgen
cargo run conga_equivalent_1_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 5 1 "0,1,2,3" ../src/prog_to_run.rs

cd ..
cargo run experiments/conga/conga_1/conga_equivalent_1_canonicalizer_equivalent_1_pair_stateless_alu_1_5_hole_cfgs.txt 5 1000 conga

read -p "Press enter to continue"
cd dgen
cargo run conga_equivalent_2_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 5 1 "0,1,2,3,4,303,337,687" ../src/prog_to_run.rs

cd ..
cargo run experiments/conga/conga_2/conga_equivalent_2_canonicalizer_equivalent_1_pair_stateless_alu_1_5_hole_cfgs.txt 5 1000 conga
read -p "Press enter to continue"
cd dgen
cargo run conga_equivalent_3_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 5 1 "0,1,2,3" ../src/prog_to_run.rs

cd ..
cargo run experiments/conga/conga_3/conga_equivalent_3_canonicalizer_equivalent_1_pair_stateless_alu_1_5_hole_cfgs.txt 5 1000 conga
read -p "Press enter to continue"
cd dgen
cargo run conga_equivalent_4_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 5 1 "0,1,2,3" ../src/prog_to_run.rs

cd ..
cargo run experiments/conga/conga_4/conga_equivalent_4_canonicalizer_equivalent_1_pair_stateless_alu_1_5_hole_cfgs.txt 5 1000 conga

read -p "Press enter to continue"
cd dgen
cargo run conga_equivalent_5_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 5 1 "0,1,2,3,4,5" ../src/prog_to_run.rs

cd ..
cargo run experiments/conga/conga_5/conga_equivalent_5_canonicalizer_equivalent_1_pair_stateless_alu_1_5_hole_cfgs.txt 5 1000 conga
read -p "Press enter to continue"
cd dgen
cargo run conga_equivalent_1_canonicalizer_equivalent_6 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 5 1 "0,1,2,3" ../src/prog_to_run.rs

cd ..
cargo run experiments/conga/conga_6/conga_equivalent_6_canonicalizer_equivalent_1_pair_stateless_alu_1_5_hole_cfgs.txt 5 1000 conga
read -p "Press enter to continue"
cd dgen
cargo run conga_equivalent_1_canonicalizer_equivalent_7 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 5 1 "0,1,2,3" ../src/prog_to_run.rs

cd ..
cargo run experiments/conga/conga_7/conga_equivalent_7_canonicalizer_equivalent_1_pair_stateless_alu_1_5_hole_cfgs.txt 5 1000 conga
read -p "Press enter to continue"
cd dgen
cargo run conga_equivalent_7_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 5 1 "0,1,2,3" ../src/prog_to_run.rs

cd ..
cargo run experiments/conga/conga_7/conga_equivalent_7_canonicalizer_equivalent_1_pair_stateless_alu_1_5_hole_cfgs.txt 5 1000 conga
read -p "Press enter to continue"
cd dgen
cargo run conga_equivalent_8_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 5 1 "0,1,2,3" ../src/prog_to_run.rs

cd ..
cargo run experiments/conga/conga_8/conga_equivalent_8_canonicalizer_equivalent_1_pair_stateless_alu_1_5_hole_cfgs.txt 5 1000 conga
read -p "Press enter to continue"
cd dgen
cargo run conga_equivalent_9_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 5 1 "0,1,2,3" ../src/prog_to_run.rs

cd ..
cargo run experiments/conga/conga_9/conga_equivalent_9_canonicalizer_equivalent_1_pair_stateless_alu_1_5_hole_cfgs.txt 5 1000 conga
read -p "Press enter to continue"
cd dgen
cargo run conga_equivalent_10_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 5 1 "0,1,2,3,4,303,337,687" ../src/prog_to_run.rs

cd ..
cargo run experiments/conga/conga_10/conga_equivalent_10_canonicalizer_equivalent_1_pair_stateless_alu_1_5_hole_cfgs.txt 5 1000 conga
'
# marple_new_flow tests
: '
read -p "Press enter to continue"
cd dgen
cargo run marple_new_flow_equivalent_1_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 2 2 1 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_new_flow/marple_new_flow1/marple_new_flow_equivalent_1_canonicalizer_equivalent_0_pred_raw_stateless_alu_2_2_hole_cfgs.txt 1 1000 marple_new_flow

read -p "Press enter to continue"
cd dgen
cargo run marple_new_flow_equivalent_2_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 2 2 1 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_new_flow/marple_new_flow2/marple_new_flow_equivalent_2_canonicalizer_equivalent_0_pred_raw_stateless_alu_2_2_hole_cfgs.txt 1 1000 marple_new_flow 

read -p "Press enter to continue"
cd dgen
cargo run marple_new_flow_equivalent_3_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 2 2 1 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_new_flow/marple_new_flow3/marple_new_flow_equivalent_3_canonicalizer_equivalent_0_pred_raw_stateless_alu_2_2_hole_cfgs.txt 1 1000 marple_new_flow 

read -p "Press enter to continue"
cd dgen
cargo run marple_new_flow_equivalent_4_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 2 2 1 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_new_flow/marple_new_flow4/marple_new_flow_equivalent_4_canonicalizer_equivalent_0_pred_raw_stateless_alu_2_2_hole_cfgs.txt 1 1000 marple_new_flow 

read -p "Press enter to continue"
cd dgen
cargo run marple_new_flow_equivalent_5_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 2 2 1 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_new_flow/marple_new_flow5/marple_new_flow_equivalent_5_canonicalizer_equivalent_0_pred_raw_stateless_alu_2_2_hole_cfgs.txt 1 1000 marple_new_flow 

read -p "Press enter to continue"
cd dgen
cargo run marple_new_flow_equivalent_6_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 2 2 1 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_new_flow/marple_new_flow6/marple_new_flow_equivalent_6_canonicalizer_equivalent_0_pred_raw_stateless_alu_2_2_hole_cfgs.txt 1 1000 marple_new_flow 

read -p "Press enter to continue"
cd dgen
cargo run marple_new_flow_equivalent_7_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 2 2 1 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_new_flow/marple_new_flow7/marple_new_flow_equivalent_7_canonicalizer_equivalent_0_pred_raw_stateless_alu_2_2_hole_cfgs.txt 1 1000 marple_new_flow 

read -p "Press enter to continue"
cd dgen
cargo run marple_new_flow_equivalent_8_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 2 2 1 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_new_flow/marple_new_flow8/marple_new_flow_equivalent_8_canonicalizer_equivalent_0_pred_raw_stateless_alu_2_2_hole_cfgs.txt 1 1000 marple_new_flow 

read -p "Press enter to continue"
cd dgen
cargo run marple_new_flow_equivalent_9_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 2 2 1 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_new_flow/marple_new_flow9/marple_new_flow_equivalent_9_canonicalizer_equivalent_0_pred_raw_stateless_alu_2_2_hole_cfgs.txt 1 1000 marple_new_flow 

read -p "Press enter to continue"
cd dgen
cargo run marple_new_flow_equivalent_10_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 2 2 1 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_new_flow/marple_new_flow10/marple_new_flow_equivalent_10_canonicalizer_equivalent_0_pred_raw_stateless_alu_2_2_hole_cfgs.txt 1 1000 marple_new_flow 
'
# marple_tcp_nmo tests
: '
read -p "Press enter to continue"
cd dgen
cargo run marple_tcp_nmo_equivalent_1_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu  3 2 2 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_tcp_nmo/marple_tcp_nmo1/marple_tcp_nmo_equivalent_1_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_hole_cfgs.txt 1 1000 marple_tcp_nmo

read -p "Press enter to continue"
cd dgen
cargo run marple_tcp_nmo_equivalent_2_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu  3 2 2 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_tcp_nmo/marple_tcp_nmo2/marple_tcp_nmo_equivalent_2_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_hole_cfgs.txt 1 1000 marple_tcp_nmo
read -p "Press enter to continue"
cd dgen
cargo run marple_tcp_nmo_equivalent_3_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu  3 2 2 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_tcp_nmo/marple_tcp_nmo3/marple_tcp_nmo_equivalent_3_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_hole_cfgs.txt 1 1000 marple_tcp_nmo
read -p "Press enter to continue"
cd dgen
cargo run marple_tcp_nmo_equivalent_4_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu  3 2 2 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_tcp_nmo/marple_tcp_nmo4/marple_tcp_nmo_equivalent_4_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_hole_cfgs.txt 1 1000 marple_tcp_nmo
read -p "Press enter to continue"
cd dgen
cargo run marple_tcp_nmo_equivalent_4_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu  3 2 2 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_tcp_nmo/marple_tcp_nmo4/marple_tcp_nmo_equivalent_4_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_hole_cfgs.txt 1 1000 marple_tcp_nmo
read -p "Press enter to continue"
cd dgen
cargo run marple_tcp_nmo_equivalent_5_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu  3 2 2 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_tcp_nmo/marple_tcp_nmo5/marple_tcp_nmo_equivalent_5_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_hole_cfgs.txt 1 1000 marple_tcp_nmo
read -p "Press enter to continue"
cd dgen
cargo run marple_tcp_nmo_equivalent_6_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu  3 2 2 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_tcp_nmo/marple_tcp_nmo6/marple_tcp_nmo_equivalent_6_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_hole_cfgs.txt 1 1000 marple_tcp_nmo
read -p "Press enter to continue"
cd dgen
cargo run marple_tcp_nmo_equivalent_7_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu  3 2 2 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_tcp_nmo/marple_tcp_nmo7/marple_tcp_nmo_equivalent_7_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_hole_cfgs.txt 1 1000 marple_tcp_nmo
read -p "Press enter to continue"
cd dgen
cargo run marple_tcp_nmo_equivalent_8_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu  3 2 2 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_tcp_nmo/marple_tcp_nmo8/marple_tcp_nmo_equivalent_8_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_hole_cfgs.txt 1 1000 marple_tcp_nmo
read -p "Press enter to continue"
cd dgen
cargo run marple_tcp_nmo_equivalent_9_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu  3 2 2 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_tcp_nmo/marple_tcp_nmo9/marple_tcp_nmo_equivalent_9_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_hole_cfgs.txt 1 1000 marple_tcp_nmo
read -p "Press enter to continue"
cd dgen
cargo run marple_tcp_nmo_equivalent_10_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu  3 2 2 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_tcp_nmo/marple_tcp_nmo10/marple_tcp_nmo_equivalent_10_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_hole_cfgs.txt 1 1000 marple_tcp_nmo
'
# learn_filter tests
: '
read -p "Press enter to continue"
cd dgen
cargo run learn_filter_equivalent_1_canonicalizer_equivalent_0 ../example_alus/stateful_alus/raw.alu ../example_alus/stateless_alus/stateless_alu.alu  5 3 3 "2,1,0,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/learn_filter/learn_filter1/learn_filter_equivalent_1_canonicalizer_equivalent_0_raw_stateless_alu_5_3_hole_cfgs.txt 1 1000 learn_filter

read -p "Press enter to continue"
cd dgen
cargo run learn_filter_equivalent_2_canonicalizer_equivalent_0 ../example_alus/stateful_alus/raw.alu ../example_alus/stateless_alus/stateless_alu.alu  5 3 3 "3,2,1,0" ../src/prog_to_run.rs
cd ..
cargo run experiments/learn_filter/learn_filter2/learn_filter_equivalent_2_canonicalizer_equivalent_0_raw_stateless_alu_5_3_hole_cfgs.txt 1 1000 learn_filter
read -p "Press enter to continue"
cd dgen
cargo run learn_filter_equivalent_3_canonicalizer_equivalent_0 ../example_alus/stateful_alus/raw.alu ../example_alus/stateless_alus/stateless_alu.alu  5 3 3 "0,3,2,1" ../src/prog_to_run.rs
cd ..
cargo run experiments/learn_filter/learn_filter3/learn_filter_equivalent_3_canonicalizer_equivalent_0_raw_stateless_alu_5_3_hole_cfgs.txt 1 1000 learn_filter
read -p "Press enter to continue"
cd dgen
cargo run learn_filter_equivalent_4_canonicalizer_equivalent_0 ../example_alus/stateful_alus/raw.alu ../example_alus/stateless_alus/stateless_alu.alu  5 3 3 "2,0,3,1" ../src/prog_to_run.rs
cd ..
cargo run experiments/learn_filter/learn_filter4/learn_filter_equivalent_4_canonicalizer_equivalent_0_raw_stateless_alu_5_3_hole_cfgs.txt 1 1000 learn_filter
read -p "Press enter to continue"
cd dgen
cargo run learn_filter_equivalent_5_canonicalizer_equivalent_0 ../example_alus/stateful_alus/raw.alu ../example_alus/stateless_alus/stateless_alu.alu  5 3 3 "1,3,2,0" ../src/prog_to_run.rs
cd ..
cargo run experiments/learn_filter/learn_filter5/learn_filter_equivalent_5_canonicalizer_equivalent_0_raw_stateless_alu_5_3_hole_cfgs.txt 1 1000 learn_filter
read -p "Press enter to continue"
cd dgen
cargo run learn_filter_equivalent_6_canonicalizer_equivalent_0 ../example_alus/stateful_alus/raw.alu ../example_alus/stateless_alus/stateless_alu.alu  5 3 3 "1,3,0,2" ../src/prog_to_run.rs
cd ..
cargo run experiments/learn_filter/learn_filter6/learn_filter_equivalent_6_canonicalizer_equivalent_0_raw_stateless_alu_5_3_hole_cfgs.txt 1 1000 learn_filter
read -p "Press enter to continue"
cd dgen
cargo run learn_filter_equivalent_7_canonicalizer_equivalent_0 ../example_alus/stateful_alus/raw.alu ../example_alus/stateless_alus/stateless_alu.alu  5 3 3 "1,3,0,2" ../src/prog_to_run.rs
cd ..
cargo run experiments/learn_filter/learn_filter7/learn_filter_equivalent_7_canonicalizer_equivalent_0_raw_stateless_alu_5_3_hole_cfgs.txt 1 1000 learn_filter
read -p "Press enter to continue"
cd dgen
cargo run learn_filter_equivalent_8_canonicalizer_equivalent_0 ../example_alus/stateful_alus/raw.alu ../example_alus/stateless_alus/stateless_alu.alu  5 3 3 "2,1,0,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/learn_filter/learn_filter8/learn_filter_equivalent_8_canonicalizer_equivalent_0_raw_stateless_alu_5_3_hole_cfgs.txt 1 1000 learn_filter
read -p "Press enter to continue"
cd dgen
cargo run learn_filter_equivalent_9_canonicalizer_equivalent_0 ../example_alus/stateful_alus/raw.alu ../example_alus/stateless_alus/stateless_alu.alu  5 3 3 "2,1,3,0" ../src/prog_to_run.rs
cd ..
cargo run experiments/learn_filter/learn_filter9/learn_filter_equivalent_9_canonicalizer_equivalent_0_raw_stateless_alu_5_3_hole_cfgs.txt 1 1000 learn_filter
read -p "Press enter to continue"
cd dgen
cargo run learn_filter_equivalent_10_canonicalizer_equivalent_0 ../example_alus/stateful_alus/raw.alu ../example_alus/stateless_alus/stateless_alu.alu  5 3 3 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/learn_filter/learn_filter10/learn_filter_equivalent_10_canonicalizer_equivalent_0_raw_stateless_alu_5_3_hole_cfgs.txt 1 1000 learn_filter
'
# flowlets test
: '
read -p "Press enter to continue"
cd dgen
cargo run flowlets_equivalent_1_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 2 "0,1,2,3,5,6,1,7,2,5" ../src/prog_to_run.rs
cd ..
cargo run experiments/flowlets/flowlets_1/flowlets_equivalent_1_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5_hole_cfgs.txt 3 1000 flowlets
read -p "Press enter to continue"
cd dgen
cargo run flowlets_equivalent_2_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 2 "0,1,2,3,5,6,1,2,42,43,5,44,7,4,3,8" ../src/prog_to_run.rs
cd ..
cargo run experiments/flowlets/flowlets_2/flowlets_equivalent_2_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5_hole_cfgs.txt 3 1000 flowlets

read -p "Press enter to continue"
cd dgen
cargo run flowlets_equivalent_3_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 2 "0,1,2,3,5,6,1,7,2,9,10,66,4,5" ../src/prog_to_run.rs
cd ..
cargo run experiments/flowlets/flowlets_3/flowlets_equivalent_3_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5_hole_cfgs.txt 3 1000 flowlets

read -p "Press enter to continue"
cd dgen
cargo run flowlets_equivalent_4_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 2 "0,1,2,3,5,6,1,2,42,43,7,5,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/flowlets/flowlets_4/flowlets_equivalent_4_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5_hole_cfgs.txt 3 1000 flowlets

read -p "Press enter to continue"
cd dgen
cargo run flowlets_equivalent_5_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 2 "0,1,2,3,5,6,1,2,42,43,4,5,7,8,10,9,301,300" ../src/prog_to_run.rs
cd ..
cargo run experiments/flowlets/flowlets_5/flowlets_equivalent_5_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5_hole_cfgs.txt 3 1000 flowlets

read -p "Press enter to continue"
cd dgen
cargo run flowlets_equivalent_6_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 2 "0,1,2,3,5,6,1,3,2,7,196,195,4" ../src/prog_to_run.rs
cd ..
cargo run experiments/flowlets/flowlets_6/flowlets_equivalent_6_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5_hole_cfgs.txt 3 1000 flowlets

read -p "Press enter to continue"
cd dgen
cargo run flowlets_equivalent_7_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 2 "0,1,2,3,5,6,1,2,42,43,44,45,50,7,5,38" ../src/prog_to_run.rs
cd ..
cargo run experiments/flowlets/flowlets_7/flowlets_equivalent_7_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5_hole_cfgs.txt 3 1000 flowlets

read -p "Press enter to continue"
cd dgen
cargo run flowlets_equivalent_8_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 2 "0,1,2,3,5,6,1,7,2,5" ../src/prog_to_run.rs
cd ..
cargo run experiments/flowlets/flowlets_8/flowlets_equivalent_8_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5_hole_cfgs.txt 3 1000 flowlets

read -p "Press enter to continue"
cd dgen
cargo run flowlets_equivalent_9_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 2 "0,1,2,3,5,6,1,7,2,9,11,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/flowlets/flowlets_9/flowlets_equivalent_9_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5_hole_cfgs.txt 3 1000 flowlets

read -p "Press enter to continue"
cd dgen
cargo run flowlets_equivalent_10_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 2 "0,1,2,3,5,6,1,7,2,5,8,11,4,27,22" ../src/prog_to_run.rs
cd ..
cargo run experiments/flowlets/flowlets_10/flowlets_equivalent_10_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5_hole_cfgs.txt 3 1000 flowlets
'
# rcp test
: '
read -p "Press enter to continue"
cd dgen
cargo run rcp_equivalent_1_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 3 3 3 "0,1,2,3,30,31" ../src/prog_to_run.rs 
cd ..
cargo run experiments/rcp/rcp1/rcp_equivalent_1_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_3_hole_cfgs.txt 2 1000 rcp
read -p "Press enter to continue"
cd dgen
cargo run rcp_equivalent_2_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 3 3 3 "0, 1, 2, 3, 29, 30, 295, 320, 678" ../src/prog_to_run.rs 
cd ..
cargo run experiments/rcp/rcp2/rcp_equivalent_2_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_3_hole_cfgs.txt 2 1000 rcp

read -p "Press enter to continue"
cd dgen
cargo run rcp_equivalent_3_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 3 3 3 "0, 1, 2, 3, 29, 30, 295, 336, 337, 872,952" ../src/prog_to_run.rs 
cd ..
cargo run experiments/rcp/rcp3/rcp_equivalent_3_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_3_hole_cfgs.txt 2 1000 rcp

read -p "Press enter to continue"
cd dgen
cargo run rcp_equivalent_4_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 3 3 3 "0, 1, 2, 3, 29, 30, 192, 300, 301, 952" ../src/prog_to_run.rs 
cd ..
cargo run experiments/rcp/rcp4/rcp_equivalent_4_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_3_hole_cfgs.txt 2 1000 rcp

read -p "Press enter to continue"
cd dgen
cargo run rcp_equivalent_5_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 3 3 3 "0, 1, 2, 3, 30, 31" ../src/prog_to_run.rs 
cd ..
cargo run experiments/rcp/rcp5/rcp_equivalent_5_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_3_hole_cfgs.txt 2 1000 rcp

read -p "Press enter to continue"
cd dgen
cargo run rcp_equivalent_6_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 3 3 3 "0, 1, 2, 3, 30" ../src/prog_to_run.rs 
cd ..
cargo run experiments/rcp/rcp6/rcp_equivalent_6_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_3_hole_cfgs.txt 2 1000 rcp

read -p "Press enter to continue"
cd dgen
cargo run rcp_equivalent_7_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 3 3 3 "0, 1, 2, 3, 30, 31, 192, 320" ../src/prog_to_run.rs 
cd ..
cargo run experiments/rcp/rcp7/rcp_equivalent_7_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_3_hole_cfgs.txt 2 1000 rcp

read -p "Press enter to continue"
cd dgen
cargo run rcp_equivalent_8_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 3 3 3 "0, 1, 2, 3, 26, 28, 29, 30, 31, 295, 952, 953" ../src/prog_to_run.rs 
cd ..
cargo run experiments/rcp/rcp8/rcp_equivalent_8_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_3_hole_cfgs.txt 2 1000 rcp

read -p "Press enter to continue"
cd dgen
cargo run rcp_equivalent_9_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 3 3 3 "0, 1, 2, 3, 29, 30, 33, 34, 61" ../src/prog_to_run.rs 
cd ..
cargo run experiments/rcp/rcp9/rcp_equivalent_9_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_3_hole_cfgs.txt 2 1000 rcp

read -p "Press enter to continue"
cd dgen
cargo run rcp_equivalent_10_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 3 3 3 "0, 1, 2, 3, 28, 29, 30, 31, 301, 1014" ../src/prog_to_run.rs 
cd ..
cargo run experiments/rcp/rcp10/rcp_equivalent_10_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_3_hole_cfgs.txt 2 1000 rcp
'
# Sampling tests
: '
read -p "Press enter to continue"
cd dgen
cargo run sampling_equivalent_1_canonicalizer_equivalent_0 ../example_alus/stateful_alus/if_else_raw.alu  ../example_alus/stateless_alus/stateless_alu.alu  2 1 1 "29,29,2,0,1,1,30,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/sampling/sampling1/sampling_equivalent_1_canonicalizer_equivalent_0_if_else_raw_stateless_alu_2_1_hole_cfgs.txt 1 1000 sampling

read -p "Press enter to continue"
cd dgen
cargo run sampling_equivalent_2_canonicalizer_equivalent_0 ../example_alus/stateful_alus/if_else_raw.alu  ../example_alus/stateless_alus/stateless_alu.alu  2 1 1 "30, 1,0,1, 2,29, 29, 3" ../src/prog_to_run.rs
cd ..
cargo run experiments/sampling/sampling2/sampling_equivalent_2_canonicalizer_equivalent_0_if_else_raw_stateless_alu_2_1_hole_cfgs.txt 1 1000 sampling

read -p "Press enter to continue"
cd dgen
cargo run sampling_equivalent_3_canonicalizer_equivalent_0 ../example_alus/stateful_alus/if_else_raw.alu  ../example_alus/stateless_alus/stateless_alu.alu  2 1 1 "2, 29, 1,0,1,29,30, 3" ../src/prog_to_run.rs
cd ..
cargo run experiments/sampling/sampling3/sampling_equivalent_3_canonicalizer_equivalent_0_if_else_raw_stateless_alu_2_1_hole_cfgs.txt 1 1000 sampling

# TODO: key not in hashmap error. 
# Update: I think I solved it.. try it again
read -p "Press enter to continue"
cd dgen
cargo run sampling_equivalent_4_canonicalizer_equivalent_0 ../example_alus/stateful_alus/if_else_raw.alu  ../example_alus/stateless_alus/stateless_alu.alu  2 1 1 "0,29, 1, 2, 3, 29" ../src/prog_to_run.rs
cd ..
cargo run experiments/sampling/sampling4/sampling_equivalent_4_canonicalizer_equivalent_0_if_else_raw_stateless_alu_2_1_hole_cfgs.txt 1 1000 sampling

read -p "Press enter to continue"
cd dgen
cargo run sampling_equivalent_5_canonicalizer_equivalent_0 ../example_alus/stateful_alus/if_else_raw.alu  ../example_alus/stateless_alus/stateless_alu.alu  2 1 1 "1,0,29, 2,1, 29, 3,30" ../src/prog_to_run.rs
cd ..
cargo run experiments/sampling/sampling5/sampling_equivalent_5_canonicalizer_equivalent_0_if_else_raw_stateless_alu_2_1_hole_cfgs.txt 1 1000 sampling

read -p "Press enter to continue"
cd dgen
cargo run sampling_equivalent_6_canonicalizer_equivalent_0 ../example_alus/stateful_alus/if_else_raw.alu  ../example_alus/stateless_alus/stateless_alu.alu  2 1 1 "1,30,0,1,29, 29, 2, 3" ../src/prog_to_run.rs
cd ..
cargo run experiments/sampling/sampling6/sampling_equivalent_6_canonicalizer_equivalent_0_if_else_raw_stateless_alu_2_1_hole_cfgs.txt 1 1000 sampling

read -p "Press enter to continue"
cd dgen
cargo run sampling_equivalent_7_canonicalizer_equivalent_0 ../example_alus/stateful_alus/if_else_raw.alu  ../example_alus/stateless_alus/stateless_alu.alu  2 1 1 "3, 1,0, 2,29, 29,30" ../src/prog_to_run.rs
cd ..
cargo run experiments/sampling/sampling7/sampling_equivalent_7_canonicalizer_equivalent_0_if_else_raw_stateless_alu_2_1_hole_cfgs.txt 1 1000 sampling

read -p "Press enter to continue"
cd dgen
cargo run sampling_equivalent_8_canonicalizer_equivalent_0 ../example_alus/stateful_alus/if_else_raw.alu  ../example_alus/stateless_alus/stateless_alu.alu  2 1 1 "2, 1,29,4,30, 3,1,0, 29" ../src/prog_to_run.rs
cd ..
cargo run experiments/sampling/sampling8/sampling_equivalent_8_canonicalizer_equivalent_0_if_else_raw_stateless_alu_2_1_hole_cfgs.txt 1 1000 sampling

read -p "Press enter to continue"
cd dgen
cargo run sampling_equivalent_9_canonicalizer_equivalent_0 ../example_alus/stateful_alus/if_else_raw.alu  ../example_alus/stateless_alus/stateless_alu.alu  2 1 1 "29,30,0,29,1, 2, 3, 1" ../src/prog_to_run.rs
cd ..
cargo run experiments/sampling/sampling9/sampling_equivalent_9_canonicalizer_equivalent_0_if_else_raw_stateless_alu_2_1_hole_cfgs.txt 1 1000 sampling

read -p "Press enter to continue"
cd dgen
cargo run sampling_equivalent_10_canonicalizer_equivalent_0 ../example_alus/stateful_alus/if_else_raw.alu  ../example_alus/stateless_alus/stateless_alu.alu  2 1 1 "29,0,28,30, 2, 1, 3,1, 29" ../src/prog_to_run.rs
cd ..
cargo run experiments/sampling/sampling10/sampling_equivalent_10_canonicalizer_equivalent_0_if_else_raw_stateless_alu_2_1_hole_cfgs.txt 1 1000 sampling
'
# snap_heavy_hitter tests
: '
read -p "Press enter to continue"
cd dgen
cargo run snap_heavy_hitter_equivalent_1_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,998,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/snap_heavy_hitter/snap_heavy_hitter1/snap_heavy_hitter_equivalent_1_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 snap_heavy_hitter


read -p "Press enter to continue"
cd dgen
cargo run snap_heavy_hitter_equivalent_2_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,998,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/snap_heavy_hitter/snap_heavy_hitter2/snap_heavy_hitter_equivalent_2_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 snap_heavy_hitter
read -p "Press enter to continue"
cd dgen
cargo run snap_heavy_hitter_equivalent_3_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,415,998,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/snap_heavy_hitter/snap_heavy_hitter3/snap_heavy_hitter_equivalent_3_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 snap_heavy_hitter
read -p "Press enter to continue"
cd dgen
cargo run snap_heavy_hitter_equivalent_4_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0, 1, 2, 3, 997, 999, 1000, 1001" ../src/prog_to_run.rs
cd ..
cargo run experiments/snap_heavy_hitter/snap_heavy_hitter4/snap_heavy_hitter_equivalent_4_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 snap_heavy_hitter
read -p "Press enter to continue"
cd dgen
cargo run snap_heavy_hitter_equivalent_5_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0, 1, 2, 3, 999, 1000, 1001" ../src/prog_to_run.rs
cd ..
cargo run experiments/snap_heavy_hitter/snap_heavy_hitter5/snap_heavy_hitter_equivalent_5_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 snap_heavy_hitter
read -p "Press enter to continue"
cd dgen
cargo run snap_heavy_hitter_equivalent_6_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,998,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/snap_heavy_hitter/snap_heavy_hitter6/snap_heavy_hitter_equivalent_6_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 snap_heavy_hitter
read -p "Press enter to continue"
cd dgen
cargo run snap_heavy_hitter_equivalent_7_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0, 1, 2, 3, 4, 997, 998, 999, 1000, 1001
" ../src/prog_to_run.rs
cd ..
cargo run experiments/snap_heavy_hitter/snap_heavy_hitter7/snap_heavy_hitter_equivalent_7_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 snap_heavy_hitter
read -p "Press enter to continue"
cd dgen
cargo run snap_heavy_hitter_equivalent_8_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/snap_heavy_hitter/snap_heavy_hitter8/snap_heavy_hitter_equivalent_8_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 snap_heavy_hitter
read -p "Press enter to continue"
cd dgen
cargo run snap_heavy_hitter_equivalent_9_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,998,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/snap_heavy_hitter/snap_heavy_hitter9/snap_heavy_hitter_equivalent_9_canonicalizer_equivalent_9_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 snap_heavy_hitter
read -p "Press enter to continue"
cd dgen
cargo run snap_heavy_hitter_equivalent_10_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/snap_heavy_hitter/snap_heavy_hitter10/snap_heavy_hitter_equivalent_10_canonicalizer_equivalent_10_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 snap_heavy_hitter
'
# spam_detection tests
: '
read -p "Press enter to continue"
cd dgen
cargo run spam_detection_equivalent_1_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,4,998,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/spam_detection/spam_detection1/spam_detection_equivalent_1_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 spam_detection

read -p "Press enter to continue"
cd dgen
cargo run spam_detection_equivalent_2_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,4,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/spam_detection/spam_detection2/spam_detection_equivalent_2_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 spam_detection

read -p "Press enter to continue"
cd dgen
cargo run spam_detection_equivalent_3_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/spam_detection/spam_detection3/spam_detection_equivalent_3_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 spam_detection

read -p "Press enter to continue"
cd dgen
cargo run spam_detection_equivalent_4_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,4,998,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/spam_detection/spam_detection4/spam_detection_equivalent_4_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 spam_detection

read -p "Press enter to continue"
cd dgen
cargo run spam_detection_equivalent_5_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0, 1, 2, 3, 4, 14, 723, 998, 999, 1000,1023" ../src/prog_to_run.rs
cd ..
cargo run experiments/spam_detection/spam_detection5/spam_detection_equivalent_5_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 spam_detection

read -p "Press enter to continue"
cd dgen
cargo run spam_detection_equivalent_6_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,4,5,995,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/spam_detection/spam_detection1/spam_detection_equivalent_6_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 spam_detection

read -p "Press enter to continue"
cd dgen
cargo run spam_detection_equivalent_7_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,4,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/spam_detection/spam_detection7/spam_detection_equivalent_7_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 spam_detection

read -p "Press enter to continue"
cd dgen
cargo run spam_detection_equivalent_8_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,999,1000,1001" ../src/prog_to_run.rs
cd ..
cargo run experiments/spam_detection/spam_detection8/spam_detection_equivalent_8_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 spam_detection

read -p "Press enter to continue"
cd dgen
cargo run spam_detection_equivalent_9_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,4,998,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/spam_detection/spam_detection9/spam_detection_equivalent_9_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 spam_detection

read -p "Press enter to continue"
cd dgen
cargo run spam_detection_equivalent_10_canonicalizer_equivalent_1 ../example_alus/stateful_alus/pair.alu  ../example_alus/stateless_alus/stateless_alu.alu 1 1 1 "0,1,2,3,4,998,999,1000" ../src/prog_to_run.rs
cd ..
cargo run experiments/spam_detection/spam_detection10/spam_detection_equivalent_10_canonicalizer_equivalent_1_pair_stateless_alu_1_1_hole_cfgs.txt 1 1000 spam_detection
'
# stateful_fw tests

read -p "Press enter to continue"
cd dgen
cargo run stateful_fw_equivalent_1_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 1 "0,1,2,3,102,102,2,101,1" ../src/prog_to_run.rs
cd ..
cargo run experiments/stateful_fw/stateful_fw1/stateful_fw_equivalent_1_canonicalizer_equivalent_1_pred_raw_stateless_alu_4_5_hole_cfgs.txt 4 1000 stateful_fw


read -p "Press enter to continue"
cd dgen
cargo run stateful_fw_equivalent_2_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 1 "0,1,2,3,102,102,1,2,101" ../src/prog_to_run.rs
cd ..
cargo run experiments/stateful_fw/stateful_fw2/stateful_fw_equivalent_2_canonicalizer_equivalent_1_pred_raw_stateless_alu_4_5_hole_cfgs.txt 4 1000 stateful_fw

read -p "Press enter to continue"
cd dgen
cargo run stateful_fw_equivalent_3_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 1 "0,1,2,3,102,102,1,100,103" ../src/prog_to_run.rs
cd ..
cargo run experiments/stateful_fw/stateful_fw3/stateful_fw_equivalent_3_canonicalizer_equivalent_1_pred_raw_stateless_alu_4_5_hole_cfgs.txt 4 1000 stateful_fw

read -p "Press enter to continue"
cd dgen
cargo run stateful_fw_equivalent_4_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 1 "0,1,2,3,102,102,1,101,203,2,3,103" ../src/prog_to_run.rs
cd ..
cargo run experiments/stateful_fw/stateful_fw4/stateful_fw_equivalent_4_canonicalizer_equivalent_1_pred_raw_stateless_alu_4_5_hole_cfgs.txt 4 1000 stateful_fw

read -p "Press enter to continue"
cd dgen
cargo run stateful_fw_equivalent_5_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 1 "0,1,2,3,102,102,1,100,103,101,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/stateful_fw/stateful_fw5/stateful_fw_equivalent_5_canonicalizer_equivalent_1_pred_raw_stateless_alu_4_5_hole_cfgs.txt 4 1000 stateful_fw

read -p "Press enter to continue"
cd dgen
cargo run stateful_fw_equivalent_6_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu 4 5 1 "0,1,2,3,102,102,2,101,1,103" ../src/prog_to_run.rs
cd ..
cargo run experiments/stateful_fw/stateful_fw6/stateful_fw_equivalent_6_canonicalizer_equivalent_1_pred_raw_stateless_alu_4_5_hole_cfgs.txt 4 1000 stateful_fw

