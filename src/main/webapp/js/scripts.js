include('js/jquery.easing.1.3.js');
include('js/jquery.animate-colors-min.js');
include('js/jquery.backgroundpos.min.js');
include('js/superfish.js');
include('js/switcher.js');
include('js/forms.js');
include('js/googleMap.js');
include('js/spin.js');
include('js/bgStretch.js');
include('js/sImg.js');
include("js/jquery.cycle.all.min.js");
include("js/jquery.jcarousel.min.js");
include('js/jquery.fancybox-1.3.4.pack.js');
include('js/jquery-ui-1.8.17.custom.min.js');



//----Include-Function----
function include(url){ 
  document.write('<script src="'+ url + '" type="text/javascript"></script>'); 
}
//--------global-------------
var isSplash = true;
var isFirst = true;

var spinner;
var mapSpinner;
var bgSpinner;

var MSIE = ($.browser.msie) && ($.browser.version <= 8)
//------DocReady-------------
$(document).ready(function(){ 
    if(location.hash.length == 0){
        location.hash="!/"+$('#content > ul > li:first-child').attr('id');
    }
    ///////////////////////////////////////////////////////////////////

$("body").css({'min-height':'568px'});

///////////////////////////////////////////////////////////////////

	jQuery('#mycarousel-2').jcarousel({
				horizontal: true,
				wrap:false,
				scroll:1,
				easing:'easeInOutBack',
				animation:1200
			});
			
			jQuery('#mycarousel-3').jcarousel({
				horizontal: true,
				wrap:false,
				scroll:1,
				easing:'easeInOutBack',
				animation:1200
			});
			
			jQuery('#mycarousel-4').jcarousel({
				vertical: true,
				wrap:false,
				scroll:1,
				easing:'easeInOutBack',
				animation:1200
			});

     $('ul#menu').superfish({
          delay:       800,
          animation:   {height:'show'},
          speed:       600,
          autoArrows:  false,
         dropShadows: false,
         	onInit: function(){
  				$("#menu > li > a").each(function(index){
  					var conText = $(this).find('.mText').text();
                      $(this).append(""); 
                       
  				})
  	 		}
        });
});
  
 //------WinLoad-------------  
$(window).load(function(){  


 $(".slogans>li>p").stop().css({opacity:.5});

   
   $('.fancyPic').fancybox({'titlePosition': 'inside', 'overlayColor':'#000'}); 
   $('.fancyPic2').fancybox({'titlePosition': 'inside', 'overlayColor':'#000'}); 

   
   if(!MSIE){ $('.fancyPic').find(".zoomSp").fadeTo(500, 0)}else{ $('.fancyPic').find(".zoomSp").css({"display":"none"})  }
   if(!MSIE){ $('.fancyPic2').find(".zoomSp2").fadeTo(500, 0)}else{ $('.fancyPic2').find(".zoomSp2").css({"display":"none"})  }
    $('.fancyPic').hover(function(){
    if(!MSIE){ 
        $(this).find(".zoomSp").stop().fadeTo(500, 1)
		
    }else{
        $(this).find(".zoomSp").css({"display":"block"})   
		
    }
    },
     function(){
            if(!MSIE){ 
                $(this).find(".zoomSp").stop().fadeTo(500, 0)
		
            }else{
                     $(this).find(".zoomSp").css({"display":"none"})   
				   
            }   
        }
		
 )   
 
  $('.fancyPic2').hover(function(){
    if(!MSIE){ 
      
		 $(this).find(".zoomSp2").stop().fadeTo(500, 1)
    }else{
     
		$(this).find(".zoomSp2").css({"display":"block"})   
    }
    },
     function(){
            if(!MSIE){ 
              
				 $(this).find(".zoomSp2").stop().fadeTo(500, 0)
            }else{
                 
					 $(this).find(".zoomSp2").css({"display":"none"})    
            }   
        }
		
 )   
 
   

	
	
	$('#prev,.prev').hover(
        function(){
           // $(this).children('span').stop().animate({'backgroundPosition':'0 bottom'},350,'easeOutExpo');
        },
        function(){
          //  $(this).children('span').stop().animate({'backgroundPosition':'0 0'},500,'easeOutExpo');
        }
    );
    $('#next,.next').hover(
        function(){
           // $(this).children('span').stop().animate({'backgroundPosition':'0 bottom'},350,'easeOutExpo');
        },
        function(){
           // $(this).children('span').stop().animate({'backgroundPosition':'0 0'},500,'easeOutExpo');
        }
    );
	
	if ($('.slogans').length) {
        $('.slogans').cycle({
            fx: 'fade',
            speed: 1000,
    		timeout: 0,              
    		easing: 'swing',
    		cleartypeNoBg: true,
            rev:0,
            startingSlide: 0,
            wrap: true,
            next: '#next',
    		prev: '#prev'
  		})}
		
		
		setTimeout(function(){
        $('#bgStretch').bgStretch({
    	   align:'leftTop',
           autoplay:true,
           navs:$('.pagin').navs({})
        })
        .sImg({
            sleep: 1000,
            spinner:$('<div class="bg-spinner" />').css({opacity:.5}).stop().hide(3000)
        });
        var img=0;
        var num=$('.pagin li').length-1;
        $('#prev').click(function(){
            img=img-1;
    		if (img<0) img=img+num+1;
    		$.when($('#bgStretch img')).then(function(){
    			$('.pagin li a').eq(img).click();
    		})
    		return false
    	});
    	$('#next').click(function(){
    		img=img+1;
    		if (img>num) img=img-num-1;
    		$.when($('#bgStretch img')).then(function(){
    			$('.pagin li a').eq(img).click();
    		})
            return false
    	});
    },0);
   
		

       
var menuItems = $('#menu >li'); 
var currentIm = 0;
var lastIm = 0;



///////////////////////////////////////////////
    var navItems = $('.menu > ul >li');

    //$('.menu > ul >li').eq(0).css({'display':'none'});
	var content=$('#content'),
		nav=$('.menu');
		//nav2=$('.menu2');

    	$('#content').tabs({
		preFu:function(_){
			_.li.css({left:"-1700px",'display':'none'});
		}
		,actFu:function(_){			
			if(_.curr){
				_.curr.css({'display':'block', left:'-1700px'}).stop().delay(400).animate({left:"0px"},800,'easeOutCubic');
                if ((_.n == 0) && ((_.pren>0) || (_.pren==undefined))){splashMode();}
                if (((_.pren == 0) || (_.pren == undefined)) && (_.n>0) ){contentMode(); }
            }
			if(_.prev){
			     _.prev.stop().animate({left:'1700px'},600,'easeInOutCubic',function(){_.prev.css({'display':'none'});} );
             }
		}
	})
    

    function splashMode(){
        isSplash = true;
		
			 $('#bgStretch').stop(true).delay(100).animate({opacity:1}, 1000, 'easeOutCubic');
			$('footer').stop(true).delay(100).animate({'backgroundPosition':'0 0px'}, 500, 'easeOutCubic');
			
			setTimeout(function(){
				$("body").css({'min-height':'568px'});
			
			centrRepos();   },200);

			
            
            setTimeout(
                function(){
                    $(".main").css({"z-index":1})
       
                }, 800)
    }
    
    function contentMode(){  
        isSplash = false;
			 $('#bgStretch').stop(true).delay(300).animate({opacity:.5}, 900, 'easeOutCubic');
			$('footer').stop(true).delay(100).animate({'backgroundPosition':'0 10px'}, 500, 'easeOutCubic');
              
              $(".main").css({"z-index":2})
			  setTimeout(function(){
			  $("body").css({'min-height':'780px'});
			  centrRepos();
			     },200);
   
    }		
    
    
	nav.navs({
			useHash:true,
             hoverIn:function(li){
				
                $(".mText", li).stop(true).animate({opacity:.5}, 600, 'easeOutCubic');


                   // if(($.browser.msie) && ($.browser.version <= 8)){}else{}
             },
                hoverOut:function(li){
                    if ((!li.hasClass('with_ul')) || (!li.hasClass('sfHover'))) {
                        $(".mText", li).stop(true).animate({opacity:1}, 600, 'easeOutCubic');

                    } 
                } 
		})

		.navs(function(n){			
			$('#content').tabs(n);
		})
        


//////////////////////////////////////////
   	var h_cont=400;
	function centrRepos() {
		var h=$(window).height();
		if (h>(h_cont+40)) {
			m_top=~~(h-h_cont)/2;
			h_new=h;
		} else {
			m_top=20;
			h_new=h_cont+40;
		}
        
            if(m_top > 230){
		          $('.center').stop().animate({paddingTop:m_top}, 800, 'easeOutExpo');
          }else{
            	if(isSplash == true){
				setTimeout(function(){
					$('.center').stop().animate({paddingTop:"120px"}, 800, 'easeOutExpo');
					$("body").css({'min-height':'600px'});
					   },200);
				
					} else{
						setTimeout(function(){
            			$('.center').stop().animate({paddingTop:"230px"}, 800, 'easeOutExpo');
						$("body").css({'min-height':'780px'});
						 },200);
					}
          }
        
	}
	centrRepos();
    ///////////Window resize///////
    
    function windowW() {
 return (($(window).width()>=parseInt($('body').css('minWidth')))?$(window).width():parseInt($('body').css('minWidth')));
}
    
    
	$(window).resize(function(){
        centrRepos();
         
        }
    );

    } //window function
) //window load


