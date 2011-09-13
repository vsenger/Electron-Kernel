#include "ElectronKernel.h"

void setup()
{
  Serial.begin(9600);
  Kernel.setup();
  Kernel.registerMode("blink");
  Kernel.registerTask(blinkLeds);
  Kernel.registerMode("readSensor");
  Kernel.registerTask(readSensor);
  Kernel.registerMode("playMusic");
  Kernel.registerTask(playMusic);
}

void loop()
{
  Kernel.loop();
}

void blinkLeds() { Serial.println("blink mode");
}
void readSensor() { Serial.println("read sensor mode");
}
void playMusic() { Serial.println("play music mode");
}



