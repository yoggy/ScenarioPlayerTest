ScenarioPlayer
================
tiny scripting utility for Processing.org.

how to use
================
data/scenario.txt
<pre>
    1  testFunc
    3  testFunc2 string1 string2
    7  testFunc2 string3 string4
    10 testFunc
</pre>

SenalioPlayerTest.pde
<pre>
    SenarioPlayer scenario;
    int tick = 0;

    void setup() {
      scenario = new SenarioPlayer(this);
      if (scenario.load("scenario.txt") == false) exit();
      println(scenario.toString());
    }
    
    void draw() {
      senario.enter(tick);
      tick ++:
    }

    void testFunc() {
      println("testFunc()");
    }

    void testFunc2(String arg1, String arg2) {
      println("testFunc2() : arg1="+arg1+","arg2="+arg2);
    }
</pre>


