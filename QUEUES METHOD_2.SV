// Code your testbench here
// or browse Examples
module queue_array;
  bit [31:0] queue_1[$];
  int ivar;
  initial begin
    queue_1={0,1,2,3};
    $display("\tqueue_1 size is %0d",queue_1.size());
    queue_1.push_front(22);
    $display("\tqueue_1 size after push_front is %0d",queue_1.size());
    queue_1.push_back(44);
    $display("queue_1 size after push_back is %0d",queue_1.size());
    ivar=queue_1.pop_front();
    $display("\tqueue_1 pop_front value is %0d",ivar);
    ivar=queue_1.pop_back();
    $display("\tqueue_1 pop_back value is %0d",ivar);
  end
endmodule
