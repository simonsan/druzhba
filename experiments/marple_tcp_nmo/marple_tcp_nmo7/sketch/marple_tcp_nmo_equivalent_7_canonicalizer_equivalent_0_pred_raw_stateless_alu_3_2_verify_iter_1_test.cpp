#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <iostream>
#include "vops.h"
#include "marple_tcp_nmo_equivalent_7_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_verify_iter_1.h"

using namespace std;

void main__Wrapper_ANONYMOUSTest(Parameters& _p_) {
  for(int _test_=0;_test_< _p_.niters ;_test_++) {
    int  pkt_0;
    pkt_0=abs(rand()) % 32;
    if(_p_.verbosity > 2){
      cout<<"pkt_0="<<pkt_0<<endl;
    }
    int  state_group_0_state_0;
    state_group_0_state_0=abs(rand()) % 32;
    if(_p_.verbosity > 2){
      cout<<"state_group_0_state_0="<<state_group_0_state_0<<endl;
    }
    int  state_group_1_state_0;
    state_group_1_state_0=abs(rand()) % 32;
    if(_p_.verbosity > 2){
      cout<<"state_group_1_state_0="<<state_group_1_state_0<<endl;
    }
    try{
      ANONYMOUS::main__WrapperNospec(pkt_0,state_group_0_state_0,state_group_1_state_0);
      ANONYMOUS::main__Wrapper(pkt_0,state_group_0_state_0,state_group_1_state_0);
    }catch(AssumptionFailedException& afe){  }
  }
}

int main(int argc, char** argv) {
  Parameters p(argc, argv);
  srand(time(0));
  main__Wrapper_ANONYMOUSTest(p);
  printf("Automated testing passed for marple_tcp_nmo_equivalent_7_canonicalizer_equivalent_0_pred_raw_stateless_alu_3_2_verify_iter_1\n");
  return 0;
}