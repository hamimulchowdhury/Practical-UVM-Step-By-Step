/***********************************************
 *                                              *
 * Examples for the book Practical UVM          *
 *                                              *
 * Copyright Srivatsa Vasudevan 2010-2016       *
 * All rights reserved                          *
 *                                              *
 * Permission is granted to use this work       * 
 * provided this notice and attached license.txt*
 * are not removed/altered while redistributing *
 * See license.txt for details                  *
 *                                              *
 ************************************************/

`ifndef WB_ETH_MAC_HIERARCHICAL_SEQ__SV
 `define WB_ETH_MAC_HIERARCHICAL_SEQ__SV

typedef class wb_eth_mac_hierarchical_seq_trans;

class wb_eth_mac_hierarchical_seq extends uvm_sequence_library # (wb_eth_mac_hierarchical_seq_trans);
   
   `uvm_object_utils(wb_eth_mac_hierarchical_seq)
   `uvm_sequence_library_utils(wb_eth_mac_hierarchical_seq)

   function new(string name = "simple_seq_lib");
      super.new(name);
      init_sequence_library();
   endfunction

endclass  

class mac_hier_base_sequence extends uvm_sequence #(wb_eth_mac_hierarchical_seq_trans);
   `uvm_object_utils(mac_hier_base_sequence)

   function new(string name = "base_seq");
      super.new(name);
   endfunction:new
   virtual task pre_body(); uvm_phase phase_=get_starting_phase();

      if (get_starting_phase()!= null)
	phase_.raise_objection(this);
   endtask:pre_body
   virtual task post_body(); uvm_phase phase_=get_starting_phase();

      if (get_starting_phase()!= null)
	phase_.drop_objection(this);
   endtask:post_body
endclass

class mac_hier_sequence_0 extends mac_hier_base_sequence;
   `uvm_object_utils(mac_hier_sequence_0)
   `uvm_add_to_seq_lib(mac_hier_sequence_0,wb_eth_mac_hierarchical_seq)
   function new(string name = "seq_0");
      super.new(name);
   endfunction:new
   virtual task body();
      repeat(10) begin
	 `uvm_do(req);
      end
   endtask
endclass

class mac_hier_sequence_1 extends mac_hier_base_sequence;
   byte sa;
   `uvm_object_utils(mac_hier_sequence_1)
   `uvm_add_to_seq_lib(mac_hier_sequence_1, wb_eth_mac_hierarchical_seq)
   function new(string name = "seq_1");
      super.new(name);
   endfunction:new
   virtual task body();
      repeat(10) begin
	 `uvm_do_with(req, { sa == 3; } );
      end
   endtask
endclass

`endif // WB_ETH_MAC_HIERARCHICAL_SEQ__SV
