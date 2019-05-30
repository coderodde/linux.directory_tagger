all: clean dt 

dt: dt_tag_entry.cpp dt_tag_entry_list.cpp main.cpp
	g++ -std=c++14 -o dt dt_tag_entry.cpp dt_tag_entry_list.cpp main.cpp
	mkdir -p ~/.dt
	cp dt ~/.dt/dt
	cp dt_script ~/.dt/dt_script
	touch ~/.dt/tags

clean:
	