// Code your testbench here
// or browse Examples 
`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

mailbox gen2drive();
mailbox mon2score();
interface switch_vif;
function new();
gen=new();
drive=new();
mon=new();
score=new();
gen2drive=new();
mon2score=new();
event ended=new();
end class
