#![feature(test)]
extern crate rand;
extern crate test;
extern crate druzhba;
use druzhba::pipeline::Pipeline;
use druzhba::phv::Phv;
use druzhba::phv_container::PhvContainer;

use rand::Rng;
use std::fs;
use std::collections::HashMap;
use std::process::Command;
use test::Bencher;
pub mod blue_increase_pair_stateless_alu_arith_4_2;
pub mod flowlets_equivalent_1_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5;
pub mod learn_filter_equivalent_1_canonicalizer_equivalent_0_raw_stateless_alu_5_3;
/* Test helper functions */
fn init_input_phvs (ticks : i32,
                   num_packets : i32,
                   pipeline_width : i32,
                   num_state_vars : i32,
                   num_stateful_alus : i32) -> Vec <Phv <i32> >
{
  let mut input_phvs : Vec <Phv <i32> > = Vec::new();
    // Initializes packet with all of the input fields
    // along with a random value
  for _i in 0..ticks {
    let mut packet : Phv<i32> = Phv::new();
    for _j in 0..num_packets{
        packet.add_container_to_phv(PhvContainer {
            field_value : rand::thread_rng().gen_range(0,100),
        }); 
    }
    for _j in num_packets..pipeline_width {
      packet.add_container_to_phv(PhvContainer {
          field_value : 0,
      }); 

    }
    let mut state_vec : Vec <Vec <i32>>  = Vec::new();
    for _i in 0..num_stateful_alus {
      let mut tmp_state_vec : Vec <i32> = Vec::new();
      for _j in 0..num_state_vars {
        tmp_state_vec.push (rand::thread_rng().gen_range(0,100));
      }
      state_vec.push (tmp_state_vec);
    }
    packet.set_state (state_vec);
    input_phvs.push (packet.clone());
  }
  input_phvs

}
// Initializes hole config HashMap and initializes pipeline.
// Runs input phvs through pipeline and returns the resulting
// output phvs
fn extract_hole_cfgs (hole_cfgs_file : String) -> HashMap <String, i32 > {
  let mut hole_cfgs_map : HashMap <String, i32> = HashMap::new();
  let hole_cfgs_file_contents : String = fs::read_to_string(hole_cfgs_file).expect ("Error: Hole configs file could not be found");
  let hole_cfgs_file_vec : Vec <String> = hole_cfgs_file_contents
                                          .split ("\n")
                                          .map (|s| s.to_string())
                                          .collect();

  for hole_var in hole_cfgs_file_vec {
      let hole_entry : Vec <&str> = hole_var
                                    .split("=")
                                    .map(|s| s.trim())
                                    .collect();
      if hole_entry.len() < 2 {
        continue;
      }
      hole_cfgs_map.insert (hole_entry[0].to_string(), 
                            hole_entry[1].to_string().parse::<i32>()
                                                     .expect ("Error: hole value set to non-integer value"));
  }
  hole_cfgs_map
}

fn run_pipeline (input_phvs : Vec <Phv <i32> >,
                 mut pipeline : Pipeline,
                 ticks : i32) -> Vec <Phv <i32 > > {
  let mut output_phvs : Vec <Phv <i32> > = Vec::new();
  for t in 0..ticks {
    let new_packet : Phv<i32> = 
        pipeline.tick (input_phvs[t as usize].clone());
    if !new_packet.is_bubble() {
      output_phvs.push(new_packet.clone());
    }
  }
  output_phvs
}


#[bench]
fn bench_blue_increase (b : &mut Bencher)
{

  let input_phvs : Vec <Phv <i32> > = init_input_phvs (10000000, 2, 2, 2, 2);
  let hole_cfg_file : String = String::from("hole_configurations/blue_increase_pair_stateless_alu_arith_4_2_hole_cfgs.txt");
  let hole_cfgs_map : HashMap <String, i32> = extract_hole_cfgs (hole_cfg_file);

  let pipeline : Pipeline = 
    blue_increase_pair_stateless_alu_arith_4_2::init_pipeline (hole_cfgs_map.clone());
  let output_phvs : Vec <Phv <i32> > = run_pipeline (input_phvs.clone(),
                                                     pipeline,
                                                     10000000);
 
}
#[bench]
fn bench_flowlets_equivalent_1_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5(b : &mut Bencher) {
  let input_phvs : Vec <Phv <i32> > = init_input_phvs (10000000, 3, 5, 1, 2);
  let hole_cfg_file : String = String::from("hole_configurations/flowlets_equivalent_1_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5_hole_cfgs.txt");
  let hole_cfgs_map : HashMap <String, i32> = extract_hole_cfgs (hole_cfg_file);

  let pipeline : Pipeline = 
    flowlets_equivalent_1_canonicalizer_equivalent_0_pred_raw_stateless_alu_4_5::init_pipeline (hole_cfgs_map.clone());
  let output_phvs : Vec <Phv <i32> > = run_pipeline (input_phvs.clone(),
                                                     pipeline,
                                                     10000000);
}


#[bench]
fn bench_learn_filter_equivalent_1_canonicalizer_equivalent_0_raw_stateless_alu_5_3() {
  let input_phvs : Vec <Phv <i32> > = init_input_phvs (10000000, 1, 3, 1, 3);
  let hole_cfg_file : String = String::from("hole_configurations/learn_filter_equivalent_1_canonicalizer_equivalent_0_raw_stateless_alu_5_3_hole_cfgs.txt");
  let hole_cfgs_map : HashMap <String, i32> = extract_hole_cfgs (hole_cfg_file);

  let pipeline : Pipeline = 
    learn_filter_equivalent_1_canonicalizer_equivalent_0_raw_stateless_alu_5_3::init_pipeline (hole_cfgs_map.clone());
  let output_phvs : Vec <Phv <i32> > = run_pipeline (input_phvs.clone(),
                                                     pipeline,
                                                     10000000);
}
