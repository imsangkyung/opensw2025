
.PHONY: clean

./bin/myapp: ./obj/func1.o ./obj/func2.o ./obj/main
	gcc -o $@ $^ 

./obj/%.o: ./obj/%.c
	gcc -o $@ -c $< -I./include

clean:
	rm ./bin/myapp
	rm ./obj/*.o

