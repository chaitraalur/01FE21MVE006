// Code your testbench here
// or browse Examples
module dynamic_array;
  bit[7:0] d_array1[];int d_array2[];
  initial begin
    $display("Before Memory Allocation");
    $display("\tsize of d_array1 %0d",d_array1.size());
    $display("\tsize of d_array2 %0d",d_array2.size());
    d_array1=new[4]; d_array2=new[6];
    $display("After Memory Allocation");
    $display("\t size of d_array1 %0d",d_array1.size());
    $display("\t size of d_array2 %0d",d_array2.size());
                      d_array1={0,1,2,3};
    foreach(d_array2[j]) d_array2[j]=j+1;$display("---- d_array1 values are----");
    foreach(d_array1[i]) $display ("\td_array1[%0d]",i,d_array1[i]);
                                                           $display("-----------------");
                                                           $display("-----d_array2 values are ----");
    foreach(d_array2[i]) $display("\td_array2[%0d]=%0d",i,d_array2[i]);
                                                                                        $display("-------------------");
    //increasing the size by overriding the old values
    d_array1=new[4];
    $display("size of array d_array1=%0d",d_array1.size());
             $display("------d_array1 values are-----");
             foreach(d_array1[i]) $display("\td_array1[%0d]=%0d",i,d_array1[i]);
             //increasing the size by retaining the old value
             d_array2=new[5](d_array2);
    $display("size of array d_array2 =%0d",d_array2.size());
             $display("----- d_array2 values are-----");
             foreach(d_array2[i]) $display("\t d_array2[%0d]",i,d_array2[i]);
             end 
             endmodule
