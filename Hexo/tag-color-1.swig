 <script type="text/javascript">
     var alltags = document.getElementsByClassName('tag-cloud-tags');
     var tags = alltags[0].getElementsByTagName('a');
     for (var i = tags.length - 1; i >= 0; i--) {
       var golden_ratio = 0.618033988749895;
       var s = 0.5;
       var v = 0.999;
       var h = golden_ratio + Math.random()*0.8 - 0.5;
       var h_i = parseInt(h * 6);
       var f = h * 6 - h_i;
       var p = v * (1 - s);
       var q = v * (1 - f * s);
       var t = v * (1 - (1 - f) * s);
       var r, g, b;
       switch (h_i) {
          case 0:
              r = v;
              g = t;
              b = p;
              break;
          case 1:
              r = q;
              g = v;
              b = p;
              break;
          case 2:
              r = p;
              g = v;
              b = t;
              break;
          case 3 :
              r = p;
              g = q;
              b = v;
              break;
          case 4:
              r = t;
              g = p;
              b = v;
              break;
          case 5:
              r = v;
              g = p;
              b = q;
              break;
          default:
              r = 1;
              g = 1;
              b = 1;
        }
       tags[i].style.background = "rgba("+parseInt(r*255)+","+parseInt(g*255)+","+parseInt(b*255)+","+0.5+")";
     }
</script>

<style>
  .tag-cloud-tags{
    text-align: center;
    counter-reset: tags;
  }
  .tag-cloud-tags a{
    display: inline-block;
    border: 0px;
    border-radius: 10px;
    padding: 0px 10px;
    margin: 8px;
    color: rgba(34, 34, 34, 0.8);
    
  }
/* 文字前添加相应的符号，content后的Unicode可以自定义*/
  .tag-cloud-tags a:before{
    font-family: 'Font Awesome 5 Free';
    content: "\f02b";
    font-weight: 900;
  }

  .tag-cloud-tags a:hover{
     box-shadow: 0px 5px 15px 0px rgba(0,0,0,.4);
     transform: scale(1.1);
     transition-duration: 0.15s;
  }
</style>