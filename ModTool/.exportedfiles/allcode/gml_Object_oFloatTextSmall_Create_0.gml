if (!variable_instance_exists(id, "goingTop"))
    goingTop = true;

xInit = x;
yInit = y;
theText = scribble(label).align(1, 0);
timerFloat = new myTimer(id, 0.75, undefined, undefined, "ease-out");
timerFloat.run();
