cd dgen
cargo run marple_tcp_nmo_equivalent_7_canonicalizer_equivalent_0 ../example_alus/stateful_alus/pred_raw.alu ../example_alus/stateless_alus/stateless_alu.alu  3 2 2 "0,1,2,3" ../src/prog_to_run.rs
cd ..
cargo run experiments/marple_tcp_nmo/marple_tcp_nmo7/marple_tcp_nmo_equivalent_7_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_hole_cfgs.txt 1 10000 marple_tcp_nmo

