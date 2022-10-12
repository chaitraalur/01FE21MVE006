class environment 
class pre_test
drive reset();
end pre_test;

class test
generator main();
driver main();
monitor main();
scoreboard main();
join any();
end test

class post_test
mailbox  interface switch_vif;


class run
pre_test;
test;
post_test;
