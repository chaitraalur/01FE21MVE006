// Code your testbench here
// or browse Examples
module associative_array;
  int a_array[*];
  int index;
  initial begin
    repeat(3)begin
      a_array[index]=index*2;
      index=index+4;
    end
    $display("\tnumber of entries in a_array is %0d",a_array.num());
    $display("----associative array a_array entries and values are---");
    foreach(a_array[i])$display("\ta_array[%0d]\t=%0d",i,a_array[i]);
            $dispaly("--------------------------------------");
            a_array.first(index);
            $display("\First entry is\t a_array[%0d]=%0d",index,a_array[index]);
            a_array.last(index);
            $display("\Last entry is\t a_array[%0d]=%0d",index,a_array[index]);
            if(a_array.exist(8));
            $display("index 8 exist in a_array");
            else
              $display("index 8 doesnt exist in a_array");
            
            
