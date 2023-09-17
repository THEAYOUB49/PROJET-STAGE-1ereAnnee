function openNav() {
    $("#sideMenu").width("250px");
  }
  
  function closeNav() {
    $("#sideMenu").width("0");
  }

  

  $(window).on('resize', function() {
    var win = $(this);
  
    if (win.width() >= 800) {
      $('#searchBar').width('576px');
    } else if (win.width() >= 600) {
      $('#searchBar').width('400px');
    } else {
      $('#searchBar').width('100px');
    }
  });

  


  $(document).ready(function() {
    var menu = $('#menu');
  
    function updateArrows() {
      var scrollLeft = menu.scrollLeft();
      var scrollWidth = menu.prop('scrollWidth');
      var clientWidth = menu.width();
  
      if (scrollLeft <= 0) {
        $("#leftArrow").hide();
      } else {
        $("#leftArrow").show();
      }
  
      if (scrollLeft >= scrollWidth - clientWidth) {
        $("#rightArrow").hide();
      } else {
        $("#rightArrow").show();
      }
    }
  
    $("#rightArrow").click(function() {
      menu.animate({ scrollLeft: menu.scrollLeft() + 200 }, 800, updateArrows);
    });
  
    $("#leftArrow").click(function() {
      menu.animate({ scrollLeft: menu.scrollLeft() - 200 }, 800, updateArrows);
    });
  
    menu.on('wheel', function(e) {
      e.preventDefault();
  
      var delta = e.originalEvent.deltaY || -e.originalEvent.wheelDelta;
      var scrollLeft = menu.scrollLeft();
  
      if (delta > 0) {
        menu.scrollLeft(scrollLeft + 200);
      } else {
        menu.scrollLeft(scrollLeft - 200);
      }
  
      updateArrows();
    });
  
    updateArrows();
  });
  