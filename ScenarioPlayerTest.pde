SenarioPlayer scenario;
PFont font;

int tick = 0;

void setup() {
  scenario = new SenarioPlayer(this);
  if (scenario.load("scenario.txt") == false) {
    println("scenario.load() failed...filename=scenario.txt");
    exit();
  }
  println(scenario.toString());
  font = createFont("Impact", 32);

  frameRate(2);
}

void draw() {
  background(0);
  textFont(font);
  text("tick=" + tick, 10, 30);
  
  scenario.enter(tick);
  
  tick ++;
  if (tick >= scenario.getMaxTick() + 1) {
    tick = 0;
    scenario.rewind();
  }
}

void printTest0() {
  println("printTest0: ");
}

void printTest1(String arg1) {
  println("printTest1: arg1=" + arg1);
}

void printTest2(String arg1, String arg2) {
  println("printTest2: arg1=" + arg1 + ", arg2=" + arg2);
}

void printTest3(String arg1, String arg2, String arg3) {
  println("printTest3: arg1=" + arg1 + ", arg2=" + arg2 + ", arg3=" + arg3);
}

