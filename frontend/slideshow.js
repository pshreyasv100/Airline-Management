var followCursor = (function() {
  var s = document.createElement('div');
  var img=document.createElement('img');
  angle=0
  img.src="planeicon3.png"
  s.style.position = 'fixed';
  img.style.height='30px';
  img.style.width='30px';
  img.id='imgid';
  img.style.transform='rotate(-45deg)';
  s.style.transition='rotate ease-out, left 1s ease-in-out, top 1s ease-in-out';
  s.appendChild(img);

  return {
    init: function() {
      document.body.appendChild(s);
    },

    run: function(e) {
	var old = s.getBoundingClientRect();
      var planeCenter=[old.left + 15, old.top + 15];

      var angle = Math.atan2(e.clientX- planeCenter[0], - (e.clientY- planeCenter[1]) )*(180/Math.PI);

      s.style.transform='rotate('+angle+'deg)';
      var e = e || window.event;
      s.style.left  = (e.clientX) + 'px';
      s.style.top = (e.clientY) + 'px';

    }
  };
}());

window.onload = function() {
  followCursor.init();
  document.body.onmousemove = followCursor.run;
}