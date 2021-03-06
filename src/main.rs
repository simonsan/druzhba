extern crate rand;
extern crate druzhba;

mod prog_to_run;
mod tests;

use druzhba::pipeline::Pipeline;
use druzhba::phv::Phv;
use druzhba::phv_container::PhvContainer;
use rand::Rng;
use std::collections::HashMap;
use std::env;
use std::fs;

// Opens hole configs file of hole variable assignments
// and initializes a HashMap from hole vaiables to
// i32s.
fn get_hole_cfgs (hole_cfgs_file : String) -> HashMap <String, i32> {

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
#[warn(unused_imports)]
fn main() {

  let args : Vec<String> = env::args().collect();
  assert!(args.len() == 4);

  // Parse returns a result so unwrap
  let num_packets : i32 = 
    match args[2].parse::<i32>() {

      Ok  (t_num_packets) => t_num_packets,
      Err (_)         => panic!("Failure: Unable to unwrap num_containers"),
    };
  assert!(num_packets <= prog_to_run::pipeline_width());
   let ticks : i32 = 
    match args[3].parse::<i32>() {

      Ok  (t_ticks) => t_ticks,
      Err (_)         => panic!("Failure: Unable to unwrap ticks"),
    };
  let hole_cfgs_file : String = args[1].clone();
  let hole_cfgs : HashMap <String, i32> = get_hole_cfgs (hole_cfgs_file.clone());
  let num_stateful_alus = prog_to_run::num_stateful_alus();
  let num_state_values = prog_to_run::num_state_variables();
  println!("{:?}", hole_cfgs);
  println!("Hole configurations successfully loaded");
  assert! (ticks >= 1);
  assert! (num_stateful_alus>=1);
  let mut pipeline : Pipeline = 
      prog_to_run::init_pipeline(hole_cfgs.clone());

  // For every tick create a new packet with the 
  // specified input fields set to random values from
  // 0 to 100. Send packet through pipeline and 
  // retrieve resulting packet.
  let mut input_phvs : Vec <Phv <i32> > = Vec::new();
  let mut output_phvs : Vec <Phv <i32> > = Vec::new();
  println!("Beginning execution ... ");
  // _t not used
  for _t in 0..ticks {
    
    let mut packet : Phv<i32> = Phv::new();
    
        (0..num_packets)
                    // _s not used
            .for_each ( |_s| {
             packet.add_container_to_phv(PhvContainer {
                 field_value :rand::thread_rng().gen_range(0,100),
             }); 
           });
           
    (num_packets..prog_to_run::pipeline_width())
        .for_each( |_s| { 
            packet.add_container_to_phv (PhvContainer{
                field_value : 0,
            });
        });

    let mut state : Vec <Vec <i32> > = Vec::new();
    // _i not used
    for _i in 0..num_stateful_alus{
      let mut tmp_state_vec : Vec<i32> = Vec::new();
      // _j not used
      for _j in 0..num_state_values {
        tmp_state_vec.push(rand :: thread_rng().gen_range(0,100));
           
      }
      state.push (tmp_state_vec);
    }
    packet.set_state(state);
    input_phvs.push (packet.clone());
    let new_packet : Phv<i32> = pipeline.tick (packet);

    if !new_packet.is_bubble() {
      output_phvs.push(new_packet.clone());
    }
  }
  for i in 0..output_phvs.len(){
    println!("Input: {}", input_phvs[i]);
    println!("Result: {}\n", output_phvs[i]);
  }
}
#[cfg(test)]
mod test_druzhba;
mod test_with_chipmunk;
