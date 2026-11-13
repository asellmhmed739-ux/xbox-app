#include <stdio.h>
#include <xenos/xenos.h>
#include <console/console.h>

int main() {
    xenos_init(VIDEO_MODE_AUTO);
    console_init();
    printf("Hello Xbox 360\n");
    while (1);
    return 0;
}
