
#############################Load Frameworks#################################################
@load frameworks/communication/listen #this sets up the bro framework for listening from python 
@load base/frameworks/communication
@load base/frameworks/yanc
@load base/frameworks/control

###########################################################################################

event bro_init(){

	print "Sample_script bro is up";

	yanc::addr_map["a"]=99.99.99.99;
	yanc::int_map["b"]=55;
	yanc::string_map["c"]="test";

}

event bro_list(){
	#go through the users and print out users in the set on the bro device 
	for ( host in yanc::addr_map ){
        print fmt("On small script:  %s is mapped to %s", host,yanc::addr_map[host]);
	}
}

event bro_demo(){
	print fmt("BRO DEMO INTIATED!");
	print fmt("Address is: %s", yanc::addr_map["a"]);
	print fmt("Integer map is: %s", yanc::int_map["b"]);
	print fmt("String is: %s", yanc::string_map["c"]);


}
