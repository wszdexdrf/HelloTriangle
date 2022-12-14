CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: main.cpp 
	g++ $(CFLAGS) -o VulkanTest main.cpp $(LDFLAGS)

VulkanDebug: main.cpp
	g++ $(CFLAGS) -g -o VulkanDebug main.cpp $(LDFLAGS)

.PHONY: test debug clean

test: VulkanTest
	./VulkanTest

debug: VulkanDebug
	./VulkanDebug

clean:
	rm -f VulkanTest
	rm -f VulkanDebug
