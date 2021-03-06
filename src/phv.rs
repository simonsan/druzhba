use crate::phv_container::PhvContainer;
use std::ops::{Index, IndexMut};
use std::fmt;


pub type FieldName = String;
pub type FieldType = i32;
pub type PacketFieldSet = Vec <String>;


#[derive(Clone)]
pub struct Phv<T> {
  pub bubble : bool, // false if initialized, true otherwise
  pub packets : Vec<PhvContainer<T>>, // Vector of PHV Containers
  pub state : Vec< Vec<i32> > // Initial state value
}


impl<T> Phv<T>{

  pub fn new() -> Self {
    Phv{ bubble : true, packets: Vec::new(), state : Vec::new()}
  }

  pub fn is_bubble(&self) -> bool {
    self.bubble == true
  }

  pub fn add_container_to_phv(&mut self, pack: PhvContainer<T>) -> &Self {
    self.packets.push(pack);
    self.bubble = false;
    self
  }
  pub fn set_state (&mut self, t_state : Vec <Vec<i32> >) {
    self.state = t_state;
  }
  pub fn get_state (&self) -> Vec <Vec <i32> > {
    self.state.clone()
  }
  pub fn get_num_phv_containers (&self) -> i32 {
    self.packets.len() as i32
  }
}

// Note: No need for AddAssign Trait implementation for PHV's -
// there is typically one phv per pipeline stage, and all atoms
// take packet inputs from that PHV


//Allows easy access to a container in a PHV
impl<T> Index<i32> for Phv<T>{
  type Output = PhvContainer<T>;
  fn index(&self, i : i32) -> &Self::Output {
     &self.packets[i as usize]
  }
}

//Allows easy mutation of a container in a PHV
impl<T> IndexMut<i32> for Phv<T> {
  fn index_mut(&mut self, i: i32 ) -> &mut PhvContainer<T> {
    &mut self.packets[i as usize]
  }
}

//Allows printing of container values
impl<T> fmt::Display for Phv<T> where T : fmt::Display {

  fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {

      let mut s : String = String::from("\nPHV Containers: {"); 
      for i in 0..self.packets.len() {
        s.push_str(&format!( "[index : {}, value : {}], ", 
                             &i.to_string(), 
                             &self.packets[i].field_value
                                  .to_string()));
      }
      s.push_str("}\nState: {");
      for i in 0..self.state.len() {
        for j in 0..self.state[i].len(){
            
          s.push_str(&format!("[state_group_{}_state_{} = {}], ",
                              &i.to_string(),
                              &j.to_string(),
                              &self.state[i][j]));
        }
      }
      s.push_str ("}\n");
      write!(f, "{}", s)
  }
}
