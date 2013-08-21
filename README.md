ScenarioPlayer
================
tiny scripting utility for Processing.org.

how to use
================
data/scenario.txt
<pre>
    1  testFunc
    3  testFunc2 s:string1 s:string2
    7  testFunc3 i:123 f:2.0 s:string3
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

    // call at tick=1, 10
    void testFunc() {
      println("testFunc()");
    }

    // call at tick=3
    void testFunc2(String arg1, String arg2) {
      println("testFunc2() : arg1="+arg1+","arg2="+arg2);
    }

    // call at tick=7
    void testFunc3(int arg1, float arg2, String arg3) {
      println("testFunc3() : arg1="+arg1+","arg2="+arg2+",arg3="+arg3);
    }
</pre>


