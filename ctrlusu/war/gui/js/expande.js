
var expanded=new Object;
var expanding=new Object;
var tracker=new Object;
var expc=[];
var expander_active=0;
var expander_on=0;

function pop_start(){
if(!expander_on){return }
if(!self.YAHOO){return }

for(var C=0;C<expc.length;C++)
{
var D=document.getElementById(expc[C]);
var A=D.getElementsByTagName("td");
for(var B=0;B<A.length;B++){
if(YAHOO.util.Dom.hasClass(A[B],"exptextboxpre")){
A[B].className="exptxtbox"
}
else{
if(YAHOO.util.Dom.hasClass(A[B],"maindisp"))
{
A[B].className="mainhide"}
else{
if(YAHOO.util.Dom.hasClass(A[B],"mainhide"))
{A[B].className="maindisp"}}}}}
expander_active=1;
setInterval("handleOuts()",250);
YAHOO.util.Event.addListener(document,"mousemove",handleOuts_wrapper)}

function getTime(){var A=new Date();return(A.getTime())}
function register_acct(A){alert("Deprcated call to register_acct, please remove!")}
function register_expander_container(A){
expander_on=1;expc.push(A)}
function register_expander_obj(A){expander_on=1}
function trackAnim(A){
if(!A){return }delete tracker[A.id];return false}

function handleOuts(B){if(!expander_on){return }var A=getTime();for(var C in tracker){if(B||(tracker[C]>0&&(tracker[C]+300)<A)){if(expanding[C]){tracker[C]=getTime();continue}delete tracker[C];

runAnimOut_single(document.getElementById(C))
}}}



function runAnimOut(A){
 if(!expander_on||!A){
   return 
 }
 
 var B=A.id;
 
 if(!expanded[B]){
 tracker[B]=0;return 
 }
 
 tracker[B]=getTime()
 }
 
 function unshadow(A){
 if(!expander_on){
 return 
 }
 
 var B=A.split("_");
 
 if(B[B.length-1]=="0")
 {
  B.pop()
 }
 else{
 return A
 }
 return B.join("_")
 }
 
 function shadow(A){return A+"_0"}
 function runAnimOut_single(J){
   if(!expander_on||!J)
    { return } 
    var I=J.id;
    if(!expanded[I])
    {return }
    if(expanding[I]){
      tracker[I]=getTime();return 
     }
     var A=shadow(J.id);
     var C=YAHOO.util.Dom.get(A);
     var F=(C.getElementsByTagName("img"))[0];
     var D=(J.getElementsByTagName("img"))[0];
     var B=YAHOO.util.Dom.getXY(J);
     var E={
      width:{to:J.offsetWidth},
      height:{to:J.offsetHeight},
      points:{to:[B[0],B[1]]},
      fontSize:{from:11,to:7,unit:"px"}
      };
      var G=function(){
       expanded[I]=0;
       if(!C||!C.parentNode){return }
       C.parentNode.removeChild(C)};
       if(D){
        var H={width:{to:D.offsetWidth},height:{to:D.offsetHeight}};
        var L=new YAHOO.util.Motion(F,H,0.4,YAHOO.util.Easing.easeOut);
        L.animate()
       }
       var K=new YAHOO.util.Motion(C,E,0.4,YAHOO.util.Easing.easeOut);
       if(!expanded[I]){return }K.onComplete.subscribe(G);K.animate()}
       
       function runAnimOver_single(O,E){
       			if(!expander_on||!O){
       				return 
       			}
       			var N=O.id;
       			if(expanded[N]||expanding[N])
       			{	
       				return 
       			}
       			expanding[N]=1;
       			var A=YAHOO.util.Dom.getXY(O);
       			var B=document.createElement("div");
       			var C=O.id+"_0";
       			B.id=C;
       			B.className="expbox";
       			B.innerHTML=O.innerHTML;
       			document.getElementById("divgen_expand").appendChild(B);
       			YAHOO.util.Event.addListener(B,"mousemove",trackAnim_wrapper,this);
       			YAHOO.util.Event.addListener(B,"mouseout",runAnimOut_wrapper,this);
       			handleOuts(1);
       			B.style.border="solid 1px";
       			B.style.background="#fff";
       			B.style.position="absolute";
       			B.style.zIndex=30;
       			B.style.left=A[0]+"px";
       			B.style.top=A[1]+"px";
       			var J=(A[1]-O.offsetHeight/2);
       			var I=(A[0]-O.offsetWidth/2);
       			var L={width:{to:(O.offsetWidth*2)},height:{to:(O.offsetHeight*2)},points:{to:[I,J]},fontSize:{from:7,to:11,unit:"px"}};
       			var H=(B.getElementsByTagName("img"))[0];
       			var D=(O.getElementsByTagName("img"))[0];
       			var M=function(){if(tracker[N]==null){tracker[N]=0}expanded[N]=1;expanding[N]=0};
       			var G=new YAHOO.util.Motion(B,L,0.4);G.onComplete.subscribe(M);
       			G.animate();
       			if(H&&D){
       				var K={width:{to:(D.offsetWidth*2)},height:{to:(D.offsetHeight*2)}};
       				var F=new YAHOO.util.Motion(H,K,0.4);
       				F.animate()
       			}
       		}
       		function runAnimOver(A)	{
       			alert('entrou');
       			if(!expander_on||!A){
       				return 
       			}
       			runAnimOver_single(document.getElementById(unshadow(A.id)))
       		}
       		function trackAnim_wrapper(A){
       			if(!expander_on){
       				return 
       			}
       			trackAnim(document.getElementById(unshadow(this.id)))
       		}
       		function runAnimOut_wrapper(A){
       			if(!expander_on){
       				return 
       			}
       			runAnimOut(document.getElementById(unshadow(this.id)))
       		}
       		function handleOuts_wrapper(){
       			if(!expander_on){
       				return 
       			}
       			handleOuts(1)
       		}
