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
// Maintains the same assertions as the specification
// for the simple.sk spec in Chipmunk
fn simple (input_phv : Phv <i32>) -> Phv<i32>{

    let mut new_phv : Phv<i32> = input_phv.clone();
    new_phv[0].field_value = new_phv.get_state()[0][0]+1;
    new_phv

}
fn marple_new_flow (input_phv : Phv <i32>,
                    actual_phv : Phv <i32>) -> Phv<i32>{

    let mut new_phv : Phv<i32> = input_phv.clone();

    let mut new_state : Vec <Vec <i32> > = new_phv.get_state().clone();
    if new_state[0][0] == 0{
      new_phv[0].field_value = 1;
      new_state[0][0] = 1;
      new_phv.set_state(new_state);
    }
    assert!(new_phv.get_state()[0][0] == actual_phv.get_state()[0][0]);
    assert!(new_phv[0].field_value == actual_phv[0].field_value);
    new_phv

}

fn blue_increase (input_phv : Phv <i32>,
                  actual_phv : Phv <i32>) -> Phv <i32> {
  let mut result= input_phv.clone();
  result[1].field_value = result[0].get_value() - 10;

  let mut new_state : Vec <Vec<i32>> = result.get_state().clone();
  if result[1].get_value() > new_state[1][0] {
      let new_state_0_0 = result.get_state()[0][0]+1;
      let new_state_1_0 = result[0].get_value();
      new_state[0][0] = new_state_0_0;
      new_state[1][0] = new_state_1_0;
  }
 
  result.set_state (new_state);

  assert!(result.get_state()[0][0] == actual_phv.get_state()[0][0]);
  assert!(result.get_state()[1][0] == actual_phv.get_state()[1][0]);
  result
}
fn learn_filter (input_phv : Phv <i32>,
                 actual_phv : Phv <i32>) -> Phv <i32> {
  let mut result = input_phv.clone();
  let mut state = result.get_state().clone();

  if state[2][0]!=0 && state[1][0] !=0 && state[0][0] !=0 {
    result[0].field_value = 1;
  }
  state[2][0] = 1;
  state[1][0] = 1;
  state[0][0] = 1;
  result.set_state(state);
  assert!(result.get_state()[0][0] == actual_phv.get_state()[0][0]);
  assert!(result.get_state()[1][0] == actual_phv.get_state()[1][0]);
  assert!(result.get_state()[2][0] == actual_phv.get_state()[2][0]);

  assert!(result[0].field_value == actual_phv[0].field_value);
  result
}

fn marple_tcp_nmo (input_phv : Phv <i32>,
                   actual_phv : Phv <i32>) -> Phv <i32>{

  let mut result = input_phv.clone();
  let mut state = input_phv.get_state();
  if result[0].field_value >= state[0][0] {
    if result[0].field_value>=state[0][0] {
      state[0][0] = result[0].field_value;
    }
  }
  else {
    if result[0].field_value < state[0][0] {
      if result[0].field_value < state[0][0] {
        state[1][0]+=1;
      }
    }
  }

  result.set_state(state);
  println!("Expected: {}", result);

  println!("Actual: {}", actual_phv);
  assert!(result.get_state()[0][0] == actual_phv.get_state()[0][0]);
  assert!(result.get_state()[1][0] == actual_phv.get_state()[1][0]);

  result
}
fn blue_decrease (input_phv : Phv <i32>,
                  actual_phv : Phv <i32>) -> Phv <i32> {
  let mut result = input_phv.clone();
  let mut state = input_phv.get_state();

  result[1].field_value = result[0].field_value - 10;
  if result[1].field_value > state[1][0] {
    state[0][0] -= 2;
    state[1][0] = result[0].field_value;
  }
  result.set_state (state);
  assert!(result[1].field_value == actual_phv[1].field_value);
  assert!(result.get_state()[0][0] == actual_phv.get_state()[0][0]);
  assert!(result.get_state()[1][0] == actual_phv.get_state()[1][0]);

  result

}
// Based on conga_equivalent_9_canonicalizer_equivalent_1.sk
fn conga (input_phv : Phv <i32>,
          actual_phv : Phv <i32>) -> Phv <i32> {
  let mut result = input_phv.clone();
  let mut state = input_phv.get_state();
  if result[0].field_value < 0 {
    result[1].field_value = 0;
  }
  else {
    result[1].field_value = result[0].field_value;
  }
  if result[0].field_value < 0 {
    result[2].field_value = 0;
  }
  else {
    result[2].field_value = result[0].field_value;
  }
  if result[3].field_value >= state[0][0] {
    if result[4].field_value == state[0][1]  {
      state[0][0] = result[3].field_value;
    }
  }
  else {
    if result[3].field_value < state[0][0]  {
      if result[3].field_value < state[0][0] {
        state[0][0] = result[3].field_value;
        state[0][1] = result[4].field_value;
      }
    }
  }
  result.set_state (state);

  assert!(result[1].field_value == actual_phv[1].field_value);

  assert!(result[2].field_value == actual_phv[2].field_value);

  assert!(result.get_state()[0][0] == actual_phv.get_state()[0][0]);
  assert!(result.get_state()[0][1] == actual_phv.get_state()[0][1]);
  result
}

// Based on flowlets program function in experiments
fn flowlets (input_phv : Phv <i32>,
             actual_phv : Phv <i32>) -> Phv <i32> {
  let mut result = input_phv.clone();
  let mut state = input_phv.get_state();
  if result[1].field_value - state[1][0] > 5 {
    state[0][0] = result[0].field_value;
  }
  state[1][0] = result[1].field_value;
  result[2].field_value = state[0][0];

  result.set_state (state);

  assert!(result[2].field_value == actual_phv[2].field_value);
  assert!(result.get_state()[0][0] == actual_phv.get_state()[0][0]);
  assert!(result.get_state()[1][0] == actual_phv.get_state()[1][0]);

  result

}

fn spam_detection (input_phv : Phv <i32>,
                   actual_phv : Phv <i32>) -> Phv <i32> {
  let mut result = input_phv.clone();
  let mut state = input_phv.get_state();
  if state[0][0] == 1 {
    state[0][0] = 2;
    state[0][1] = 0;
  }
  if state[0][0] == 2 {
    state[0][1] += 1;
    if state[0][1] == 1000 {
      state[0][0] = 3;
    }
  }
  result.set_state (state);

   assert!(result.get_state()[0][0] == actual_phv.get_state()[0][0]);
   assert!(result.get_state()[0][1] == actual_phv.get_state()[0][1]);
  result
}



fn sampling (input_phv : Phv <i32>,
             actual_phv : Phv <i32>) -> Phv <i32> {
  let mut result = input_phv.clone();
  let mut state = input_phv.get_state();
  if state[0][0] != 29 {
      result[0].field_value = 0;
      state[0][0] = state[0][0] + 1;
  }
  else {
    if state[0][0] == 29 {
      result[0].field_value = 1;
      state[0][0] = 0;
    }
  }
  result.set_state (state);

  assert!(result[0].field_value == actual_phv[0].field_value);
  assert!(result.get_state()[0][0] == actual_phv.get_state()[0][0]);

  result

}
fn stateful_fw (input_phv : Phv <i32>,
                actual_phv : Phv <i32>) -> Phv <i32> {
  let mut result = input_phv.clone();
  let mut state = input_phv.get_state();
  result[2].field_value = result[1].field_value + result[0].field_value;
  if result[1].field_value!=102 && result[0].field_value==102{
    if state[0][0] == 0 {
      result[3].field_value = 1;
    }
    else{
      result[3].field_value = 0;
    }
  }
  else {
    if result[1].field_value == 102 {
      if result[1].field_value == 102 {
        state[0][0] = 1;
      }
    }
  }
  result.set_state (state);
  assert!(result[2].field_value == actual_phv[2].field_value);
  assert!(result[3].field_value == actual_phv[3].field_value);
  assert!(result.get_state()[0][0] == actual_phv.get_state()[0][0]);

  result

}
fn rcp (input_phv : Phv <i32>,
        actual_phv : Phv <i32>) -> Phv <i32> {
  let mut result = input_phv.clone();
  let mut state = input_phv.get_state();
  state[0][0] += result[0].field_value;
  if result[1].field_value < 30 {
    state[1][0] += result[1].field_value;
    state[2][0] += 1;
  }
  result.set_state (state);
  assert!(result.get_state()[0][0] == actual_phv.get_state()[0][0]);

  assert!(result.get_state()[1][0] == actual_phv.get_state()[1][0]);
  assert!(result.get_state()[2][0] == actual_phv.get_state()[2][0]);

  result

}
fn snap_heavy_hitter (input_phv : Phv <i32>,
                      actual_phv : Phv <i32>) -> Phv <i32> {
  let mut result = input_phv.clone();
  let mut state = input_phv.get_state();
  if state[0][1] == 0 {
    state[0][0] += 1;
    if state[0][0] == 1000 {
      state[0][1] = 1;
    }
  }
  result.set_state (state);
  assert!(result.get_state()[0][0] == actual_phv.get_state()[0][0]);
  assert!(result.get_state()[0][1] == actual_phv.get_state()[0][1]);


  result

}
#[warn(unused_imports)]
fn main() {

  let args : Vec<String> = env::args().collect();
  assert!(args.len() == 4 || args.len() == 5);

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
  // Optional parameters for test experiments
  let test_function : String = args[4].clone();
  let hole_cfgs_file : String = args[1].clone();
  let hole_cfgs : HashMap <String, i32> = get_hole_cfgs (hole_cfgs_file.clone());
  let num_stateful_alus = prog_to_run::num_stateful_alus();
  let num_state_values = prog_to_run::num_state_variables();
//  println!("{:?}", hole_cfgs);
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
  // _t not used
  for _t in 0..ticks {
    
    let mut packet : Phv<i32> = Phv::new();
    
        (0..num_packets)
                    // _s not used
            .for_each ( |_s| {
             packet.add_container_to_phv(PhvContainer {
//                 field_value : 10
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
//    let s : Vec <Vec <i32> > = vec! [ vec![1], vec![58] ];
    packet.set_state(state);

    input_phvs.push (packet.clone());

    let new_packet : Phv<i32> = pipeline.tick (packet);

    if !new_packet.is_bubble() {
      output_phvs.push(new_packet.clone());
    }
  }
  for i in 0..output_phvs.len(){

    println!("Input: {}", input_phvs[i]);
    if args.len() == 5 {
      match test_function.as_ref() {
        "conga"             => conga (input_phvs[i].clone(), 
                               output_phvs[i].clone()),
        "snap_heavy_hitter" => snap_heavy_hitter(input_phvs[i].clone(), 
                                                 output_phvs[i].clone()),

        "marple_new_flow"   => marple_new_flow (input_phvs[i].clone(), 
                                              output_phvs[i].clone()),       
        "marple_tcp_nmo"    => marple_tcp_nmo(input_phvs[i].clone(), 
                                              output_phvs[i].clone()),       
        "sampling"          => sampling (input_phvs[i].clone(), 
                                         output_phvs[i].clone()),       
        "flowlets"          => flowlets (input_phvs[i].clone(), 
                                         output_phvs[i].clone()),
        "spam_detection"    => spam_detection (input_phvs[i].clone(), 
                                               output_phvs[i].clone()),
        "stateful_fw"       => stateful_fw(input_phvs[i].clone(), 
                                           output_phvs[i].clone()),       
        "rcp"               => rcp(input_phvs[i].clone(), 
                                   output_phvs[i].clone()),       
        "learn_filter"      => learn_filter(input_phvs[i].clone(), 
                                       output_phvs[i].clone()),       
        "blue_increase"     => blue_increase (input_phvs[i].clone(), 
                                              output_phvs[i].clone()),
        "blue_decrease"     => blue_decrease (input_phvs[i].clone(), 
                                              output_phvs[i].clone()),

        _       => panic!("Error: Not a valid test function")
      };
    }
    else {
      println!("Actual: {}\n", output_phvs[i]);
    }
      println!("Actual: {}\n", output_phvs[i]);

  }
}
#[cfg(test)]
mod test_druzhba;
mod test_with_chipmunk;
