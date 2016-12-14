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

`ifndef RAL_WB_CONMAX_ENV_SYS
 `define RAL_WB_CONMAX_ENV_SYS

import uvm_pkg::*;

class ral_reg_CFG extends uvm_reg;
   rand uvm_reg_field master0_priority;
   rand uvm_reg_field master1_priority;
   rand uvm_reg_field master2_priority;
   rand uvm_reg_field master3_priority;
   rand uvm_reg_field master4_priority;
   rand uvm_reg_field master5_priority;
   rand uvm_reg_field master6_priority;
   rand uvm_reg_field master7_priority;

   function new(string name = "CFG");
      super.new(name, 16,build_coverage(UVM_NO_COVERAGE));
   endfunction: new
   virtual function void build();
      this.master0_priority = uvm_reg_field::type_id::create("master0_priority",,get_full_name());
      this.master0_priority.configure(this, 2, 0, "RW", 0, 2'h00, 1, 0, 0);
      this.master1_priority = uvm_reg_field::type_id::create("master1_priority",,get_full_name());
      this.master1_priority.configure(this, 2, 2, "RW", 0, 2'h00, 1, 0, 0);
      this.master2_priority = uvm_reg_field::type_id::create("master2_priority",,get_full_name());
      this.master2_priority.configure(this, 2, 4, "RW", 0, 2'h00, 1, 0, 0);
      this.master3_priority = uvm_reg_field::type_id::create("master3_priority",,get_full_name());
      this.master3_priority.configure(this, 2, 6, "RW", 0, 2'h00, 1, 0, 0);
      this.master4_priority = uvm_reg_field::type_id::create("master4_priority",,get_full_name());
      this.master4_priority.configure(this, 2, 8, "RW", 0, 2'h00, 1, 0, 0);
      this.master5_priority = uvm_reg_field::type_id::create("master5_priority",,get_full_name());
      this.master5_priority.configure(this, 2, 10, "RW", 0, 2'h00, 1, 0, 0);
      this.master6_priority = uvm_reg_field::type_id::create("master6_priority",,get_full_name());
      this.master6_priority.configure(this, 2, 12, "RW", 0, 2'h00, 1, 0, 0);
      this.master7_priority = uvm_reg_field::type_id::create("master7_priority",,get_full_name());
      this.master7_priority.configure(this, 2, 14, "RW", 0, 2'h00, 1, 0, 0);
   endfunction: build

   `uvm_object_utils(ral_reg_CFG)

endclass : ral_reg_CFG

class ral_block_wb_conmax_env_ral_block extends uvm_reg_block;
   rand ral_reg_CFG cfg_0;
   rand ral_reg_CFG cfg_1;
   rand ral_reg_CFG cfg_2;
   rand ral_reg_CFG cfg_3;
   rand ral_reg_CFG cfg_4;
   rand ral_reg_CFG cfg_5;
   rand ral_reg_CFG cfg_6;
   rand ral_reg_CFG cfg_7;
   rand ral_reg_CFG cfg_8;
   rand ral_reg_CFG cfg_9;
   rand ral_reg_CFG cfg_10;
   rand ral_reg_CFG cfg_11;
   rand ral_reg_CFG cfg_12;
   rand ral_reg_CFG cfg_13;
   rand ral_reg_CFG cfg_14;
   rand ral_reg_CFG cfg_15;
   rand uvm_reg_field cfg_0_master0_priority;
   rand uvm_reg_field cfg_0_master1_priority;
   rand uvm_reg_field cfg_0_master2_priority;
   rand uvm_reg_field cfg_0_master3_priority;
   rand uvm_reg_field cfg_0_master4_priority;
   rand uvm_reg_field cfg_0_master5_priority;
   rand uvm_reg_field cfg_0_master6_priority;
   rand uvm_reg_field cfg_0_master7_priority;
   rand uvm_reg_field cfg_1_master0_priority;
   rand uvm_reg_field cfg_1_master1_priority;
   rand uvm_reg_field cfg_1_master2_priority;
   rand uvm_reg_field cfg_1_master3_priority;
   rand uvm_reg_field cfg_1_master4_priority;
   rand uvm_reg_field cfg_1_master5_priority;
   rand uvm_reg_field cfg_1_master6_priority;
   rand uvm_reg_field cfg_1_master7_priority;
   rand uvm_reg_field cfg_2_master0_priority;
   rand uvm_reg_field cfg_2_master1_priority;
   rand uvm_reg_field cfg_2_master2_priority;
   rand uvm_reg_field cfg_2_master3_priority;
   rand uvm_reg_field cfg_2_master4_priority;
   rand uvm_reg_field cfg_2_master5_priority;
   rand uvm_reg_field cfg_2_master6_priority;
   rand uvm_reg_field cfg_2_master7_priority;
   rand uvm_reg_field cfg_3_master0_priority;
   rand uvm_reg_field cfg_3_master1_priority;
   rand uvm_reg_field cfg_3_master2_priority;
   rand uvm_reg_field cfg_3_master3_priority;
   rand uvm_reg_field cfg_3_master4_priority;
   rand uvm_reg_field cfg_3_master5_priority;
   rand uvm_reg_field cfg_3_master6_priority;
   rand uvm_reg_field cfg_3_master7_priority;
   rand uvm_reg_field cfg_4_master0_priority;
   rand uvm_reg_field cfg_4_master1_priority;
   rand uvm_reg_field cfg_4_master2_priority;
   rand uvm_reg_field cfg_4_master3_priority;
   rand uvm_reg_field cfg_4_master4_priority;
   rand uvm_reg_field cfg_4_master5_priority;
   rand uvm_reg_field cfg_4_master6_priority;
   rand uvm_reg_field cfg_4_master7_priority;
   rand uvm_reg_field cfg_5_master0_priority;
   rand uvm_reg_field cfg_5_master1_priority;
   rand uvm_reg_field cfg_5_master2_priority;
   rand uvm_reg_field cfg_5_master3_priority;
   rand uvm_reg_field cfg_5_master4_priority;
   rand uvm_reg_field cfg_5_master5_priority;
   rand uvm_reg_field cfg_5_master6_priority;
   rand uvm_reg_field cfg_5_master7_priority;
   rand uvm_reg_field cfg_6_master0_priority;
   rand uvm_reg_field cfg_6_master1_priority;
   rand uvm_reg_field cfg_6_master2_priority;
   rand uvm_reg_field cfg_6_master3_priority;
   rand uvm_reg_field cfg_6_master4_priority;
   rand uvm_reg_field cfg_6_master5_priority;
   rand uvm_reg_field cfg_6_master6_priority;
   rand uvm_reg_field cfg_6_master7_priority;
   rand uvm_reg_field cfg_7_master0_priority;
   rand uvm_reg_field cfg_7_master1_priority;
   rand uvm_reg_field cfg_7_master2_priority;
   rand uvm_reg_field cfg_7_master3_priority;
   rand uvm_reg_field cfg_7_master4_priority;
   rand uvm_reg_field cfg_7_master5_priority;
   rand uvm_reg_field cfg_7_master6_priority;
   rand uvm_reg_field cfg_7_master7_priority;
   rand uvm_reg_field cfg_8_master0_priority;
   rand uvm_reg_field cfg_8_master1_priority;
   rand uvm_reg_field cfg_8_master2_priority;
   rand uvm_reg_field cfg_8_master3_priority;
   rand uvm_reg_field cfg_8_master4_priority;
   rand uvm_reg_field cfg_8_master5_priority;
   rand uvm_reg_field cfg_8_master6_priority;
   rand uvm_reg_field cfg_8_master7_priority;
   rand uvm_reg_field cfg_9_master0_priority;
   rand uvm_reg_field cfg_9_master1_priority;
   rand uvm_reg_field cfg_9_master2_priority;
   rand uvm_reg_field cfg_9_master3_priority;
   rand uvm_reg_field cfg_9_master4_priority;
   rand uvm_reg_field cfg_9_master5_priority;
   rand uvm_reg_field cfg_9_master6_priority;
   rand uvm_reg_field cfg_9_master7_priority;
   rand uvm_reg_field cfg_10_master0_priority;
   rand uvm_reg_field cfg_10_master1_priority;
   rand uvm_reg_field cfg_10_master2_priority;
   rand uvm_reg_field cfg_10_master3_priority;
   rand uvm_reg_field cfg_10_master4_priority;
   rand uvm_reg_field cfg_10_master5_priority;
   rand uvm_reg_field cfg_10_master6_priority;
   rand uvm_reg_field cfg_10_master7_priority;
   rand uvm_reg_field cfg_11_master0_priority;
   rand uvm_reg_field cfg_11_master1_priority;
   rand uvm_reg_field cfg_11_master2_priority;
   rand uvm_reg_field cfg_11_master3_priority;
   rand uvm_reg_field cfg_11_master4_priority;
   rand uvm_reg_field cfg_11_master5_priority;
   rand uvm_reg_field cfg_11_master6_priority;
   rand uvm_reg_field cfg_11_master7_priority;
   rand uvm_reg_field cfg_12_master0_priority;
   rand uvm_reg_field cfg_12_master1_priority;
   rand uvm_reg_field cfg_12_master2_priority;
   rand uvm_reg_field cfg_12_master3_priority;
   rand uvm_reg_field cfg_12_master4_priority;
   rand uvm_reg_field cfg_12_master5_priority;
   rand uvm_reg_field cfg_12_master6_priority;
   rand uvm_reg_field cfg_12_master7_priority;
   rand uvm_reg_field cfg_13_master0_priority;
   rand uvm_reg_field cfg_13_master1_priority;
   rand uvm_reg_field cfg_13_master2_priority;
   rand uvm_reg_field cfg_13_master3_priority;
   rand uvm_reg_field cfg_13_master4_priority;
   rand uvm_reg_field cfg_13_master5_priority;
   rand uvm_reg_field cfg_13_master6_priority;
   rand uvm_reg_field cfg_13_master7_priority;
   rand uvm_reg_field cfg_14_master0_priority;
   rand uvm_reg_field cfg_14_master1_priority;
   rand uvm_reg_field cfg_14_master2_priority;
   rand uvm_reg_field cfg_14_master3_priority;
   rand uvm_reg_field cfg_14_master4_priority;
   rand uvm_reg_field cfg_14_master5_priority;
   rand uvm_reg_field cfg_14_master6_priority;
   rand uvm_reg_field cfg_14_master7_priority;
   rand uvm_reg_field cfg_15_master0_priority;
   rand uvm_reg_field cfg_15_master1_priority;
   rand uvm_reg_field cfg_15_master2_priority;
   rand uvm_reg_field cfg_15_master3_priority;
   rand uvm_reg_field cfg_15_master4_priority;
   rand uvm_reg_field cfg_15_master5_priority;
   rand uvm_reg_field cfg_15_master6_priority;
   rand uvm_reg_field cfg_15_master7_priority;

   function new(string name = "wb_conmax_env_ral_block");
      super.new(name, build_coverage(UVM_NO_COVERAGE));
   endfunction: new

   virtual function void build();
      this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 0);
      this.cfg_0 = ral_reg_CFG::type_id::create("cfg_0",,get_full_name());
      this.cfg_0.configure(this, null, "");
      this.cfg_0.build();
      this.default_map.add_reg(this.cfg_0, `UVM_REG_ADDR_WIDTH'h0, "RW", 0);
      this.cfg_0_master0_priority = this.cfg_0.master0_priority;
      this.cfg_0_master1_priority = this.cfg_0.master1_priority;
      this.cfg_0_master2_priority = this.cfg_0.master2_priority;
      this.cfg_0_master3_priority = this.cfg_0.master3_priority;
      this.cfg_0_master4_priority = this.cfg_0.master4_priority;
      this.cfg_0_master5_priority = this.cfg_0.master5_priority;
      this.cfg_0_master6_priority = this.cfg_0.master6_priority;
      this.cfg_0_master7_priority = this.cfg_0.master7_priority;
      this.cfg_1 = ral_reg_CFG::type_id::create("cfg_1",,get_full_name());
      this.cfg_1.configure(this, null, "");
      this.cfg_1.build();
      this.default_map.add_reg(this.cfg_1, `UVM_REG_ADDR_WIDTH'h1, "RW", 0);
      this.cfg_1_master0_priority = this.cfg_1.master0_priority;
      this.cfg_1_master1_priority = this.cfg_1.master1_priority;
      this.cfg_1_master2_priority = this.cfg_1.master2_priority;
      this.cfg_1_master3_priority = this.cfg_1.master3_priority;
      this.cfg_1_master4_priority = this.cfg_1.master4_priority;
      this.cfg_1_master5_priority = this.cfg_1.master5_priority;
      this.cfg_1_master6_priority = this.cfg_1.master6_priority;
      this.cfg_1_master7_priority = this.cfg_1.master7_priority;
      this.cfg_2 = ral_reg_CFG::type_id::create("cfg_2",,get_full_name());
      this.cfg_2.configure(this, null, "");
      this.cfg_2.build();
      this.default_map.add_reg(this.cfg_2, `UVM_REG_ADDR_WIDTH'h2, "RW", 0);
      this.cfg_2_master0_priority = this.cfg_2.master0_priority;
      this.cfg_2_master1_priority = this.cfg_2.master1_priority;
      this.cfg_2_master2_priority = this.cfg_2.master2_priority;
      this.cfg_2_master3_priority = this.cfg_2.master3_priority;
      this.cfg_2_master4_priority = this.cfg_2.master4_priority;
      this.cfg_2_master5_priority = this.cfg_2.master5_priority;
      this.cfg_2_master6_priority = this.cfg_2.master6_priority;
      this.cfg_2_master7_priority = this.cfg_2.master7_priority;
      this.cfg_3 = ral_reg_CFG::type_id::create("cfg_3",,get_full_name());
      this.cfg_3.configure(this, null, "");
      this.cfg_3.build();
      this.default_map.add_reg(this.cfg_3, `UVM_REG_ADDR_WIDTH'h3, "RW", 0);
      this.cfg_3_master0_priority = this.cfg_3.master0_priority;
      this.cfg_3_master1_priority = this.cfg_3.master1_priority;
      this.cfg_3_master2_priority = this.cfg_3.master2_priority;
      this.cfg_3_master3_priority = this.cfg_3.master3_priority;
      this.cfg_3_master4_priority = this.cfg_3.master4_priority;
      this.cfg_3_master5_priority = this.cfg_3.master5_priority;
      this.cfg_3_master6_priority = this.cfg_3.master6_priority;
      this.cfg_3_master7_priority = this.cfg_3.master7_priority;
      this.cfg_4 = ral_reg_CFG::type_id::create("cfg_4",,get_full_name());
      this.cfg_4.configure(this, null, "");
      this.cfg_4.build();
      this.default_map.add_reg(this.cfg_4, `UVM_REG_ADDR_WIDTH'h4, "RW", 0);
      this.cfg_4_master0_priority = this.cfg_4.master0_priority;
      this.cfg_4_master1_priority = this.cfg_4.master1_priority;
      this.cfg_4_master2_priority = this.cfg_4.master2_priority;
      this.cfg_4_master3_priority = this.cfg_4.master3_priority;
      this.cfg_4_master4_priority = this.cfg_4.master4_priority;
      this.cfg_4_master5_priority = this.cfg_4.master5_priority;
      this.cfg_4_master6_priority = this.cfg_4.master6_priority;
      this.cfg_4_master7_priority = this.cfg_4.master7_priority;
      this.cfg_5 = ral_reg_CFG::type_id::create("cfg_5",,get_full_name());
      this.cfg_5.configure(this, null, "");
      this.cfg_5.build();
      this.default_map.add_reg(this.cfg_5, `UVM_REG_ADDR_WIDTH'h5, "RW", 0);
      this.cfg_5_master0_priority = this.cfg_5.master0_priority;
      this.cfg_5_master1_priority = this.cfg_5.master1_priority;
      this.cfg_5_master2_priority = this.cfg_5.master2_priority;
      this.cfg_5_master3_priority = this.cfg_5.master3_priority;
      this.cfg_5_master4_priority = this.cfg_5.master4_priority;
      this.cfg_5_master5_priority = this.cfg_5.master5_priority;
      this.cfg_5_master6_priority = this.cfg_5.master6_priority;
      this.cfg_5_master7_priority = this.cfg_5.master7_priority;
      this.cfg_6 = ral_reg_CFG::type_id::create("cfg_6",,get_full_name());
      this.cfg_6.configure(this, null, "");
      this.cfg_6.build();
      this.default_map.add_reg(this.cfg_6, `UVM_REG_ADDR_WIDTH'h6, "RW", 0);
      this.cfg_6_master0_priority = this.cfg_6.master0_priority;
      this.cfg_6_master1_priority = this.cfg_6.master1_priority;
      this.cfg_6_master2_priority = this.cfg_6.master2_priority;
      this.cfg_6_master3_priority = this.cfg_6.master3_priority;
      this.cfg_6_master4_priority = this.cfg_6.master4_priority;
      this.cfg_6_master5_priority = this.cfg_6.master5_priority;
      this.cfg_6_master6_priority = this.cfg_6.master6_priority;
      this.cfg_6_master7_priority = this.cfg_6.master7_priority;
      this.cfg_7 = ral_reg_CFG::type_id::create("cfg_7",,get_full_name());
      this.cfg_7.configure(this, null, "");
      this.cfg_7.build();
      this.default_map.add_reg(this.cfg_7, `UVM_REG_ADDR_WIDTH'h7, "RW", 0);
      this.cfg_7_master0_priority = this.cfg_7.master0_priority;
      this.cfg_7_master1_priority = this.cfg_7.master1_priority;
      this.cfg_7_master2_priority = this.cfg_7.master2_priority;
      this.cfg_7_master3_priority = this.cfg_7.master3_priority;
      this.cfg_7_master4_priority = this.cfg_7.master4_priority;
      this.cfg_7_master5_priority = this.cfg_7.master5_priority;
      this.cfg_7_master6_priority = this.cfg_7.master6_priority;
      this.cfg_7_master7_priority = this.cfg_7.master7_priority;
      this.cfg_8 = ral_reg_CFG::type_id::create("cfg_8",,get_full_name());
      this.cfg_8.configure(this, null, "");
      this.cfg_8.build();
      this.default_map.add_reg(this.cfg_8, `UVM_REG_ADDR_WIDTH'h8, "RW", 0);
      this.cfg_8_master0_priority = this.cfg_8.master0_priority;
      this.cfg_8_master1_priority = this.cfg_8.master1_priority;
      this.cfg_8_master2_priority = this.cfg_8.master2_priority;
      this.cfg_8_master3_priority = this.cfg_8.master3_priority;
      this.cfg_8_master4_priority = this.cfg_8.master4_priority;
      this.cfg_8_master5_priority = this.cfg_8.master5_priority;
      this.cfg_8_master6_priority = this.cfg_8.master6_priority;
      this.cfg_8_master7_priority = this.cfg_8.master7_priority;
      this.cfg_9 = ral_reg_CFG::type_id::create("cfg_9",,get_full_name());
      this.cfg_9.configure(this, null, "");
      this.cfg_9.build();
      this.default_map.add_reg(this.cfg_9, `UVM_REG_ADDR_WIDTH'h9, "RW", 0);
      this.cfg_9_master0_priority = this.cfg_9.master0_priority;
      this.cfg_9_master1_priority = this.cfg_9.master1_priority;
      this.cfg_9_master2_priority = this.cfg_9.master2_priority;
      this.cfg_9_master3_priority = this.cfg_9.master3_priority;
      this.cfg_9_master4_priority = this.cfg_9.master4_priority;
      this.cfg_9_master5_priority = this.cfg_9.master5_priority;
      this.cfg_9_master6_priority = this.cfg_9.master6_priority;
      this.cfg_9_master7_priority = this.cfg_9.master7_priority;
      this.cfg_10 = ral_reg_CFG::type_id::create("cfg_10",,get_full_name());
      this.cfg_10.configure(this, null, "");
      this.cfg_10.build();
      this.default_map.add_reg(this.cfg_10, `UVM_REG_ADDR_WIDTH'hA, "RW", 0);
      this.cfg_10_master0_priority = this.cfg_10.master0_priority;
      this.cfg_10_master1_priority = this.cfg_10.master1_priority;
      this.cfg_10_master2_priority = this.cfg_10.master2_priority;
      this.cfg_10_master3_priority = this.cfg_10.master3_priority;
      this.cfg_10_master4_priority = this.cfg_10.master4_priority;
      this.cfg_10_master5_priority = this.cfg_10.master5_priority;
      this.cfg_10_master6_priority = this.cfg_10.master6_priority;
      this.cfg_10_master7_priority = this.cfg_10.master7_priority;
      this.cfg_11 = ral_reg_CFG::type_id::create("cfg_11",,get_full_name());
      this.cfg_11.configure(this, null, "");
      this.cfg_11.build();
      this.default_map.add_reg(this.cfg_11, `UVM_REG_ADDR_WIDTH'hB, "RW", 0);
      this.cfg_11_master0_priority = this.cfg_11.master0_priority;
      this.cfg_11_master1_priority = this.cfg_11.master1_priority;
      this.cfg_11_master2_priority = this.cfg_11.master2_priority;
      this.cfg_11_master3_priority = this.cfg_11.master3_priority;
      this.cfg_11_master4_priority = this.cfg_11.master4_priority;
      this.cfg_11_master5_priority = this.cfg_11.master5_priority;
      this.cfg_11_master6_priority = this.cfg_11.master6_priority;
      this.cfg_11_master7_priority = this.cfg_11.master7_priority;
      this.cfg_12 = ral_reg_CFG::type_id::create("cfg_12",,get_full_name());
      this.cfg_12.configure(this, null, "");
      this.cfg_12.build();
      this.default_map.add_reg(this.cfg_12, `UVM_REG_ADDR_WIDTH'hC, "RW", 0);
      this.cfg_12_master0_priority = this.cfg_12.master0_priority;
      this.cfg_12_master1_priority = this.cfg_12.master1_priority;
      this.cfg_12_master2_priority = this.cfg_12.master2_priority;
      this.cfg_12_master3_priority = this.cfg_12.master3_priority;
      this.cfg_12_master4_priority = this.cfg_12.master4_priority;
      this.cfg_12_master5_priority = this.cfg_12.master5_priority;
      this.cfg_12_master6_priority = this.cfg_12.master6_priority;
      this.cfg_12_master7_priority = this.cfg_12.master7_priority;
      this.cfg_13 = ral_reg_CFG::type_id::create("cfg_13",,get_full_name());
      this.cfg_13.configure(this, null, "");
      this.cfg_13.build();
      this.default_map.add_reg(this.cfg_13, `UVM_REG_ADDR_WIDTH'hD, "RW", 0);
      this.cfg_13_master0_priority = this.cfg_13.master0_priority;
      this.cfg_13_master1_priority = this.cfg_13.master1_priority;
      this.cfg_13_master2_priority = this.cfg_13.master2_priority;
      this.cfg_13_master3_priority = this.cfg_13.master3_priority;
      this.cfg_13_master4_priority = this.cfg_13.master4_priority;
      this.cfg_13_master5_priority = this.cfg_13.master5_priority;
      this.cfg_13_master6_priority = this.cfg_13.master6_priority;
      this.cfg_13_master7_priority = this.cfg_13.master7_priority;
      this.cfg_14 = ral_reg_CFG::type_id::create("cfg_14",,get_full_name());
      this.cfg_14.configure(this, null, "");
      this.cfg_14.build();
      this.default_map.add_reg(this.cfg_14, `UVM_REG_ADDR_WIDTH'hE, "RW", 0);
      this.cfg_14_master0_priority = this.cfg_14.master0_priority;
      this.cfg_14_master1_priority = this.cfg_14.master1_priority;
      this.cfg_14_master2_priority = this.cfg_14.master2_priority;
      this.cfg_14_master3_priority = this.cfg_14.master3_priority;
      this.cfg_14_master4_priority = this.cfg_14.master4_priority;
      this.cfg_14_master5_priority = this.cfg_14.master5_priority;
      this.cfg_14_master6_priority = this.cfg_14.master6_priority;
      this.cfg_14_master7_priority = this.cfg_14.master7_priority;
      this.cfg_15 = ral_reg_CFG::type_id::create("cfg_15",,get_full_name());
      this.cfg_15.configure(this, null, "");
      this.cfg_15.build();
      this.default_map.add_reg(this.cfg_15, `UVM_REG_ADDR_WIDTH'hF, "RW", 0);
      this.cfg_15_master0_priority = this.cfg_15.master0_priority;
      this.cfg_15_master1_priority = this.cfg_15.master1_priority;
      this.cfg_15_master2_priority = this.cfg_15.master2_priority;
      this.cfg_15_master3_priority = this.cfg_15.master3_priority;
      this.cfg_15_master4_priority = this.cfg_15.master4_priority;
      this.cfg_15_master5_priority = this.cfg_15.master5_priority;
      this.cfg_15_master6_priority = this.cfg_15.master6_priority;
      this.cfg_15_master7_priority = this.cfg_15.master7_priority;
   endfunction : build

   `uvm_object_utils(ral_block_wb_conmax_env_ral_block)

endclass : ral_block_wb_conmax_env_ral_block

class ral_sys_wb_conmax_env_sys extends uvm_reg_block;
   uvm_reg_map master_0;
   uvm_reg_map master_1;
   uvm_reg_map master_2;
   uvm_reg_map master_3;
   uvm_reg_map master_4;
   uvm_reg_map master_5;
   uvm_reg_map master_6;
   uvm_reg_map master_7;

   rand ral_block_wb_conmax_env_ral_block reg_master0;
   rand ral_block_wb_conmax_env_ral_block reg_master1;
   rand ral_block_wb_conmax_env_ral_block reg_master2;
   rand ral_block_wb_conmax_env_ral_block reg_master3;
   rand ral_block_wb_conmax_env_ral_block reg_master4;
   rand ral_block_wb_conmax_env_ral_block reg_master5;
   rand ral_block_wb_conmax_env_ral_block reg_master6;
   rand ral_block_wb_conmax_env_ral_block reg_master7;

   function new(string name = "wb_conmax_env_sys");
      super.new(name);
   endfunction: new

   function void build();
      this.master_0 = create_map("master_0", 0, 4, UVM_LITTLE_ENDIAN);
      this.default_map = this.master_0;
      this.master_1 = create_map("master_1", 0, 4, UVM_LITTLE_ENDIAN);
      this.master_2 = create_map("master_2", 0, 4, UVM_LITTLE_ENDIAN);
      this.master_3 = create_map("master_3", 0, 4, UVM_LITTLE_ENDIAN);
      this.master_4 = create_map("master_4", 0, 4, UVM_LITTLE_ENDIAN);
      this.master_5 = create_map("master_5", 0, 4, UVM_LITTLE_ENDIAN);
      this.master_6 = create_map("master_6", 0, 4, UVM_LITTLE_ENDIAN);
      this.master_7 = create_map("master_7", 0, 4, UVM_LITTLE_ENDIAN);
      this.reg_master0 = ral_block_wb_conmax_env_ral_block::type_id::create("reg_master0",,get_full_name());
      this.reg_master0.configure(this, "");
      this.reg_master0.build();
      this.master_0.add_submap(this.reg_master0.default_map, `UVM_REG_ADDR_WIDTH'h0);
      this.reg_master1 = ral_block_wb_conmax_env_ral_block::type_id::create("reg_master1",,get_full_name());
      this.reg_master1.configure(this, "");
      this.reg_master1.build();
      this.master_1.add_submap(this.reg_master1.default_map, `UVM_REG_ADDR_WIDTH'h0);
      this.reg_master2 = ral_block_wb_conmax_env_ral_block::type_id::create("reg_master2",,get_full_name());
      this.reg_master2.configure(this, "");
      this.reg_master2.build();
      this.master_2.add_submap(this.reg_master2.default_map, `UVM_REG_ADDR_WIDTH'h0);
      this.reg_master3 = ral_block_wb_conmax_env_ral_block::type_id::create("reg_master3",,get_full_name());
      this.reg_master3.configure(this, "");
      this.reg_master3.build();
      this.master_3.add_submap(this.reg_master3.default_map, `UVM_REG_ADDR_WIDTH'h0);
      this.reg_master4 = ral_block_wb_conmax_env_ral_block::type_id::create("reg_master4",,get_full_name());
      this.reg_master4.configure(this, "");
      this.reg_master4.build();
      this.master_4.add_submap(this.reg_master4.default_map, `UVM_REG_ADDR_WIDTH'h0);
      this.reg_master5 = ral_block_wb_conmax_env_ral_block::type_id::create("reg_master5",,get_full_name());
      this.reg_master5.configure(this, "");
      this.reg_master5.build();
      this.master_5.add_submap(this.reg_master5.default_map, `UVM_REG_ADDR_WIDTH'h0);
      this.reg_master6 = ral_block_wb_conmax_env_ral_block::type_id::create("reg_master6",,get_full_name());
      this.reg_master6.configure(this, "");
      this.reg_master6.build();
      this.master_6.add_submap(this.reg_master6.default_map, `UVM_REG_ADDR_WIDTH'h0);
      this.reg_master7 = ral_block_wb_conmax_env_ral_block::type_id::create("reg_master7",,get_full_name());
      this.reg_master7.configure(this, "");
      this.reg_master7.build();
      this.master_7.add_submap(this.reg_master7.default_map, `UVM_REG_ADDR_WIDTH'h0);
   endfunction : build

   `uvm_object_utils(ral_sys_wb_conmax_env_sys)
endclass : ral_sys_wb_conmax_env_sys

`endif