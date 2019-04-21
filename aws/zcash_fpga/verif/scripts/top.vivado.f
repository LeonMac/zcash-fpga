# Amazon FPGA Hardware Development Kit
#
# Copyright 2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Amazon Software License (the "License"). You may not use
# this file except in compliance with the License. A copy of the License is
# located at
#
#    http://aws.amazon.com/asl/
#
# or in the "license" file accompanying this file. This file is distributed on
# an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, express or
# implied. See the License for the specific language governing permissions and
# limitations under the License.

-define VIVADO_SIM
-define CARD_1=card
-define CL_NAME=zcash_cl_sde
-define SIMULATION
-define NO_SDE_DEBUG_ILA
-define DISABLE_VJTAG_DEBUG

-sourcelibext .v
-sourcelibext .sv
-sourcelibext .svh

-sourcelibdir ${CL_ROOT}/../common/design
-sourcelibdir ${CL_ROOT}/design
-sourcelibdir ${SH_LIB_DIR}
-sourcelibdir ${SH_INF_DIR}
-sourcelibdir ${SH_SH_DIR}
-sourcelibdir ${HDK_SHELL_DESIGN_DIR}/sh_ddr/sim
-sourcelibdir ${HDK_SHELL_DESIGN_DIR}/ip/cl_debug_bridge/bd_0/hdl
-sourcelibdir ${HDK_SHELL_DESIGN_DIR}/ip/cl_debug_bridge/sim

-include ${CL_ROOT}/../common/design
-include ${CL_ROOT}/design
-include ${CL_ROOT}/verif/tests
-include ${SH_LIB_DIR}
-include ${SH_INF_DIR}
-include ${SH_SH_DIR}
-include ${HDK_COMMON_DIR}/verif/include
-include ${HDK_SHELL_DESIGN_DIR}/ip/cl_debug_bridge/bd_0/ip/ip_0/hdl/verilog
-include ${HDK_SHELL_DESIGN_DIR}/ip/axi_register_slice_light/hdl
-include ${HDK_SHELL_DESIGN_DIR}/sh_ddr/sim
-include ${HDK_SHELL_DESIGN_DIR}/interfaces


${CL_ROOT}/../common/design/cl_common_defines.vh
${CL_ROOT}/design/cl_sde_defines.vh
${HDK_SHELL_DESIGN_DIR}/ip/ila_vio_counter/sim/ila_vio_counter.v
${HDK_SHELL_DESIGN_DIR}/ip/ila_0/sim/ila_0.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_debug_bridge/bd_0/sim/bd_a493.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_debug_bridge/bd_0/ip/ip_0/sim/bd_a493_xsdbm_0.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_debug_bridge/bd_0/ip/ip_0/hdl/xsdbm_v3_0_vl_rfs.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_debug_bridge/bd_0/ip/ip_0/hdl/ltlib_v1_0_vl_rfs.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_debug_bridge/bd_0/ip/ip_1/sim/bd_a493_lut_buffer_0.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_debug_bridge/bd_0/ip/ip_1/hdl/lut_buffer_v2_0_vl_rfs.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_debug_bridge/bd_0/hdl/bd_a493_wrapper.v
${HDK_SHELL_DESIGN_DIR}/ip/cl_debug_bridge/sim/cl_debug_bridge.v
${HDK_SHELL_DESIGN_DIR}/ip/vio_0/sim/vio_0.v
${HDK_SHELL_DESIGN_DIR}/ip/axi_register_slice_light/sim/axi_register_slice_light.v
${HDK_SHELL_DESIGN_DIR}/ip/axi_register_slice/sim/axi_register_slice.v
${HDK_SHELL_DESIGN_DIR}/ip/axi_register_slice_light/hdl/axi_register_slice_v2_1_vl_rfs.v
${HDK_SHELL_DESIGN_DIR}/ip/axi_register_slice_light/hdl/axi_infrastructure_v1_1_vl_rfs.v
${HDK_SHELL_DESIGN_DIR}/ip/axi_clock_converter_0/simulation/fifo_generator_vlog_beh.v
${HDK_SHELL_DESIGN_DIR}/ip/axi_clock_converter_0/hdl/fifo_generator_v13_2_rfs.v
${HDK_SHELL_DESIGN_DIR}/ip/axi_clock_converter_0/hdl/axi_clock_converter_v2_1_vl_rfs.v
${SH_LIB_DIR}/../ip/axi_clock_converter_0/sim/axi_clock_converter_0.v
${CL_ROOT}/ip/ila_axi4/sim/ila_axi4.v
${CL_ROOT}/ip/ila_axi4_512/sim/ila_axi4_512.v
${CL_ROOT}/ip/ila_axis/sim/ila_axis.v
${CL_ROOT}/ip/ila_sde_c2h_buf/sim/ila_sde_c2h_buf.v
${CL_ROOT}/ip/ila_sde_c2h_dm/sim/ila_sde_c2h_dm.v
${CL_ROOT}/ip/ila_sde_h2c_buf/sim/ila_sde_h2c_buf.v
${CL_ROOT}/ip/ila_sde_h2c_dm/sim/ila_sde_h2c_dm.v
${CL_ROOT}/ip/ila_sde_ps/sim/ila_sde_ps.v
${CL_ROOT}/ip/ila_sde_wb/sim/ila_sde_wb.v
${CL_ROOT}/lib/axis_flop_fifo.sv
${CL_ROOT}/lib/bram_1w1r.sv
${CL_ROOT}/lib/flop_fifo_in.sv
${CL_ROOT}/lib/ft_fifo_p.v
${CL_ROOT}/lib/ft_fifo.v
${CL_ROOT}/lib/ram_fifo_ft.sv
${CL_ROOT}/lib/rr_arb.sv
${CL_ROOT}/design/cl_id_defines.vh
${CL_ROOT}/design/sde_pkg.sv
${CL_ROOT}/design/cl_pkt_tst.sv
${CL_ROOT}/design/ila_axi4_wrapper.sv
${CL_ROOT}/design/axi_prot_chk.sv
${CL_ROOT}/design/cl_tst.sv
${CL_ROOT}/design/cl_sde_srm.sv
${CL_ROOT}/design/sde_c2h_axis.sv
${CL_ROOT}/design/sde_c2h_buf.sv
${CL_ROOT}/design/sde_c2h_cfg.sv
${CL_ROOT}/design/sde_c2h_data.sv
${CL_ROOT}/design/sde_c2h.sv
${CL_ROOT}/design/sde_h2c_axis.sv
${CL_ROOT}/design/sde_h2c_buf.sv
${CL_ROOT}/design/sde_h2c_cfg.sv
${CL_ROOT}/design/sde_h2c_data.sv
${CL_ROOT}/design/sde_h2c.sv
${CL_ROOT}/design/sde_pm.sv
${CL_ROOT}/design/sde_ps_acc.sv
${CL_ROOT}/design/sde_ps.sv
${CL_ROOT}/design/sde_wb.sv
${CL_ROOT}/design/sde_desc.sv
${CL_ROOT}/design/sde.sv
${HDK_COMMON_DIR}/verif/models/base/gen_buf_t.sv
${HDK_COMMON_DIR}/verif/models/stream_bfm/stream_bfm.sv
${CL_ROOT}/design/zcash_cl_sde.sv

${CL_ROOT}/ip/axis_dwidth_converter_64_to_8/sim/axis_dwidth_converter_64_to_8.v
${CL_ROOT}/ip/axis_dwidth_converter_64_to_8/hdl/axis_dwidth_converter_v1_1_vl_rfs.v
${CL_ROOT}/ip/axis_dwidth_converter_64_to_8/hdl/axis_infrastructure_v1_1_0.vh
${CL_ROOT}/ip/axis_dwidth_converter_64_to_8/hdl/axis_infrastructure_v1_1_vl_rfs.v
${CL_ROOT}/ip/axis_dwidth_converter_64_to_8/hdl/axis_register_slice_v1_1_vl_rfs.v

${CL_ROOT}/ip/axis_dwidth_converter_8_to_64/sim/axis_dwidth_converter_8_to_64.v


${CL_ROOT}/design/zcash_aws_wrapper.sv




-f ${ZCASH_DIR}/zcash_fpga/src/rtl/top/include.f

-f ${HDK_COMMON_DIR}/verif/tb/filelists/tb.${SIMULATOR}.f
${HDK_COMMON_DIR}/verif/tb/sv/dma_classes.sv
${TEST_NAME}
