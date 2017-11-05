document.addEventListener("DOMContentLoaded", function(){
  var canvas = document.getElementById('mycanvas');
  canvas.width = 500;
  canvas.height = 500;

  var ctx = canvas.getContext('2d');

  ctx.fillStyle = 'purple';
  ctx.fillRect(0, 0, 500, 500);


  ctx.beginPath();
  ctx.arc(100, 100, 50, 0, 2 * Math.PI, true);
  ctx.strokeStyle = 'pink';
  ctx.lineWidth = 14;
  ctx.stroke();
  ctx.fillStyle = 'blue';
  ctx.fill();

  ctx.fillStyle = '#8e1616';
  ctx.beginPath();
  ctx.moveTo(300, 100);
  ctx.lineTo(40, 500);
  ctx.lineTo(90, 300);
  ctx.lineTo(150, 600);
  ctx.closePath();
  ctx.fill();
  ctx.strokeStyle = 'gold'
  ctx.lineWidth = 11;
  ctx.stroke();
});
