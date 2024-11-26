ASM_NAME = 12_sample_minimal_function2
OBJS= $(ASM_NAME).o main.o
OUTPUT_NAME= exec

build: $(OUTPUT_NAME)

clean:
	@rm $(OUTPUT_NAME)

run: $(OUTPUT_NAME)
	@./$(OUTPUT_NAME) && echo $$? || echo $$?

$(OUTPUT_NAME): $(OBJS) Makefile
	@gcc -no-pie -o $(OUTPUT_NAME) $(OBJS)

%.o: %.s
	@nasm -felf64 $< -o $@
%.o: %.c
	@gcc $< -o $@ -c
