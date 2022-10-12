Class transaction
rand bit [15:0]   addr;
rand bit[15:0] data;      
bit [7:0]   addr_a;           
bit[15:0]  data_a;            
bit[7:0]   addr_b;             
bit [15:0]   data_b;   
bit initial count;        
constraint ( addr_a!= addr_b);
end class
