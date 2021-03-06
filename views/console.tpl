<style>
div.console {
  cursor: text;
  counter-reset: input;
  margin: 0px;
  padding: 10px;
  background: lavenderblush;
  -moz-font-smoothing: antialiased;
  -webkit-font-smoothing: antialiased;
  font-smoothing: antialiased;
  background: #002728;
  height: 35%;
  overflow: scroll;
  overflow-x: hidden;
}

.terminal {
  position: relative;
  margin: 0;
  padding: 0;
  font-family: Menlo, Courier New;
  font-size: 18px;
  text-rendering: optimizeLegibility;
  font-weight: bold;
  color: white;
  height: 100%;
  width: 100%;
}
.terminal > .terminal--input {
  counter-increment: input;
}
.terminal--inputbox {
  background: inherit;
  border: none;
  width: 100%;
}
.terminal > .terminal--input:before {
  content: "[" counter(input) "] $ ";
}
.terminal > .terminal--input:last-child:after {
  -webkit-animation: blink 0.75s infinite;
  -moz-animation: blink 0.75s infinite;
  -o-animation: blink 0.75s infinite;
  animation: blink 0.75s infinite;
  margin-left: 5px;
  width: 28px;
  content: "|";
  background: white;
}
.terminal > .terminal--output.is-console:before {
  margin-right: 10px;
  content: ">";
}
.terminal > .terminal--output.is-not-defined:before {
  content: "undefined";
  color: rgba(255, 255, 255, 0.5);
}

.terminal p {
  margin-bottom: 0px;
  line-height: normal;
}

@-webkit-keyframes blink {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@-moz-keyframes blink {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@-ms-keyframes blink {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@keyframes blink {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}

.left-inner-addon {
    display: flex;
}
.left-inner-addon input {
    padding-left: 22px;
}
.left-inner-addon span {
    position: relative;
    pointer-events: none;
}

</style>
<div>
<div class=" terminal " id="terminal">
  <p class=" terminal--header ">Listening on {{sTTY}} at {{sBaud}}</p>
<!--  <p class=" terminal--input ">whoami</p>
  <p class=" terminal--output ">Rafael Rinaldi</p>
  <p class=" terminal--output is-console ">var sprintf = require('util').format;</p>
  <p class=" terminal--output is-not-defined "></p>
  <p class=" terminal--output is-console ">var msg = "CSS3 is %s!";</p>
  <p class=" terminal--output is-not-defined "></p>
  <p class=" terminal--output is-console ">console.log(sprintf(msg, 'awesome'));</p>
  <p class="terminal--output">CSS3 is awesome!</p>
  <p class=" terminal--output is-not-defined "></p>
  <p class=" terminal--output is-console "></p>
  <p class=" terminal--output ">(^C again to quit)</p> -->
</div>
</div>
<div>
<div class="terminal left-inner-addon">
    <span>$</span>
    <input id="consoleBox" type="text" class="terminal--inputbox" placeholder="cmd" />
</div>
</div>

<script>
  WebSocketInit();
</script>