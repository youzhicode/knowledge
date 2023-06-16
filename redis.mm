<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1686801921160" ID="ID_119412822" MODIFIED="1686801925863" TEXT="redis">
<node CREATED="1686801967697" ID="ID_25498106" MODIFIED="1686801970492" POSITION="right" TEXT="&#x6982;&#x5ff5;">
<node CREATED="1686802183787" ID="ID_1890995578" MODIFIED="1686802344794" TEXT="redis&#x662f;&#x4e00;&#x4e2a;key-value &#x7684; nosql&#x5b58;&#x50a8;&#x7cfb;&#x7edf;&#x3002;redis&#x652f;&#x6301;&#x591a;&#x79cd;&#x6570;&#x636e;&#x7c7b;&#x578b;&#x7684;value&#xff0c;&#x5305;&#x62ec;string&#xff0c;list&#xff0c;set&#xff0c;zset&#xff08;sorted set -- &#x6709;&#x5e8f;&#x96c6;&#x5408;&#xff09;&#x548c;hash&#x3002;&#x4e3a;&#x4e86;&#x4fdd;&#x8bc1;&#x6548;&#x7387;&#xff0c;redis&#x5bf9;&#x6570;&#x636e;&#x7684;&#x64cd;&#x4f5c;&#x90fd;&#x662f;&#x57fa;&#x4e8e;&#x5185;&#x5b58;&#xff0c;Redis&#x4f1a;&#x5468;&#x671f;&#x6027;&#x7684;&#x628a;&#x6570;&#x636e;&#x6301;&#x4e45;&#x5316;&#x5230;&#x786c;&#x76d8;&#x4e2d;&#xff0c;&#x5e76;&#x4e14;&#x5728;&#x6b64;&#x57fa;&#x7840;&#x4e0a;&#x5b9e;&#x73b0;master-slave&#x540c;&#x6b65;"/>
</node>
<node CREATED="1686801971033" ID="ID_1138264309" MODIFIED="1686801975995" POSITION="right" TEXT="&#x4f7f;&#x7528;&#x573a;&#x666f;">
<node CREATED="1686802372258" ID="ID_750728249" MODIFIED="1686802436117" TEXT="&#x57fa;&#x4e8e;&#x5185;&#x5b58;&#x7684;nosql&#x5b58;&#x50a8;&#x7cfb;&#x7edf;&#xff08;&#x6700;&#x57fa;&#x7840;&#x7684;&#x7528;&#x6cd5;&#xff09;"/>
<node CREATED="1686802379747" ID="ID_669277151" MODIFIED="1686802387141" TEXT="&#x53d1;&#x5e03;&#x8ba2;&#x9605;&#x6d88;&#x606f;&#x7cfb;&#x7edf;">
<node CREATED="1686802442248" ID="ID_1951510161" MODIFIED="1686802643636" TEXT="Redis&#x652f;&#x6301;&#x53d1;&#x5e03;&#x8ba2;&#x9605;&#x8005;&#x529f;&#x80fd;&#xff0c;&#x5305;&#x62ec;&#x4e09;&#x90e8;&#x5206;&#xff1a;&#x53d1;&#x5e03;&#x8005;&#xff0c;&#x8ba2;&#x9605;&#x8005;&#xff0c;channel"/>
<node CREATED="1686803252411" ID="ID_1261459000" MODIFIED="1686803257446" TEXT="&#x5e38;&#x7528;&#x547d;&#x4ee4;&#xff1a;">
<node CREATED="1686803259265" ID="ID_1884949790" MODIFIED="1686803300018" TEXT="subscribe channel [channel ...] &#x8ba2;&#x9605;&#x901a;&#x9053;&#x6d88;&#x606f;"/>
<node CREATED="1686803300716" ID="ID_408780146" MODIFIED="1686803341199" TEXT="psubscribe pattern [pattern ...] &#x6309;&#x6a21;&#x5f0f;&#x5339;&#x914d;&#x8ba2;&#x9605;&#x4e00;&#x4e2a;&#x6216;&#x591a;&#x4e2a; &#x901a;&#x9053; &#x6d88;&#x606f;"/>
<node CREATED="1686803341609" ID="ID_44587775" MODIFIED="1686803357621" TEXT="PUBLISH channel message &#x5c06;&#x6d88;&#x606f;&#x63a8;&#x9001;&#x5230;&#x6307;&#x5b9a;&#x901a;&#x9053;"/>
<node CREATED="1686803358209" ID="ID_551823687" MODIFIED="1686803378074" TEXT="PUNSUBSCRIBE [pattern [pattern ...]] &#x9000;&#x8ba2;&#x6240;&#x6709;&#x7ed9;&#x5b9a;&#x6a21;&#x5f0f;&#x7684;&#x901a;&#x9053;"/>
<node CREATED="1686803378569" ID="ID_1038211724" MODIFIED="1686803392968" TEXT="UNSUBSCRIBE [channel [channel ...]] &#x9000;&#x8ba2;&#x6307;&#x5b9a;&#x901a;&#x9053;&#x6d88;&#x606f;"/>
</node>
</node>
<node CREATED="1686802387434" ID="ID_1090073074" MODIFIED="1686802392257" TEXT="&#x5b9a;&#x65f6;&#x5668;&#xff0c;&#x8ba1;&#x6570;&#x5668;">
<node CREATED="1686803433906" ID="ID_600841904" MODIFIED="1686803436601" TEXT="&#x5b9a;&#x65f6;&#x5668;">
<node CREATED="1686803438208" ID="ID_1577343036" MODIFIED="1686803441080" TEXT="&#x670d;&#x52a1;&#x5668;&#x7ea7;&#x522b;">
<node CREATED="1686803450077" ID="ID_1980049857" MODIFIED="1686803457711" TEXT="&#x53ef;&#x4ee5;&#x5728;&#x4efb;&#x4f55;&#x7ed9;&#x5b9a;&#x7684;&#x65f6;&#x95f4;&#x6267;&#x884c;&#x4efb;&#x52a1;"/>
</node>
<node CREATED="1686803441322" ID="ID_652760096" MODIFIED="1686803443738" TEXT="&#x5ba2;&#x6237;&#x7aef;&#x7ea7;&#x522b;">
<node CREATED="1686803460656" ID="ID_382678666" MODIFIED="1686803470361" TEXT="&#x53ea;&#x6709;&#x5728;&#x94fe;&#x63a5;&#x4e86;&#x670d;&#x52a1;&#x5668;&#x4e4b;&#x540e;&#xff0c;&#x624d;&#x80fd;&#x6267;&#x884c;&#x5b9a;&#x65f6;&#x4efb;&#x52a1;"/>
</node>
</node>
</node>
</node>
<node CREATED="1686801976421" ID="ID_1795036756" MODIFIED="1686801980258" POSITION="right" TEXT="&#x652f;&#x6301;&#x7684;&#x6570;&#x636e;&#x7ed3;&#x6784;">
<node CREATED="1686804861591" ID="ID_88025103" MODIFIED="1686804865107" TEXT="string">
<node CREATED="1686805130835" ID="ID_1807189919" MODIFIED="1686805138978" TEXT="set&#xff1a;&#x8bbe;&#x7f6e;&#x503c;"/>
<node CREATED="1686805139236" ID="ID_6922131" MODIFIED="1686805165541" TEXT="setnx&#xff1a;&#x5982;&#x679c;key&#x4e0d;&#x5b58;&#x5728;&#xff0c;&#x5219;&#x521b;&#x5efa;key&#x5e76;&#x8d4b;&#x503c;"/>
<node CREATED="1686805192039" ID="ID_258699449" MODIFIED="1686805201665" TEXT="mset&#xff1a;&#x6279;&#x91cf;&#x8bbe;&#x7f6e;key"/>
<node CREATED="1686805202425" ID="ID_1900615052" MODIFIED="1686805226271" TEXT="msetnx&#xff1a;&#x6279;&#x91cf;&#x8bbe;&#x7f6e;key&#xff0c;&#x5728;key&#x4e0d;&#x5b58;&#x5728;&#x7684;&#x65f6;&#x5019;"/>
<node CREATED="1686805226567" ID="ID_78149709" MODIFIED="1686805243432" TEXT="getset&#xff1a;&#x8bbe;&#x7f6e;&#x65b0;&#x503c;&#x5e76;&#x4e14;&#x8fd4;&#x56de;&#x65e7;&#x503c;"/>
<node CREATED="1686805344545" ID="ID_801640301" MODIFIED="1686805358852" TEXT="get&#xff1a;&#x83b7;&#x53d6;&#x6307;&#x5b9a;key&#x7684;&#x503c;"/>
<node CREATED="1686805359274" ID="ID_329361627" MODIFIED="1686805371860" TEXT="mget&#xff1a;&#x6279;&#x91cf; &#x83b7;&#x53d6;&#x6307;&#x5b9a; keys&#x7684;&#x503c;"/>
<node CREATED="1686805381167" ID="ID_1397181356" MODIFIED="1686805391899" TEXT="exists&#xff1a;&#x5224;&#x65ad;&#x6307;&#x5b9a;&#x7684;key&#x662f;&#x5426;&#x5b58;&#x5728;"/>
<node CREATED="1686805411481" ID="ID_135181072" MODIFIED="1686805423974" TEXT="append&#xff1a;&#x6839;&#x636e;key&#x503c;&#x8fdb;&#x884c;&#x8ffd;&#x52a0;"/>
<node CREATED="1686805466100" ID="ID_1314040115" MODIFIED="1686805482134" TEXT="strlen&#xff1a;&#x83b7;&#x53d6;&#x6307;&#x5b9a;key&#x7684;value&#x957f;&#x5ea6;"/>
<node CREATED="1686805493622" ID="ID_814504683" MODIFIED="1686805536736" TEXT="setrange: &#x6839;&#x636e;&#x8d77;&#x6b62;&#x4e0b;&#x6807;&#xff0c;&#x8bbe;&#x7f6e;&#x503c;"/>
<node CREATED="1686805537307" ID="ID_130176252" MODIFIED="1686805552804" TEXT="getrange&#xff1a; &#x6839;&#x636e;&#x8d77;&#x6b62;&#x4e0b;&#x8868;&#xff0c;&#x83b7;&#x53d6;&#x503c;"/>
<node CREATED="1686805792203" ID="ID_1281471360" MODIFIED="1686805830084" TEXT="setex&#xff1a;&#x7ed9;&#x6307;&#x5b9a;key&#x8bbe;&#x7f6e;&#x503c;&#xff0c;&#x5e76;&#x4e14;&#x8bbe;&#x7f6e;&#x8fc7;&#x671f;&#x65f6;&#x95f4;,&#x5355;&#x4f4d;s/&#x79d2;"/>
<node CREATED="1686805831252" ID="ID_176677139" MODIFIED="1686805852591" TEXT="psetex&#xff1a;&#x7ed9;&#x6307;&#x5b9a;&#x7684;key&#x8bbe;&#x7f6e;&#x503c;&#xff0c;&#x5e76;&#x4e14;&#x8bbe;&#x7f6e;&#x8fc7;&#x671f;&#x65f6;&#x95f4;&#xff0c;&#x5355;&#x4f4d;ms/&#x6beb;&#x79d2;"/>
<node CREATED="1686805853017" ID="ID_1581961815" MODIFIED="1686805868296" TEXT="incr&#xff1a;int&#x7c7b;&#x578b;&#xff0c;&#x7ed9;key&#x81ea;&#x589e;"/>
<node CREATED="1686805868591" ID="ID_697156378" MODIFIED="1686805901322" TEXT="decr&#xff1a;int&#x7c7b;&#x578b;&#xff0c;&#x6307;&#x5b9a;key&#x81ea;&#x51cf;"/>
<node CREATED="1686805901917" ID="ID_904598536" MODIFIED="1686806018878" TEXT="incrby&#xff1a;int&#x7c7b;&#x578b;&#xff0c;&#x6839;&#x636e;&#x6b65;&#x957f;&#x8fdb;&#x884c; key&#x7684;&#x589e;&#x52a0;&#xff08;i+n&#xff09;"/>
<node CREATED="1686805940899" ID="ID_1041850643" MODIFIED="1686806011970" TEXT="decrby&#xff1a;int&#x7c7b;&#x578b;&#xff0c;&#x6839;&#x636e;&#x6b65;&#x957f;&#x8fdb;&#x884c;key&#x7684;&#x81ea;&#x51cf;&#xff08;i-n&#xff09;"/>
<node CREATED="1686806026900" ID="ID_1520913365" MODIFIED="1686806051247" TEXT="incrbyfloat&#xff1a;float&#x7c7b;&#x578b;&#xff0c;&#x6839;&#x636e; float&#x503c;&#xff0c;&#x8fdb;&#x884c;&#x589e;&#x51cf;&#xff08;&#x6b63;&#x8d1f;&#xff09;"/>
</node>
<node CREATED="1686804865630" ID="ID_1416042234" MODIFIED="1686804866859" TEXT="list">
<node CREATED="1686806228085" ID="ID_1270364691" MODIFIED="1686806291734" TEXT="&#x53ef;&#x4ee5;&#x6784;&#x5efa;&#x4e24;&#x79cd;&#x6570;&#x636e;&#x7c7b;&#x578b;">
<node CREATED="1686806292811" ID="ID_1157465386" MODIFIED="1686806306119" TEXT="&#x5de6;&#x8fdb;&#x53f3;&#x51fa;&#xff1a;&#x961f;&#x5217;"/>
<node CREATED="1686806306799" ID="ID_323136300" MODIFIED="1686806315276" TEXT="&#x5de6;&#x8fdb;&#x5de6;&#x51fa;&#xff1a;&#x6808;"/>
</node>
<node CREATED="1686806327043" ID="ID_473959387" MODIFIED="1686806329895" TEXT="&#x57fa;&#x672c;&#x64cd;&#x4f5c;&#xff1a;">
<node CREATED="1686806331042" ID="ID_1363514459" MODIFIED="1686806335729" TEXT="&#x589e;">
<node CREATED="1686806343580" ID="ID_835828090" MODIFIED="1686806359730" TEXT="plush:&#x5de6;&#x8fb9;&#x63a8;&#x8fdb;&#x4e00;&#x4e2a;&#x6216;&#x8005;&#x591a;&#x4e2a;&#x503c;"/>
<node CREATED="1686806365381" ID="ID_461429325" MODIFIED="1686806390012" TEXT="lpushx&#xff1a;&#x5de6;&#x8fb9;&#x63a8;&#x8fdb;&#x4e00;&#x4e2a;&#x6216;&#x8005;&#x591a;&#x4e2a;&#x503c;&#xff0c;&#x5f53;&#x5217;&#x8868;&#x4e0d;&#x5b58;&#x5728;&#x65f6;&#xff0c;&#x65e0;&#x6548;"/>
<node CREATED="1686806407437" ID="ID_905650535" MODIFIED="1686806416005" TEXT="rpush&#xff1a;&#x53f3;&#x8fb9;&#x63a8;&#x8fdb;&#x4e00;&#x4e2a;&#x503c;"/>
<node CREATED="1686806416241" ID="ID_1893169008" MODIFIED="1686806430235" TEXT="rpushx&#xff1a;&#x53f3;&#x8fb9;&#x63a8;&#x8fdb;&#x4e00;&#x4e2a;&#x503c;&#xff0c;&#x5f53;&#x5217;&#x8868;&#x4e0d;&#x5b58;&#x5728;&#x65f6;&#xff0c;&#x65e0;&#x6548;"/>
<node CREATED="1686806432460" ID="ID_129516099" MODIFIED="1686806447623" TEXT="linsert&#xff1a;&#x5728;&#x67d0;&#x4e2a;&#x503c;&#x7684;&#x524d;&#x9762;&#x6216;&#x8005;&#x540e;&#x9762;&#x63d2;&#x5165;&#x4e00;&#x4e2a;&#x503c;"/>
</node>
<node CREATED="1686806336129" ID="ID_1464770075" MODIFIED="1686806337592" TEXT="&#x5220;">
<node CREATED="1686806657664" ID="ID_1330652962" MODIFIED="1686806681371" TEXT="lrem&#xff1a;&#x5220;&#x9664;&#x6307;&#x5b9a;&#x503c;&#xff0c;&#x91cd;&#x590d;&#x503c;&#x6839;&#x636e;&#x6307;&#x5b9a;&#x6570;&#x91cf;&#x5220;&#x9664;"/>
<node CREATED="1686806681975" ID="ID_130795235" MODIFIED="1686806693262" TEXT="lpop&#xff1a;&#x5934;&#x90e8;&#x5f39;&#x51fa;&#x4e00;&#x4e2a;&#x503c;"/>
<node CREATED="1686806693494" ID="ID_907130009" MODIFIED="1686806701547" TEXT="rpop&#xff1a;&#x5c3e;&#x90e8;&#x5f39;&#x51fa;&#x4e00;&#x4e2a;&#x503c;"/>
<node CREATED="1686806701775" ID="ID_680504465" MODIFIED="1686806722854" TEXT="blpop&#xff1a;&#x963b;&#x585e;&#x5f39;&#x51fa;&#x5934;&#x90e8;&#x4e00;&#x4e2a;&#x503c;"/>
<node CREATED="1686806723397" ID="ID_628163062" MODIFIED="1686806733488" TEXT="brpop&#xff1a;&#x963b;&#x585e;&#x5f39;&#x51fa;&#x5c3e;&#x90e8;&#x4e00;&#x4e2a;&#x503c;"/>
<node CREATED="1686806733850" ID="ID_1211356401" MODIFIED="1686806787839" TEXT="rpoplpush&#xff1a;&#x5c3e;&#x90e8;&#x5f39;&#x51fa;&#x4e00;&#x4e2a;&#x503c;&#x5e76;&#x5c06;&#x8be5;&#x503c;&#x538b;&#x5165;&#x5230;&#x65b0;&#x7684;&#x5217;&#x8868;&#x5934;&#x90e8;"/>
<node CREATED="1686806788330" ID="ID_1936222790" MODIFIED="1686806921244" TEXT="brpoplpush&#xff1a;&#x5c3e;&#x90e8;&#x5f39;&#x51fa;&#x4e00;&#x4e2a;&#x503c;&#xff0c;&#x5e76;&#x5c06;&#x8be5;&#x503c;&#x538b;&#x5982;&#x5230;&#x65b0;&#x7684;&#x5217;&#x8868;&#x5934;&#x90e8;&#xff0c;&#x963b;&#x585e;&#x64cd;&#x4f5c;"/>
</node>
<node CREATED="1686806337823" ID="ID_15099042" MODIFIED="1686806339578" TEXT="&#x6539;">
<node CREATED="1686806930999" ID="ID_257427408" MODIFIED="1686806942260" TEXT="lset&#xff1a;&#x6839;&#x636e;&#x4e0b;&#x6807;&#xff0c;&#x4fee;&#x6539;&#x503c;"/>
<node CREATED="1686806942629" ID="ID_1240508584" MODIFIED="1686806959943" TEXT="ltrim&#xff1a;&#x622a;&#x53d6;&#x5217;&#x8868;&#x503c;"/>
</node>
<node CREATED="1686806340295" ID="ID_1357004199" MODIFIED="1686806341399" TEXT="&#x67e5;">
<node CREATED="1686807014730" ID="ID_364828497" MODIFIED="1686807029363" TEXT="llen&#xff1a;&#x67e5;&#x8be2;&#x5217;&#x8868;&#x957f;&#x5ea6;"/>
<node CREATED="1686807029613" ID="ID_1140646964" MODIFIED="1686807040869" TEXT="lindex&#xff1a;&#x6839;&#x636e;&#x4e0b;&#x6807;&#x83b7;&#x53d6;&#x67d0;&#x4e00;&#x4e2a;&#x503c;"/>
<node CREATED="1686807041160" ID="ID_904417475" MODIFIED="1686807052760" TEXT="lrange&#xff1a;&#x6839;&#x636e;&#x4e0b;&#x6807;&#x8303;&#x56f4;&#x83b7;&#x53d6;list&#x5217;&#x8868;"/>
</node>
</node>
</node>
<node CREATED="1686804867612" ID="ID_884764036" MODIFIED="1686804868476" TEXT="set">
<node CREATED="1686807762048" ID="ID_299679653" MODIFIED="1686807841221" TEXT="&#x4e00;&#x4e2a;&#x65e0;&#x5e8f;&#x96c6;&#x5408;&#xff0c;&#x4e0d;&#x5141;&#x8bb8;&#x91cd;&#x590d;&#x503c;"/>
<node CREATED="1686807841561" ID="ID_737050765" MODIFIED="1686807851431" TEXT="&#x57fa;&#x672c;&#x64cd;&#x4f5c;&#xff1a;">
<node CREATED="1686807852597" ID="ID_58145807" MODIFIED="1686807860619" TEXT="sadd&#xff1a;&#x6dfb;&#x52a0;&#x5143;&#x7d20;"/>
<node CREATED="1686807863358" ID="ID_254602700" MODIFIED="1686807876738" TEXT="scard&#xff1a;&#x83b7;&#x53d6;&#x96c6;&#x5408;&#x7684;&#x6210;&#x5458;&#x6570;&#x91cf;"/>
<node CREATED="1686807877106" ID="ID_1350849396" MODIFIED="1686807893357" TEXT="sdiff&#xff1a;&#x83b7;&#x53d6;&#x96c6;&#x5408;&#x4e0e;&#x5176;&#x4ed6;&#x96c6;&#x5408;&#x76f4;&#x63a5;&#x7684;&#x5dee;&#x5f02;"/>
<node CREATED="1686807936001" ID="ID_1578725506" MODIFIED="1686807958926" TEXT="sdiffstore&#xff1a;&#x83b7;&#x53d6;&#x96c6;&#x5408;&#x7684;&#x5e76;&#x96c6;&#x5e76;&#x5b58;&#x50a8;"/>
<node CREATED="1686808048546" ID="ID_108502377" MODIFIED="1686808058286" TEXT="sinter&#xff1a;&#x83b7;&#x53d6;&#x4e24;&#x4e2a;&#x96c6;&#x5408;&#x7684;&#x4ea4;&#x96c6;"/>
<node CREATED="1686808058609" ID="ID_257547437" MODIFIED="1686808081372" TEXT="sismember&#xff1a;&#x5224;&#x65ad;member&#x5143;&#x7d20;&#x662f;&#x5426;&#x662f;&#x96c6;&#x5408;key&#x7684;&#x6210;&#x5458;"/>
<node CREATED="1686808081726" ID="ID_900119826" MODIFIED="1686808091045" TEXT="smembers&#xff1a;&#x83b7;&#x53d6;&#x96c6;&#x5408;&#x4e2d;&#x7684;&#x6240;&#x6709;&#x6210;&#x5458;"/>
<node CREATED="1686808091294" ID="ID_1274985751" MODIFIED="1686808105986" TEXT="sunion&#xff1a;&#x83b7;&#x53d6;&#x6240;&#x6709;&#x7ed9;&#x5b9a;&#x96c6;&#x5408;&#x7684;&#x5e76;&#x96c6;"/>
<node CREATED="1686808106602" ID="ID_1813161756" MODIFIED="1686808114493" TEXT="srem&#xff1a;&#x79fb;&#x51fa;&#x4e00;&#x4e2a;&#x6216;&#x8005;&#x591a;&#x4e2a;&#x5143;&#x7d20;"/>
<node CREATED="1686808114708" ID="ID_821723857" MODIFIED="1686808123869" TEXT="sscan&#xff1a;&#x8fed;&#x4ee3;&#x96c6;&#x5408;&#x4e2d;&#x7684;&#x5143;&#x7d20;"/>
</node>
</node>
<node CREATED="1686804869128" ID="ID_904868743" MODIFIED="1686804870709" TEXT="zset">
<node CREATED="1686808225524" ID="ID_147180424" MODIFIED="1686808285640" TEXT="Redis&#x4e2d;&#x7684;&#x6709;&#x5e8f;&#x96c6;&#x5408;&#x548c;&#x96c6;&#x5408;&#x4e00;&#x6837;&#xff0c;&#x90fd;&#x662f;string&#x7c7b;&#x578b;&#x6570;&#x636e;&#x7684;&#x96c6;&#x5408;&#xff0c;&#x540c;&#x6837;&#x4e0d;&#x652f;&#x6301;&#x91cd;&#x590d;&#x5143;&#x7d20;&#x3002;&#x6bcf;&#x4e00;&#x4e2a;&#x5143;&#x7d20;&#x90fd;&#x4f1a;&#x5173;&#x8054;&#x4e00;&#x4e2a;double&#x7c7b;&#x578b;&#x7684;&#x5206;&#x6570;&#xff0c;&#x5e76;&#x4ee5;&#x6b64;&#x5206;&#x6570;&#x6765;&#x6392;&#x5e8f;"/>
<node CREATED="1686808256393" ID="ID_69779744" MODIFIED="1686808265834" TEXT="&#x57fa;&#x672c;&#x64cd;&#x4f5c;&#xff1a;">
<node CREATED="1686808304101" ID="ID_591052304" MODIFIED="1686808314176" TEXT="zadd&#xff1a;&#x65b0;&#x589e;&#x6210;&#x5458;"/>
<node CREATED="1686808314505" ID="ID_1515691006" MODIFIED="1686808326570" TEXT="zrem&#xff1a;&#x6839;&#x636e;&#x6307;&#x5b9a;&#x7684;key&#x8fdb;&#x884c;&#x5220;&#x9664;"/>
<node CREATED="1686808326784" ID="ID_53650544" MODIFIED="1686808338775" TEXT="zremrangebylex&#xff1a;&#x6839;&#x636e;&#x6307;&#x5b9a;&#x533a;&#x95f4;&#x96c6;&#x5408;&#x5220;&#x9664;"/>
<node CREATED="1686808339005" ID="ID_267563146" MODIFIED="1686808353889" TEXT="zremrangebyrank&#xff1a;&#x6839;&#x636e;&#x6307;&#x5b9a;&#x6392;&#x540d;&#x533a;&#x95f4;&#x8fdb;&#x884c;&#x5220;&#x9664;"/>
<node CREATED="1686808355095" ID="ID_1012716806" MODIFIED="1686808373926" TEXT="zremrangebyscore&#xff1a;&#x6839;&#x636e;&#x5206;&#x6570;&#x533a;&#x95f4;&#x8fdb;&#x884c;&#x5220;&#x9664;"/>
<node CREATED="1686808376039" ID="ID_687309388" MODIFIED="1686808384182" TEXT="zcard&#xff1a;&#x67e5;&#x8be2;&#x96c6;&#x5408;&#x6210;&#x5458;&#x6570;&#x91cf;"/>
<node CREATED="1686808384378" ID="ID_309082865" MODIFIED="1686808396911" TEXT="zcount&#xff1a;&#x5206;&#x6570;&#x533a;&#x95f4;&#x6210;&#x5458;&#x6570;&#x91cf;"/>
<node CREATED="1686808397226" ID="ID_1820094813" MODIFIED="1686808410353" TEXT="zlexcount&#xff1a;&#x6210;&#x5458;&#x533a;&#x95f4;&#x6210;&#x5458;&#x6570;&#x91cf;"/>
<node CREATED="1686808410580" ID="ID_1069722183" MODIFIED="1686808422158" TEXT="zscore&#xff1a;&#x6307;&#x5b9a;key&#x548c;&#x503c;&#xff0c;&#x83b7;&#x53d6;&#x5206;&#x6570;"/>
<node CREATED="1686808422406" ID="ID_90685758" MODIFIED="1686808428711" TEXT="zrange&#xff1a;&#x83b7;&#x53d6;&#x6210;&#x5458;&#x4fe1;&#x606f;"/>
<node CREATED="1686808428914" ID="ID_945813548" MODIFIED="1686808441046" TEXT="zrank&#xff1a;&#x6307;&#x5b9a;key&#x548c;&#x503c;&#xff0c;&#x83b7;&#x53d6;&#x4e0b;&#x6807;"/>
<node CREATED="1686808441745" ID="ID_283492298" MODIFIED="1686808462566" TEXT="zrangebylex&#xff1a;&#x6307;&#x5b9a;&#x96c6;&#x5408;&#x533a;&#x95f4;&#xff0c;&#x83b7;&#x53d6;&#x5217;&#x8868;"/>
<node CREATED="1686808462795" ID="ID_751451527" MODIFIED="1686808473553" TEXT="zrangebyscore&#xff1a;&#x6307;&#x5b9a;&#x5206;&#x6570;&#x533a;&#x95f4;&#xff0c;&#x83b7;&#x53d6;&#x5217;&#x8868;"/>
<node CREATED="1686808473777" ID="ID_795695336" MODIFIED="1686808485557" TEXT="zrevrange&#xff1a;&#x5012;&#x5e8f;&#x5c55;&#x793a;&#x5217;&#x8868;"/>
<node CREATED="1686808485823" ID="ID_605296315" MODIFIED="1686808512011" TEXT="zrevrangebyscore&#xff1a;&#x6839;&#x636e;&#x5206;&#x6570;&#x533a;&#x95f4;&#xff0c;&#x5012;&#x5e8f;&#x5c55;&#x793a;&#x5217;&#x8868;"/>
<node CREATED="1686808512241" ID="ID_1857589977" MODIFIED="1686808524496" TEXT="zreverank&#xff1a;&#x5012;&#x5e8f;&#x83b7;&#x53d6;&#x6210;&#x5458;&#x4e0b;&#x6807;"/>
</node>
</node>
<node CREATED="1686804871466" ID="ID_1609714586" MODIFIED="1686804872649" TEXT="hash">
<node CREATED="1686808574642" ID="ID_1459696966" MODIFIED="1686808609900" TEXT="redis hash&#x662f;&#x4e00;&#x4e2a;string&#x7c7b;&#x578b;&#x7684;field&#x548c;value&#x7684;&#x6620;&#x5c04;&#x8868;&#xff0c;&#x7279;&#x522b;&#x9002;&#x5408;&#x5b58;&#x50a8;&#x5bf9;&#x8c61;"/>
<node CREATED="1686808594791" ID="ID_152372457" MODIFIED="1686808640854" TEXT="HDEL key field1 [field2] &#x5220;&#x9664;&#x4e00;&#x4e2a;&#x6216;&#x591a;&#x4e2a;hash&#x8868;&#x5b57;&#x6bb5;"/>
<node CREATED="1686808641102" ID="ID_311155942" MODIFIED="1686808664129" TEXT="HEXISTS key field &#x67e5;&#x770b;hash&#x8868;&#xff0c;&#x6307;&#x5b9a;&#x7684;&#x5b57;&#x6bb5;&#x662f;&#x5426;&#x5b58;&#x5728;"/>
<node CREATED="1686808664343" ID="ID_1704632230" MODIFIED="1686808684908" TEXT="HGET key field &#x83b7;&#x53d6;&#x5b58;&#x50a8;&#x5728;hash&#x8868;&#x4e2d;&#x6307;&#x5b9a;&#x5b57;&#x6bb5;&#x7684;&#x503c;"/>
<node CREATED="1686808685106" ID="ID_15705645" MODIFIED="1686808721886" TEXT="HGETALL key &#x83b7;&#x53d6;&#x5728; &#x54c8;&#x5e0c;&#x8868;&#x4e2d;&#x6307;&#x5b9a;key&#x7684;&#x6240;&#x6709;&#x5b57;&#x6bb5;&#x548c;&#x503c;"/>
<node CREATED="1686808722126" ID="ID_1105595097" MODIFIED="1686808758602" TEXT="HINCRBY key field increment &#x4e3a;hash&#x8868;&#x4e2d;key&#x4e2d;&#x7684;&#x6307;&#x5b9a;&#x5b57;&#x6bb5;&#x589e;&#x52a0;&#x4e0a;&#x589e;&#x91cf;increment"/>
<node CREATED="1686808759468" ID="ID_1587015687" MODIFIED="1686808799186" TEXT="HINCRBYFLOAT key field increment &#x4e3a;hash&#x8868;&#x4e2d;key&#x7684;&#x6307;&#x5b9a;&#x5b57;&#x6bb5;&#x52a0;&#x4e0a;&#x589e;&#x91cf;increment"/>
<node CREATED="1686808799924" ID="ID_789851645" MODIFIED="1686808813687" TEXT="HKEYS key &#x83b7;&#x53d6;hash&#x8868;&#x4e2d;&#x7684;&#x6240;&#x6709;&#x5b57;&#x6bb5;"/>
<node CREATED="1686808814223" ID="ID_1440853076" MODIFIED="1686808837424" TEXT="HLEN key &#x83b7;&#x53d6;&#x54c8;&#x5e0c;&#x8868;&#x4e2d;key&#x7684;&#x5b57;&#x6bb5;&#x6570;&#x91cf;"/>
<node CREATED="1686808837643" ID="ID_1984936005" MODIFIED="1686808861248" TEXT="HMGET key field [field2] &#x83b7;&#x53d6;hash&#x8868;key&#x7684;&#x591a;&#x4e2a;&#x5b57;&#x6bb5;&#x503c;"/>
<node CREATED="1686808861475" ID="ID_59533759" MODIFIED="1686808914702" TEXT="HMSET key field value field1 value1 &#x540c;&#x65f6;&#x5c06;&#x591a;&#x4e2a;field-value&#x5bf9;&#x8bbe;&#x7f6e;&#x5230;hash&#x8868;&#x4e2d;"/>
<node CREATED="1686808914929" ID="ID_1844201874" MODIFIED="1686808944693" TEXT="HSET key field value &#x5c06;hash&#x8868;&#x4e2d;key&#x7684;field&#x5b57;&#x6bb5;&#x8bbe;&#x7f6e;&#x503c;&#x4e3a;value"/>
<node CREATED="1686808945872" ID="ID_459260825" MODIFIED="1686808984165" TEXT="HSETNX key field value &#x53ea;&#x6709;&#x5728;&#x5b57;&#x6bb5;field&#x4e0d;&#x5b58;&#x5728; &#x662f;&#xff0c;&#x8bbe;&#x7f6e;hash&#x8868; &#x5b57;&#x6bb5;&#x503c;"/>
<node CREATED="1686808984562" ID="ID_1376890814" MODIFIED="1686809001001" TEXT="HVALS key &#x83b7;&#x53d6;hash&#x8868;&#x6240;&#x4ee5;&#x6240;&#x6709;&#x503c;"/>
<node CREATED="1686809001200" ID="ID_1627069149" MODIFIED="1686809041264" TEXT="HSCAN key cursor [MATCH PATTERN] [COUNT count]  &#x904d;&#x5386;hash&#x8868;"/>
</node>
</node>
<node CREATED="1686801989715" ID="ID_291512907" MODIFIED="1686802013996" POSITION="right" TEXT="redis &#x9ad8;&#x53ef;&#x7528;">
<node CREATED="1686812547465" ID="ID_1004705580" MODIFIED="1686812549966" TEXT="&#x4e3b;&#x4ece;&#x590d;&#x5236;">
<node CREATED="1686812898921" ID="ID_1522814855" MODIFIED="1686812925530" TEXT="&#x5f53;&#x7528;&#x6237;&#x5f80;master&#x5199;&#x5165;&#x7684;&#x65f6;&#x5019;&#xff0c;&#x901a;&#x8fc7;redis sync&#x673a;&#x5236;&#x5c06;&#x6570;&#x636e;&#x540c;&#x6b65;&#x5230;slave"/>
<node CREATED="1686812927547" ID="ID_1765811805" MODIFIED="1686812961842" TEXT="&#x4f18;&#x70b9;&#xff1a;&#x4e3b;&#x5199;&#x4ece;&#x8bfb;&#xff0c;&#x964d;&#x4f4e;&#x8bfb;&#x7684;&#x538b;&#x529b;"/>
<node CREATED="1686812962628" ID="ID_1749373277" MODIFIED="1686812984776" TEXT="&#x7f3a;&#x70b9;&#xff1a;&#x5f53;Master&#x5b95;&#x673a;&#x65f6;&#xff0c;&#x65e0;&#x6cd5;&#x7ee7;&#x7eed;&#x4f7f;&#x7528;&#xff0c;&#x9700;&#x8981;&#x624b;&#x5de5;&#x5e72;&#x9884;&#x5207;&#x6362;"/>
<node CREATED="1686818409599" ID="ID_1800450162" MODIFIED="1686818414800" TEXT="&#x4e09;&#x79cd;&#x65b9;&#x5f0f;&#x6784;&#x5efa;&#x4e3b;&#x4ece;&#xff1a;">
<node CREATED="1686818418242" ID="ID_1452973287" MODIFIED="1686818449690" TEXT="&#x4fee;&#x6539;&#x914d;&#x7f6e;&#x6587;&#x4ef6;&#xff0c;&#x6dfb;&#x52a0; replicaof &lt;master ip&gt; &lt;master port&gt;"/>
<node CREATED="1686818450328" ID="ID_183047376" MODIFIED="1686818482435" TEXT="slave&#x8282;&#x70b9;&#x542f;&#x52a8;&#x65f6;&#xff0c;&#x5e26;&#x4e0a;--replicaof &lt;master ip&gt; &lt;master port&gt;"/>
<node CREATED="1686818482970" ID="ID_1482271248" MODIFIED="1686818511552" TEXT="slave&#x542f;&#x52a8;&#x540e;&#xff0c;&#x6267;&#x884c;&#x547d;&#x4ee4;&#xff1a;replicaof &lt;master ip&gt; &lt;master port&gt;"/>
</node>
<node CREATED="1686818686722" ID="ID_1863558861" MODIFIED="1686818986711" TEXT="&#x539f;&#x7406;&#xff1a;&#x5206;&#x4e3a;&#x4e24;&#x4e2a;&#x6b65;&#x9aa4;&#xff0c;&#x4e00;&#x4e2a;&#x662f;&#x521d;&#x59cb;&#x5316;&#x8fc7;&#x7a0b;&#x4e2d;&#x505a;&#x5168;&#x91cf;&#x590d;&#x5236;&#xff0c;&#x8fd9;&#x4e2a;&#x8fc7;&#x7a0b;&#x4f9d;&#x8d56;rdb&#x505a;&#x5168;&#x91cf;&#x540c;&#x6b65;&#x3002;&#x589e;&#x91cf;&#x540c;&#x6b65;&#xff0c;&#x5728;master&#x8282;&#x70b9;&#x4e0a;&#x7684;&#x547d;&#x4ee4;&#x4f1a;&#x540c;&#x6b65;&#x5230;slave&#x8282;&#x70b9;&#x4e0a;&#xff0c;&#x7136;&#x540e;&#x518d;slave&#x4e0a;&#x6267;&#x884c;&#x4e00;&#x904d;&#x3002;&#x5f53;&#x589e;&#x91cf;&#x590d;&#x5236;&#x8fc7;&#x7a0b;&#x4e2d;&#x51fa;&#x73b0;&#x5f02;&#x5e38;&#xff0c;&#x662f;&#x652f;&#x6301;&#x65ad;&#x70b9;&#x7eed;&#x4f20;&#x7684;&#x3002;&#x6240;&#x4ee5;&#x53cc;&#x65b9;&#x9700;&#x8981;&#x7ef4;&#x62a4;&#x4e24;&#x4e2a;&#x504f;&#x79fb;&#x91cf;&#x3002;&#x4e00;&#x4e2a;&#x662f;master_repl_offset&#x3002;&#x4e00;&#x4e2a;&#x662f;slave_repl_offset&#x3002;"/>
<node CREATED="1686819006839" ID="ID_1398185637" MODIFIED="1686819078660" TEXT="&#x5982;&#x679c;&#x591a;&#x4e2a;&#x4ece;&#x5e93;&#x94fe;&#x63a5;&#x4e00;&#x4e2a;master&#x7684;&#x65f6;&#x5019;&#xff0c;master&#x7684;&#x538b;&#x529b;&#x4f1a;&#x975e;&#x5e38;&#x5927;&#xff0c;&#x6027;&#x80fd;&#x4f1a;&#x51fa;&#x73b0;&#x4e0b;&#x964d;&#xff0c;&#x6240;&#x4ee5;&#x4e00;&#x822c;&#x91c7;&#x7528;&#x8fd9;&#x79cd;&#x67b6;&#x6784;&#xff1a;">
<node CREATED="1686819043325" ID="ID_817550009" MODIFIED="1686819059726" TEXT="master">
<node CREATED="1686819047192" ID="ID_1203746567" MODIFIED="1686819085680" TEXT="slave1">
<node CREATED="1686819051586" ID="ID_239955150" MODIFIED="1686819093121" TEXT="slave2"/>
<node CREATED="1686819053745" ID="ID_1716102320" MODIFIED="1686819096152" TEXT="slave3"/>
</node>
</node>
</node>
</node>
<node CREATED="1686812550242" ID="ID_1963691333" MODIFIED="1686812556095" TEXT="&#x54e8;&#x5175;">
<node CREATED="1686819766263" ID="ID_1982321487" MODIFIED="1686819927203" TEXT="&#x80cc;&#x666f;&#xff1a;&#x7531;&#x4e8e;&#x4e3b;&#x4ece;&#x6a21;&#x5f0f;&#x4e0b;&#xff0c;&#x5982;&#x679c;master&#x5b95;&#x673a;&#xff0c;&#x5c31;&#x5fc5;&#x987b;&#x4eba;&#x5de5;&#x5e72;&#x9884;&#xff0c;&#x505a;&#x8282;&#x70b9;&#x8f6c;&#x79fb;&#xff0c;&#x624d;&#x80fd;&#x7ef4;&#x6301;&#x67b6;&#x6784;&#x53ef;&#x7528;&#x6027;&#xff0c;&#x8fd9;&#x79cd;&#x65b9;&#x5f0f;&#x5728;&#x7ebf;&#x4e0a;&#x6709;&#x5f88;&#x5927;&#x7684;&#x9690;&#x60a3;&#x3002;&#x6240;&#x4ee5;redis&#x5b98;&#x65b9;&#x63a8;&#x51fa;&#x4e86;&#x4e00;&#x79cd;&#x9ad8;&#x53ef;&#x7528;&#x89e3;&#x51b3;&#x65b9;&#x6848;&#xff1a;redis sentinel,&#x5f53;master&#x51fa;&#x73b0;&#x5f02;&#x5e38;&#x65f6;&#xff0c;sentinel&#x4f1a;&#x505a;failover&#xff08;&#x6545;&#x969c;&#x8f6c;&#x79fb;&#xff09;&#xff0c;&#x5e76;&#x5c06;&#x4ece;&#x673a;&#x63d0;&#x5347;&#x4e3a;&#x4e3b;&#x673a;"/>
<node CREATED="1686820059961" ID="ID_977294019" MODIFIED="1686820065756" TEXT="&#x8fde;&#x4e2a;&#x91cd;&#x8981;&#x4f5c;&#x7528;&#xff1a;">
<node CREATED="1686820066596" ID="ID_315402174" MODIFIED="1686820094939" TEXT="&#x5411;&#x6bcf;&#x4e2a;&#x8282;&#x70b9;&#x53d1;&#x9001;PING&#x547d;&#x4ee4;&#xff0c;&#x5e76;&#x901a;&#x8fc7;Redis&#x8282;&#x70b9;&#x7684;&#x56de;&#x590d;&#x6765;&#x5224;&#x65ad;&#x5176;&#x8fd0;&#x884c;&#x673a;&#x5236;"/>
<node CREATED="1686820095348" ID="ID_131384332" MODIFIED="1686820151818" TEXT="&#x5f53;&#x54e8;&#x5175;&#x68c0;&#x6d4b;&#x5230;master&#x51fa;&#x73b0;&#x5f02;&#x5e38;&#x65f6;&#xff0c;&#x4f1a;&#x81ea;&#x52a8;&#x4ece;&#x4ece;&#x8282;&#x70b9;&#x9009;&#x62e9;&#x4e00;&#x53f0;&#x673a;&#x5668;&#xff0c;&#x5c06;&#x5176;&#x63d0;&#x5347;&#x4e3a;&#x4e3b;&#x670d;&#x52a1;&#x5668;&#x3002;&#x5e76;&#x901a;&#x8fc7;pubsub&#x53d1;&#x5e03;&#x8ba2;&#x9605;&#x6a21;&#x5f0f;&#xff0c;&#x901a;&#x77e5;&#x5176;&#x4ed6;&#x7684;&#x4ece;&#x8282;&#x70b9;&#xff0c;&#x4fee;&#x6539;&#x914d;&#x7f6e;&#x6587;&#x4ef6;&#xff0c;&#x8ddf;&#x968f;&#x65b0;&#x7684;&#x4e3b;&#x670d;&#x52a1;&#x5668;"/>
</node>
<node CREATED="1686820324254" ID="ID_194187146" MODIFIED="1686820328389" TEXT="&#x8fc7;&#x7a0b;&#x8bb2;&#x89e3;&#xff1a;">
<node CREATED="1686820329389" ID="ID_917337007" MODIFIED="1686820334291" TEXT="&#x4e3b;&#x89c2;&#x4e0b;&#x7ebf;&#xff1a;">
<node CREATED="1686820341602" ID="ID_1959151947" MODIFIED="1686820409521" TEXT="&#x9002;&#x7528;&#x4e8e;&#x4e3b;&#x670d;&#x52a1;&#x5668;&#x548c;&#x4ece;&#x670d;&#x52a1;&#x5668;&#xff0c;&#x5982;&#x679c;&#x5728;&#x89c4;&#x5b9a;&#x7684;&#x65f6;&#x95f4;&#x5185;&#xff08;down-after-milliseconds&#xff09;sentinel&#x6ca1;&#x6709;&#x6536;&#x5230;&#x76d1;&#x6d4b;&#x5f97;&#x7684;&#x670d;&#x52a1;&#x5668;&#x6709;&#x6548;&#x56de;&#x590d;&#xff0c;&#x5219;&#x5224;&#x5b9a;&#x6539;&#x670d;&#x52a1;&#x5668;&#x4e0b;&#x7ebf;&#x3002;"/>
</node>
<node CREATED="1686820334769" ID="ID_1847768168" MODIFIED="1686820339138" TEXT="&#x5ba2;&#x89c2;&#x4e0b;&#x7ebf;&#xff1a;">
<node CREATED="1686820412126" ID="ID_1696072106" MODIFIED="1686820473193" TEXT="&#x9002;&#x7528;&#x4e8e;&#x4e3b;&#x670d;&#x52a1;&#x5668;&#xff0c;sentinel1&#x53d1;&#x73b0;&#x4e3b;&#x670d;&#x52a1;&#x5668;&#x51fa;&#x73b0;&#x6545;&#x969c;&#xff0c;&#x4f1a;&#x8be2;&#x95ee;&#x5176;&#x4ed6;sentine&#xff0c;&#x5982;&#x679c;&#x8d85;&#x8fc7;&#x534a;&#x6570;&#x53cd;&#x9988;&#x4e3b;&#x670d;&#x52a1;&#x5668;down&#x6389;&#xff0c;&#x90a3;&#x4e48;sentinel1&#x5c31;&#x5224;&#x65ad;&#x4e3b;&#x670d;&#x52a1;&#x5668;&#x4e0b;&#x7ebf;&#x4e86;"/>
</node>
<node CREATED="1686820476417" ID="ID_167631215" MODIFIED="1686820483008" TEXT="&#x6295;&#x7968;&#x9009;&#x4e3e;&#xff1a;">
<node CREATED="1686820484164" ID="ID_1594930828" MODIFIED="1686820597361" TEXT="&#x6240;&#x6709;sentinel&#x90fd;&#x4f1a;&#x901a;&#x8fc7;&#x6295;&#x7968;&#x9009;&#x62e9;&#xff0c;&#x6309;&#x7167;&#x8c01;&#x53d1;&#x73b0;&#x8c01;&#x5904;&#x7406;&#x7684;&#x539f;&#x5219;&#xff0c;&#x9009;&#x4e3e;&#x4e00;&#x4e2a;sentinel1&#x4f5c;failover&#x3002;sentinel&#x4f1a;&#x4ece;&#x6240;&#x6709;&#x4ece;&#x8282;&#x70b9;&#x4e2d;&#x9009;&#x4e3e;&#x4e00;&#x4e2a;&#x6700;&#x4f18;&#x7684;&#x4f5c;&#x4e3a;&#x4e3b;&#x670d;&#x52a1;&#x5668;&#xff0c;&#x7136;&#x540e;&#x901a;&#x8fc7;pubsub&#x6a21;&#x5f0f;&#x901a;&#x77e5;&#x5176;&#x4ed6;&#x4ece;&#x8282;&#x70b9;&#x66f4;&#x6362;&#x4e3b;&#x670d;&#x52a1;&#x5668;"/>
</node>
<node CREATED="1686820610480" ID="ID_374505757" MODIFIED="1686820681182" TEXT="&#x5ba2;&#x6237;&#x7aef;&#x6765;&#x8fde;&#x63a5;&#x96c6;&#x7fa4;&#x65f6;&#xff0c;&#x5b9e;&#x9645;&#x4e0a;&#x662f;&#x94fe;&#x63a5;sentinel&#xff0c;sentinel&#x4f1a;&#x8fd4;&#x56de;&#x4e00;&#x4e2a;&#x4e3b;&#x670d;&#x52a1;&#x5668;&#x5730;&#x5740;"/>
</node>
</node>
<node CREATED="1686812556496" ID="ID_79503729" MODIFIED="1686837754037" TEXT="&#x96c6;&#x7fa4;&#xff08;redis cluster&#xff09;">
<node CREATED="1686885196269" ID="ID_1024648801" MODIFIED="1686885211701" TEXT="redis3.0&#x540e;&#x81ea;&#x5e26;&#x7684;&#x96c6;&#x7fa4;&#x65b9;&#x6848;"/>
<node CREATED="1686885240886" ID="ID_681241228" MODIFIED="1686885304088" TEXT="redis cluster &#x4e00;&#x5171;&#x6709;16384&#x4e2a;slot&#x4f4d;&#xff0c;&#x5728;N&#x4e2a;master&#x4e2d;&#xff0c;16384&#x4e2a;&#x69fd;&#x4f4d;&#x4f1a;&#x5e73;&#x5747;&#x5206;&#x914d;&#x5230;N&#x4e2a;&#x69fd;&#x4f4d;&#x4e2d;&#xff0c;&#x5982;&#x679c;&#x6709;&#x4e00;&#x4e2a;&#x69fd;&#x4f4d;&#x5206;&#x914d;&#x4e0d;&#x6210;&#x529f;&#xff0c;&#x90a3;&#x4e48;&#x96c6;&#x7fa4;&#x5c31;&#x4f1a;&#x5168;&#x90e8;&#x5931;&#x8d25;"/>
<node CREATED="1686885337031" ID="ID_1735696495" MODIFIED="1686885379966" TEXT="&#x6bcf;&#x4e00;&#x4e2a;&#x96c6;&#x7fa4;&#x7684;&#x8282;&#x70b9;&#xff0c;&#x90fd;&#x4f1a;&#x5355;&#x72ec;&#x5f00;&#x8f9f;&#x4e00;&#x4e2a;tcp&#x7684;&#x901a;&#x9053;&#xff0c;&#x7528;&#x4e8e;&#x5404;&#x4e2a;&#x8282;&#x70b9;&#x4e4b;&#x95f4;&#x7684;tcp&#x901a;&#x4fe1;&#xff08;gossip&#xff09;&#xff0c;tcp&#x7684;&#x7aef;&#x53e3;&#x662f;&#x5728;&#x57fa;&#x7840;&#x7aef;&#x53e3;&#x4e0a;+10000"/>
<node CREATED="1686885549977" ID="ID_1188089506" MODIFIED="1686885561640" TEXT="Gossip&#x534f;&#x8bae;&#x804c;&#x8d23;">
<node CREATED="1686885562616" ID="ID_1003793595" MODIFIED="1686885572951" TEXT="meet&#xff0c;&#x65b0;&#x8282;&#x70b9;&#x52a0;&#x5165;&#x96c6;&#x7fa4;"/>
<node CREATED="1686885573448" ID="ID_155731924" MODIFIED="1686885580081" TEXT="ping&#xff0c;&#x5fc3;&#x8df3;&#x68c0;&#x6d4b;"/>
<node CREATED="1686885589620" ID="ID_1322631933" MODIFIED="1686885596863" TEXT="pong&#xff0c;&#x56de;&#x5e94;meet&#x6216;&#x8005;ping&#x8bf7;&#x6c42;"/>
<node CREATED="1686885597370" ID="ID_1846498847" MODIFIED="1686885644240" TEXT="fail&#xff0c;&#x5f53;&#x5176;&#x4ed6;&#x8282;&#x70b9;&#x6536;&#x5230;fail&#x4e4b;&#x540e;&#xff0c;&#x4f1a;&#x5bf9;&#x5bf9;&#x5e94;&#x8282;&#x70b9;&#x505a;&#x4e0b;&#x7ebf;&#x5904;&#x7406;"/>
</node>
<node CREATED="1686885658817" ID="ID_11010150" MODIFIED="1686885663069" TEXT="&#x642d;&#x5efa;&#x8fc7;&#x7a0b;&#xff1a;">
<node CREATED="1686885664329" ID="ID_699434324" MODIFIED="1686885685123" TEXT="&#x51c6;&#x5907;6&#x4e2a;&#x8282;&#x70b9;&#x7684;redis&#xff0c;&#x8fd9;&#x662f;redis cluster&#x6700;&#x5c0f;&#x96c6;&#x7fa4;&#x8981;&#x6c42;"/>
<node CREATED="1686885685523" ID="ID_1373112613" MODIFIED="1686885712363" TEXT="&#x9488;&#x5bf9;&#x6bcf;&#x4e00;&#x4e2a;redis&#xff0c;&#x4fee;&#x6539;redis.conf &#x5f00;&#x542f;&#x96c6;&#x7fa4;&#x914d;&#x7f6e;"/>
<node CREATED="1686885713083" ID="ID_407871778" MODIFIED="1686885746341" TEXT="&#x8fde;&#x63a5;&#x4efb;&#x4e00;&#x8282;&#x70b9;&#xff0c;&#x4f7f;&#x7528;cluster meet &#x547d;&#x4ee4;&#x5c06;&#x5176;&#x4ed6;&#x8282;&#x70b9;&#x52a0;&#x5165;"/>
<node CREATED="1686885747461" ID="ID_596012642" MODIFIED="1686885761692" TEXT="&#x4f7f;&#x7528;cluster nodes &#x67e5;&#x770b;&#x96c6;&#x7fa4;&#x8282;&#x70b9;&#x60c5;&#x51b5;"/>
<node CREATED="1686885762163" ID="ID_948841243" MODIFIED="1686885808368" TEXT="&#x5bf9;cluster &#x7684;master node &#x5206;&#x914d;solt"/>
<node CREATED="1686885809677" ID="ID_813336450" MODIFIED="1686885821543" TEXT="&#x4f7f;&#x7528;cluster info&#x67e5;&#x770b;&#x96c6;&#x7fa4;&#x4fe1;&#x606f;"/>
<node CREATED="1686885822237" ID="ID_870438445" MODIFIED="1686885824663" TEXT="&#x6784;&#x5efa;&#x6210;&#x529f;"/>
</node>
</node>
</node>
<node CREATED="1686802023431" ID="ID_1150043560" MODIFIED="1686802027513" POSITION="left" TEXT="&#x7f13;&#x5b58;&#x51fb;&#x7a7f;">
<node CREATED="1686885927770" ID="ID_1029038258" MODIFIED="1686885986001" TEXT="&#x6307;&#x7684;&#x662f;&#x67d0;&#x4e00;&#x4e2a;&#x7f13;&#x5b58;&#x6570;&#x636e;&#x8fc7;&#x671f;&#xff0c;&#x5728;&#x751f;&#x6210;&#x65b0;&#x7684;&#x7f13;&#x5b58;&#x4e4b;&#x524d;&#xff0c;&#x5927;&#x91cf;&#x7684;&#x67e5;&#x8be2;&#x8bf7;&#x6c42;&#x7a7f;&#x8fc7;&#x7f13;&#x5b58;&#x76f4;&#x63a5;&#x67e5;&#x8be2;&#x6570;&#x636e;&#x5e93;&#xff0c;&#x5bfc;&#x81f4;&#x6570;&#x636e;&#x5e93;&#x538b;&#x529b;&#x5267;&#x589e;"/>
<node CREATED="1686886017032" ID="ID_1193443122" MODIFIED="1686886020110" TEXT="&#x89e3;&#x51b3;&#x65b9;&#x6848;">
<node CREATED="1686886021306" ID="ID_717472998" MODIFIED="1686886031597" TEXT="&#x8bbe;&#x7f6e;key&#x4e3a;&#x6c38;&#x4e0d;&#x8fc7;&#x671f;">
<node CREATED="1686886113615" ID="ID_130942742" MODIFIED="1686886123301" TEXT="1&#x3001;&#x4e0d;&#x8bbe;&#x7f6e;&#x8fc7;&#x671f;&#x65f6;&#x95f4;"/>
<node CREATED="1686886123762" ID="ID_83265874" MODIFIED="1686886139087" TEXT="2&#x3001;&#x505a;&#x4e00;&#x4e2a;&#x5b9a;&#x65f6;&#x5668;&#xff0c;&#x5b9a;&#x65f6;&#x5237;&#x65b0;&#x8be5;key&#x7684;&#x7f13;&#x5b58;"/>
</node>
<node CREATED="1686886041702" ID="ID_651605368" MODIFIED="1686886095281" TEXT="&#x4f7f;&#x7528;&#x5206;&#x5e03;&#x5f0f;&#x9501;&#xff0c;&#x4fdd;&#x8bc1;&#x4efb;&#x4e00;&#x65f6;&#x523b;&#xff0c;&#x53ea;&#x6709;&#x4e00;&#x4e2a;&#x67e5;&#x8be2;&#x8bf7;&#x6c42;&#x5c06;&#x6570;&#x636e;&#x52a0;&#x8f7d;&#x5230;&#x7f13;&#x5b58;&#xff0c;&#x5176;&#x4ed6;&#x7ebf;&#x7a0b;&#x963b;&#x585e;&#x7b49;&#x5f85;&#x8be5;&#x8fc7;&#x7a0b;&#x5b8c;&#x6210;&#xff0c;&#x91cd;&#x65b0;&#x67e5;&#x8be2;&#x7f13;&#x5b58;">
<node CREATED="1686886178692" ID="ID_429052319" MODIFIED="1686886227808" TEXT="&#x5bf9;&#x8be5;key&#x52a0;&#x9501;"/>
<node CREATED="1686886228244" ID="ID_180678951" MODIFIED="1686886278908" TEXT="&#x62ff;&#x5230;&#x9501;&#x7684;&#x8fdb;&#x7a0b;&#x53bb;&#x6570;&#x636e;&#x67e5;&#x6570;&#x636e;&#x5e76;&#x66f4;&#x65b0;&#x7f13;&#x5b58;&#xff0c;&#x5e76;&#x4e14;&#x91ca;&#x653e;&#x9501;"/>
<node CREATED="1686886242233" ID="ID_138131537" MODIFIED="1686886258444" TEXT="&#x6ca1;&#x6709;&#x62ff;&#x5230;&#x9501;&#x7684;&#x8fdb;&#x7a0b;&#x6216;&#x8005;&#x7ebf;&#x7a0b;&#x963b;&#x585e;&#x7b49;&#x5f85;"/>
</node>
</node>
</node>
<node CREATED="1686802027772" ID="ID_989351140" MODIFIED="1686886328631" POSITION="left" TEXT="&#x7f13;&#x5b58;&#x96ea;&#x5d29;">
<node CREATED="1686886330279" ID="ID_1234455494" MODIFIED="1686886334253" TEXT="&#x53ef;&#x80fd;&#x539f;&#x56e0;">
<node CREATED="1686886291098" ID="ID_1572654977" MODIFIED="1686886302174" TEXT="&#x540c;&#x4e00;&#x65f6;&#x523b;&#x5927;&#x91cf;&#x7684;key&#x540c;&#x65f6;&#x5931;&#x6548;"/>
<node CREATED="1686886308611" ID="ID_1528099315" MODIFIED="1686886311926" TEXT="redis&#x5b95;&#x673a;"/>
</node>
<node CREATED="1686886341535" ID="ID_753668950" MODIFIED="1686886343460" TEXT="&#x89e3;&#x51b3;&#x65b9;&#x6848;">
<node CREATED="1686886358727" ID="ID_590733836" MODIFIED="1686886381448" TEXT="&#x9488;&#x5bf9;&#x7b2c;&#x4e00;&#x79cd;&#x60c5;&#x51b5;&#xff0c;&#x53ef;&#x4ee5;&#x8bbe;&#x7f6e;&#x4e0d;&#x540c;&#x7684;&#x5931;&#x6548;&#x65f6;&#x95f4;&#xff0c;&#x4f7f;&#x5f97;&#x5931;&#x6548;&#x65f6;&#x95f4;&#x5c3d;&#x53ef;&#x80fd;&#x5206;&#x5e03;&#x5747;&#x5300;"/>
<node CREATED="1686886382234" ID="ID_1373697459" MODIFIED="1686886403149" TEXT="&#x7b2c;&#x4e8c;&#x79cd;&#xff0c;&#x642d;&#x5efa;&#x9ad8;&#x53ef;&#x7528;redis&#x65b9;&#x6848;&#xff0c;&#x4e3b;&#x4ece;&#xff0c;&#x54e8;&#x5175;&#xff0c;&#x6216;&#x8005;&#x96c6;&#x7fa4;"/>
<node CREATED="1686886423851" ID="ID_1604258043" MODIFIED="1686886430807" TEXT="&#x8bbe;&#x7f6e;&#x6c38;&#x4e0d;&#x8fc7;&#x671f;key"/>
<node CREATED="1686886431541" ID="ID_1592109296" MODIFIED="1686886443517" TEXT="&#x52a0;&#x5206;&#x5e03;&#x5f0f;&#x9501;&#xff0c;&#x4f46;&#x662f;&#x4f1a;&#x5bfc;&#x81f4;&#x5927;&#x91cf;&#x7684;&#x8bf7;&#x6c42;&#x963b;&#x585e;"/>
</node>
</node>
<node CREATED="1686802031539" ID="ID_1955028767" MODIFIED="1686802042592" POSITION="left" TEXT="&#x7f13;&#x5b58;&#x7a7f;&#x900f;">
<node CREATED="1686886461811" ID="ID_150333161" MODIFIED="1686886499105" TEXT="&#x67d0;&#x4e00;&#x4e2a;&#x6570;&#x636e;&#xff0c;&#x7f13;&#x5b58;&#x548c;&#x6570;&#x636e;&#x5e93;&#x90fd;&#x4e0d;&#x5b58;&#x5728;&#x3002;&#x5bfc;&#x81f4;&#x6570;&#x636e;&#x5e93;&#x538b;&#x529b;&#x5de8;&#x5927;"/>
<node CREATED="1686886510410" ID="ID_990955101" MODIFIED="1686886512799" TEXT="&#x89e3;&#x51b3;&#x65b9;&#x6848;">
<node CREATED="1686886514134" ID="ID_439140135" MODIFIED="1686886561630" TEXT="&#x7f13;&#x5b58;&#x7a7a;&#x6570;&#x636e;&#xff0c;&#x5373;&#x4f7f;&#x662f;&#x7a7a;&#x503c;&#xff0c;&#x540c;&#x6837;&#x7f13;&#x5b58;&#x8d77;&#x6765;&#xff0c;&#x9700;&#x8981;&#x7ed9;&#x5b9a;&#x4e00;&#x4e2a;&#x8f83;&#x77ed;&#x7684;&#x7f13;&#x5b58;&#x65f6;&#x95f4;"/>
<node CREATED="1686886566074" ID="ID_1062548792" MODIFIED="1686886570146" TEXT="&#x4f7f;&#x7528;&#x5e03;&#x9686;&#x8fc7;&#x6ee4;&#x5668;">
<node CREATED="1686887014470" ID="ID_1520327560" MODIFIED="1686887040133" TEXT="&#x7531;n&#x4f4d;bit&#x6570;&#x7ec4;&#x548c;n&#x4e2a;hash&#x51fd;&#x6570;&#x7ec4;&#x6210;&#x7684;&#x4e00;&#x79cd;&#x6570;&#x636e;&#x7ed3;&#x6784;"/>
<node CREATED="1686887040442" ID="ID_1934938486" MODIFIED="1686887097767" TEXT="&#x5148;&#x5bf9;&#x9700;&#x8981;&#x7f13;&#x5b58;&#x7684;key&#x7ecf;&#x8fc7;n&#x6b21;hash&#x51fd;&#x6570;&#x7684;&#x8ba1;&#x7b97;&#xff0c;&#x5f97;&#x5230;n&#x4e2a;&#x4e0b;&#x6807;"/>
<node CREATED="1686887098488" ID="ID_1926394972" MODIFIED="1686887118289" TEXT="&#x5c06;n&#x4e2a;&#x4e0b;&#x6807;&#x5bf9;&#x6570;&#x7ec4;&#x4e2d;&#x7684;&#x5bf9;&#x5e94;&#x4f4d;&#x7f6e;&#x8bbe;&#x7f6e;1"/>
<node CREATED="1686887118660" ID="ID_619753174" MODIFIED="1686887139283" TEXT="&#x67e5;&#x8be2;&#x65f6;&#xff0c;&#x540c;&#x6837;&#x5bf9;key&#x505a;n&#x6b21;hash&#x67e5;&#x8be2;"/>
<node CREATED="1686887139725" ID="ID_701115604" MODIFIED="1686887163805" TEXT="&#x5982;&#x679c;&#x67e5;&#x8be2;&#x51fa;&#x6765;&#x7684;n&#x4e2a;&#x4f4d;&#x7f6e;&#x90fd;&#x662f;1&#xff0c;&#x8bf4;&#x660e;&#x6570;&#x636e;&#x5e93;&#x4e2d;&#x5b58;&#x5728;"/>
<node CREATED="1686887164903" ID="ID_1864993074" MODIFIED="1686887175509" TEXT="&#x5982;&#x679c;&#x6709;&#x4e00;&#x4e2a;&#x4e0d;&#x4e3a;1&#xff0c;&#x8bf4;&#x660e;&#x6570;&#x636e;&#x5e93;&#x4e2d;&#x4e0d;&#x5b58;&#x5728;"/>
</node>
</node>
</node>
<node CREATED="1686802042967" ID="ID_635687090" MODIFIED="1686802053375" POSITION="left" TEXT="&#x7f13;&#x5b58;&#x4e00;&#x81f4;&#x6027;&#x95ee;&#x9898;&#x89e3;&#x51b3;&#x65b9;&#x6848;">
<node CREATED="1686887264101" ID="ID_93924594" MODIFIED="1686887329142" TEXT="&#x80cc;&#x666f;:&#x5f53;&#x6570;&#x636e;&#x6709;&#x66f4;&#x65b0;&#x9700;&#x6c42;&#x7684;&#x65f6;&#x5019;&#xff0c;&#x4f1a;&#x5bfc;&#x81f4;&#x7f13;&#x5b58;&#x8ddf;&#x6570;&#x636e;&#x5e93;&#x6570;&#x636e;&#x4e0d;&#x4e00;&#x81f4;&#xff0c;&#x5728;&#x9ad8;&#x5e76;&#x53d1;&#x7684;&#x60c5;&#x51b5;&#x4e0b;&#xff0c;&#x5982;&#x4f55;&#x4fdd;&#x8bc1;&#x7f13;&#x5b58;&#x8ddf;&#x6570;&#x636e;&#x5e93;&#x6570;&#x636e;&#x4e00;&#x81f4;"/>
<node CREATED="1686887403585" ID="ID_1059314833" MODIFIED="1686887997420" TEXT="&#x89e3;&#x51b3;&#x65b9;&#x6848;">
<node CREATED="1686887406589" ID="ID_1739830491" MODIFIED="1686887416450" TEXT="&#x5148;&#x5199;&#x7f13;&#x5b58;&#xff0c;&#x518d;&#x5199;&#x6570;&#x636e;&#x5e93;">
<node CREATED="1686887417502" ID="ID_1244463046" MODIFIED="1686887462267" TEXT="&#x5982;&#x679c;&#x5199;&#x7f13;&#x5b58;&#x6210;&#x529f;&#xff0c;&#x5199;&#x6570;&#x636e;&#x5e93;&#x5931;&#x8d25;&#xff0c;&#x90a3;&#x4e48;&#x5c31;&#x4f1a;&#x5bfc;&#x81f4;&#x6709;&#x810f;&#x6570;&#x636e;&#x51fa;&#x73b0;&#xff0c;&#x5e76;&#x4e14;&#x5199;&#x6570;&#x636e;&#x5e93;&#x5931;&#x8d25;&#x7684;&#x51e0;&#x7387;&#x6bd4;&#x5199;&#x7f13;&#x5b58;&#x7684;&#x51e0;&#x7387;&#x5927;&#x5f88;&#x591a;&#xff0c;&#x65f6;&#x95f4;&#x4e5f;&#x9700;&#x8981;&#x66f4;&#x957f;"/>
</node>
<node CREATED="1686887464868" ID="ID_1942967890" MODIFIED="1686887472174" TEXT="&#x5148;&#x5199;&#x6570;&#x636e;&#x5e93;&#xff0c;&#x518d;&#x5199;&#x7f13;&#x5b58;">
<node CREATED="1686887473132" ID="ID_392064020" MODIFIED="1686887520630" TEXT="&#x540c;&#x6837;&#x5982;&#x679c;&#x5199;&#x6570;&#x636e;&#x5e93;&#x6210;&#x529f;&#xff0c;&#x5199;&#x7f13;&#x5b58;&#x5931;&#x8d25;&#xff0c;&#x540c;&#x6837;&#x9020;&#x6210;&#x810f;&#x6570;&#x636e;&#x3002;&#x4e0d;&#x8fc7;&#x5199;&#x7f13;&#x5b58;&#x5931;&#x8d25;&#x7684;&#x6982;&#x7387;&#x6bd4;&#x8f83;&#x5c0f;&#xff0c;&#x6bd4;&#x524d;&#x9762;&#x4e00;&#x79cd;&#x65b9;&#x6848;&#x597d;&#x4e00;&#x4e9b;"/>
</node>
<node CREATED="1686887707137" ID="ID_330350552" MODIFIED="1686887718196" TEXT="&#x5148;&#x5220;&#x9664;&#x7f13;&#x5b58;&#xff0c;&#x518d;&#x66f4;&#x65b0;&#x6570;&#x636e;&#x5e93;">
<node CREATED="1686887719263" ID="ID_638145048" MODIFIED="1686887774487" TEXT="&#x5728;&#x591a;&#x4e2a;&#x7ebf;&#x7a0b;&#x7684;&#x73af;&#x5883;&#x4e0b;&#xff0c;&#x65e0;&#x8bba;&#x662f;&#x5148;&#x66f4;&#x65b0;&#x6570;&#x636e;&#x5e93;&#xff0c;&#x8fd8;&#x662f;&#x5148;&#x66f4;&#x65b0;&#x7f13;&#x5b58;&#xff0c;&#x90fd;&#x4f1a;&#x9020;&#x6210;&#x810f;&#x6570;&#x636e;&#x7684;&#x51fa;&#x73b0;&#xff0c;&#x5bfc;&#x81f4;&#x4e24;&#x4e2a;&#x7ebf;&#x7a0b;&#x62ff;&#x5230;&#x4e0d;&#x540c;&#x6570;&#x636e;&#x7684;&#x60c5;&#x51b5;&#x3002;"/>
<node CREATED="1686887775672" ID="ID_904196501" MODIFIED="1686887941763" TEXT="&#x5148;&#x5220;&#x9664;&#x7f13;&#x5b58;&#xff0c;&#x518d;&#x66f4;&#x65b0;&#x6570;&#x636e;&#x5e93;&#xff0c;&#x5c31;&#x53ef;&#x4ee5;&#x89e3;&#x51b3;&#x4ee5;&#x4e0a;&#x95ee;&#x9898;&#xff0c;&#x4f46;&#x662f;&#x4e5f;&#x4f1a;&#x6709;&#x65b0;&#x7684;&#x56f0;&#x6270;&#x3002;&#x4e00;&#x4e2a;&#x66f4;&#x65b0;&#x64cd;&#x4f5c;&#xff0c;&#x4e00;&#x4e2a;&#x67e5;&#x8be2;&#x64cd;&#x4f5c;&#xff0c;&#x66f4;&#x65b0;&#x64cd;&#x4f5c;&#x5220;&#x9664;&#x4e86;&#x7f13;&#x5b58;&#x4e4b;&#x540e;&#xff0c;&#x67e5;&#x8be2;&#x64cd;&#x4f5c;&#x53d1;&#x73b0;&#x7f13;&#x5b58;&#x6ca1;&#x6709;&#x503c;&#xff0c;&#x7136;&#x540e;&#x53bb;&#x6570;&#x636e;&#x5e93;&#x53d6;&#x4e86;&#x65b0;&#x7684;&#x8001;&#x7684;&#x6570;&#x636e;&#x653e;&#x5230;&#x7f13;&#x5b58;&#xff0c;&#x7136;&#x540e;&#x66f4;&#x65b0;&#x64cd;&#x4f5c;&#x628a;&#x6570;&#x636e;&#x5e93;&#x66f4;&#x65b0;&#x4e3a;&#x65b0;&#x7684;&#x503c;&#xff0c;&#x540c;&#x6837;&#x5bfc;&#x81f4;&#x4e86;&#x810f;&#x6570;&#x636e;&#x7684;&#x51fa;&#x73b0;"/>
</node>
<node CREATED="1686888000040" ID="ID_331476599" MODIFIED="1686888009361" TEXT="&#x5ef6;&#x8fdf;&#x53cc;&#x5220;">
<node CREATED="1686888061445" ID="ID_877952475" MODIFIED="1686888076204" TEXT="&#x540c;&#x6837;&#x662f;&#x4e00;&#x4e2a;&#x66f4;&#x65b0;&#x8bf7;&#x6c42;&#xff0c;&#x4e00;&#x4e2a;&#x67e5;&#x8be2;&#x8bf7;&#x6c42;"/>
<node CREATED="1686888079354" ID="ID_1531731472" MODIFIED="1686888097408" TEXT="&#x66f4;&#x65b0;&#x8bf7;&#x6c42;&#x5148;&#x5220;&#x9664;&#x7f13;&#x5b58;"/>
<node CREATED="1686888098080" ID="ID_963796271" MODIFIED="1686888122838" TEXT="&#x66f4;&#x65b0;&#x8bf7;&#x6c42;&#x66f4;&#x65b0;&#x6570;&#x636e;&#x5e93;&#xff0c;&#x67e5;&#x8be2;&#x8bf7;&#x6c42;&#x5148;&#x7761;&#x7720;&#x4e00;&#x6bb5;&#x65f6;&#x95f4;"/>
<node CREATED="1686888123332" ID="ID_848462041" MODIFIED="1686888143491" TEXT="&#x66f4;&#x65b0;&#x8bf7;&#x6c42;&#x66f4;&#x65b0;&#x5b8c;&#x6570;&#x636e;&#x5e93;&#x4e4b;&#x540e;&#xff0c;&#x518d;&#x6b21;&#x5220;&#x9664;&#x7f13;&#x5b58;"/>
<node CREATED="1686888149695" ID="ID_892181774" MODIFIED="1686888162174" TEXT="&#x67e5;&#x8be2;&#x8bf7;&#x6c42;&#x76f4;&#x63a5;&#x62ff;&#x7f13;&#x5b58;&#x6570;&#x636e;"/>
<node CREATED="1686888166322" ID="ID_814475540" MODIFIED="1686888179619" TEXT="PS&#xff1a;&#x8fd9;&#x91cc;&#x7684;&#x4f11;&#x7720;&#x65f6;&#x95f4;&#x5f88;&#x96be;&#x9884;&#x6d4b;&#x9700;&#x8981;&#x591a;&#x957f;&#x65f6;&#x95f4;&#xff0c;&#x6240;&#x4ee5;&#x4e0d;&#x5927;&#x5efa;&#x8bae;"/>
</node>
<node CREATED="1686888352685" ID="ID_761268031" MODIFIED="1686888360994" TEXT="&#x5148;&#x5199;&#x6570;&#x636e;&#x5e93;&#xff0c;&#x518d;&#x5220;&#x7f13;&#x5b58;">
<node CREATED="1686888389349" ID="ID_740077267" MODIFIED="1686888395347" TEXT="&#x6bd4;&#x8f83;&#x5b8c;&#x7f8e;&#x7684;&#x65b9;&#x6848;"/>
</node>
</node>
</node>
<node CREATED="1686802078702" ID="ID_1721704411" MODIFIED="1686802084731" POSITION="left" TEXT="redis&#x5b9e;&#x73b0;&#x7f13;&#x5b58;&#x5206;&#x5e03;&#x5f0f;&#x9501;">
<node CREATED="1686888671194" ID="ID_169822477" MODIFIED="1686888681163" TEXT="&#x901a;&#x8fc7;setnx&#x547d;&#x4ee4;&#x6765;&#x52a0;&#x9501;">
<node CREATED="1686888684436" ID="ID_1992364832" MODIFIED="1686888688678" TEXT="setnx&#x6267;&#x884c;&#x6210;&#x529f;"/>
<node CREATED="1686888689538" ID="ID_285369568" MODIFIED="1686888707353" TEXT="&#x6267;&#x884c;&#x65b9;&#x6cd5;&#x4f53;&#x5185;&#x7684;&#x4ee3;&#x7801;"/>
<node CREATED="1686888707770" ID="ID_1447280729" MODIFIED="1686888716707" TEXT="&#x6267;&#x884c;&#x5b8c;&#x6210;&#x5220;&#x9664;&#x8be5;key&#xff0c;&#x91ca;&#x653e;&#x9501;"/>
<node CREATED="1686888718622" ID="ID_1342284285" MODIFIED="1686888772063" TEXT="&#x5b58;&#x5728;&#x95ee;&#x9898;&#xff0c;&#x5982;&#x679c;&#x6267;&#x884c;&#x65b9;&#x6cd5;&#x4f53;&#x5185;&#x7684;&#x4ee3;&#x7801;&#x5931;&#x8d25;&#xff0c;&#x4e0d;&#x80fd;&#x591f;&#x53ca;&#x65f6;&#x91ca;&#x653e;&#x9501;&#xff0c;&#x90a3;&#x4e48;&#x5176;&#x4ed6;&#x7684;&#x8fdb;&#x7a0b;&#x90fd;&#x5c06;&#x6267;&#x884c;&#x4e0d;&#x4e86;&#xff0c;&#x89e3;&#x51b3;&#x65b9;&#x6848;&#x662f;&#x7ed9;&#x9501;&#x52a0;&#x4e00;&#x4e2a;&#x8fc7;&#x671f;&#x65f6;&#x95f4;"/>
</node>
<node CREATED="1686889016100" ID="ID_140346472" MODIFIED="1686889026650" TEXT="&#x901a;&#x8fc7;setnx+get+getset">
<node CREATED="1686889027785" ID="ID_823388612" MODIFIED="1686889041321" TEXT="setnx&#x52a0;&#x9501;&#xff0c;&#x9501;&#x662f;&#x5f53;&#x524d;&#x65f6;&#x95f4;+&#x8fc7;&#x671f;&#x65f6;&#x95f4;"/>
<node CREATED="1686889041694" ID="ID_80153734" MODIFIED="1686889069757" TEXT="get&#x9501;&#xff0c;&#x5f53;&#x9501;&#x7684;&#x65f6;&#x95f4;&lt;&#x5f53;&#x524d;&#x65f6;&#x95f4;&#xff0c;&#x4ee3;&#x8868;&#x53ef;&#x4ee5;&#x83b7;&#x5f97;&#x9501;"/>
<node CREATED="1686889070178" ID="ID_183791628" MODIFIED="1686889137674" TEXT="&#x8ba1;&#x7b97;&#x65b0;&#x7684;&#x8fc7;&#x671f;&#x65f6;&#x95f4;&#xff0c;&#x901a;&#x8fc7;getset&#x8bbe;&#x7f6e;&#x65b0;&#x9501;&#xff0c;&#x5e76;&#x4e14;&#x8fd4;&#x56de;&#x65e7;&#x7684;&#x9501;&#xff0c;&#x5982;&#x679c;&#x8fd4;&#x56de;&#x7684;&#x65e7;&#x9501;&#x8ddf;&#x4e0a;&#x4e00;&#x6b65;&#x6b65;&#x9aa4;&#x62ff;&#x5230;&#x7684;&#x503c;&#x76f8;&#x540c;&#xff0c;&#x4ee3;&#x8868;&#x53ef;&#x4ee5;&#x6267;&#x884c;"/>
<node CREATED="1686889160651" ID="ID_1030508739" MODIFIED="1686889166955" TEXT="&#x6267;&#x884c;&#x65b9;&#x6cd5;&#x4f53;&#xff0c;&#x91ca;&#x653e;&#x9501;"/>
</node>
<node CREATED="1686889305071" ID="ID_210340624" MODIFIED="1686889308351" TEXT="redlock"/>
<node CREATED="1686889308712" ID="ID_533800377" MODIFIED="1686889326958" TEXT="redisson"/>
</node>
<node CREATED="1686801980685" ID="ID_134739828" MODIFIED="1686801989256" POSITION="left" TEXT="&#x4e24;&#x79cd;&#x6301;&#x4e45;&#x5316;&#x65b9;&#x5f0f;">
<node CREATED="1686809358288" ID="ID_1135900081" MODIFIED="1686809360676" TEXT="RDB">
<node CREATED="1686809613563" ID="ID_1909572437" MODIFIED="1686809673793" TEXT="&#x57fa;&#x4e8e;&#x65f6;&#x95f4;&#x70b9;&#x505a;&#x505a;&#x5feb;&#x7167;&#xff0c;&#x5176;&#x9ed8;&#x8ba4;&#x662f;&#x53ea;&#x4fdd;&#x7559;&#x5f53;&#x524d;&#x6700;&#x5c0f;&#x5dee;&#x5f02;&#x7684;&#x5feb;&#x7167;&#xff0c;&#x7279;&#x70b9;&#x662f;&#x6267;&#x884c;&#x901f;&#x5ea6;&#x5feb;&#xff0c;&#x7f3a;&#x70b9;&#x662f;&#x53ef;&#x80fd;&#x4e22;&#x5931;&#x4e0a;&#x6b21;&#x5feb;&#x7167;&#x65f6;&#x95f4;&#x5230;&#x5f53;&#x524d;&#x65f6;&#x95f4;&#x76f4;&#x63a5;&#x672a;&#x505a;&#x5feb;&#x7167;&#x7684;&#x6570;&#x636e;"/>
<node CREATED="1686809674998" ID="ID_55680045" MODIFIED="1686809684324" TEXT="&#x4e09;&#x79cd;&#x5feb;&#x7167;&#x65b9;&#x5f0f;&#xff1a;">
<node CREATED="1686809685391" ID="ID_1411030736" MODIFIED="1686809705123" TEXT="save&#xff1a;&#x540c;&#x6b65;&#xff0c;&#x963b;&#x585e;redis&#x5176;&#x4ed6;&#x547d;&#x4ee4;"/>
<node CREATED="1686809705501" ID="ID_1271601135" MODIFIED="1686809713560" TEXT="bgsave&#xff1a;&#x5f02;&#x6b65;&#x540e;&#x53f0;&#x6267;&#x884c;"/>
<node CREATED="1686809713819" ID="ID_407370819" MODIFIED="1686809726777" TEXT="&#x81ea;&#x52a8;&#xff1a;&#x5236;&#x5b9a;&#x89c4;&#x5219;&#xff0c;&#x81ea;&#x5df1;&#x6267;&#x884c;"/>
</node>
<node CREATED="1686809806506" ID="ID_1747340758" MODIFIED="1686809810203" TEXT="&#x4f18;&#x7f3a;&#x70b9;&#xff1a;">
<node CREATED="1686809811371" ID="ID_746787569" MODIFIED="1686809899577" TEXT="&#x4f18;&#x70b9;">
<node CREATED="1686809814688" ID="ID_612871132" MODIFIED="1686809852858" TEXT="&#x6700;&#x5927;&#x5316;Redis&#x6027;&#x80fd;&#xff0c;&#x56e0;&#x4e3a;&#x53ef;&#x4ee5;fork&#x51fa;&#x4e00;&#x4e2a;&#x5b50;&#x8fdb;&#x7a0b;&#x505a;&#x5907;&#x4efd;&#xff0c;&#x4e0d;&#x5f71;&#x54cd;&#x7236;&#x8fdb;&#x7a0b;&#x7684;&#x8fd0;&#x8f6c;"/>
<node CREATED="1686809853269" ID="ID_1661188998" MODIFIED="1686809876316" TEXT="RDB&#x5728;&#x5927;&#x91cf;&#x6570;&#x636e;&#x65f6;&#xff0c;&#x6062;&#x590d;&#x901f;&#x5ea6;&#x6bd4;AO&#x5feb;"/>
</node>
<node CREATED="1686809900187" ID="ID_1049836081" MODIFIED="1686809903327" TEXT="&#x7f3a;&#x70b9;">
<node CREATED="1686809904534" ID="ID_1852405551" MODIFIED="1686809964052" TEXT="&#x4e0d;&#x80fd;&#x5b9e;&#x65f6;&#x4fdd;&#x5b58;&#x6570;&#x636e;&#xff0c;&#x53ef;&#x80fd;&#x4f1a;&#x4e22;&#x5931;&#x4e0a;&#x4e00;&#x6b21;&#x5feb;&#x7167;&#x5230;&#x5f53;&#x524d;&#x5185;&#x5b58;&#x7684;&#x6570;&#x636e;&#x3002;&#x5f88;&#x6709;&#x53ef;&#x80fd;&#x5728;&#x5907;&#x4efd;&#x7684;&#x8fc7;&#x7a0b;&#x4e2d;&#x53d1;&#x751f;&#x5b95;&#x673a;&#xff0c;&#x5bfc;&#x81f4;&#x6570;&#x636e;&#x4e22;&#x5931;"/>
<node CREATED="1686809923723" ID="ID_1022682272" MODIFIED="1686810009499" TEXT="&#x5f53;&#x6570;&#x636e;&#x91cf;&#x975e;&#x5e38;&#x5927;&#x7684;&#x65f6;&#x5019;&#xff0c;&#x5907;&#x4efd;&#x7684;&#x65f6;&#x95f4;&#x53ef;&#x80fd;&#x4f1a;&#x5f88;&#x957f;"/>
</node>
</node>
<node CREATED="1686812510195" ID="ID_441778623" MODIFIED="1686812515234" TEXT="&#x9ed8;&#x8ba4;&#x7684;&#x6301;&#x4e45;&#x5316;&#x65b9;&#x5f0f;"/>
</node>
<node CREATED="1686809361513" ID="ID_716963616" MODIFIED="1686809365803" TEXT="AOF">
<node CREATED="1686810075436" ID="ID_1157257130" MODIFIED="1686810097958" TEXT="AppendOnlyFile&#xff0c;&#x6309;&#x7167;&#x64cd;&#x4f5c;&#x987a;&#x5e8f;&#x5c06;&#x64cd;&#x4f5c;&#x8ffd;&#x52a0;&#x5230;&#x6307;&#x5b9a;&#x7684;&#x65e5;&#x5fd7;&#x6587;&#x4ef6;&#x672b;&#x5c3e;"/>
<node CREATED="1686810098470" ID="ID_1100462652" MODIFIED="1686810166431" TEXT="AOF&#x4e00;&#x6837;&#x4f7f;&#x7528;&#x5199;&#x65f6;&#x590d;&#x5236;&#x673a;&#x5236;&#xff0c;AOF&#x9ed8;&#x8ba4;&#x662f;&#x6bcf;&#x79d2;&#x949f;&#x6267;&#x884c;&#x4e00;&#x6b21;&#x547d;&#x4ee4;fsync&#x3002;&#x5982;&#x679c;&#x4e22;&#x5931;&#x4e5f;&#x53ea;&#x662f;&#x4e22;&#x5931;&#x4e00;&#x79d2;&#x949f;&#x5185;&#x7684;&#x6570;&#x636e;&#x3002;&#x4e5f;&#x53ef;&#x4ee5;&#x8bbe;&#x7f6e;&#x6210;&#x6bcf;&#x6b21;&#x64cd;&#x4f5c;&#x90fd;&#x6267;&#x884c;fsync"/>
<node CREATED="1686810179487" ID="ID_873440906" MODIFIED="1686810286793" TEXT="&#x540c;&#x65f6;&#x542f;&#x7528;AOF&#x548c;RDB&#xff0c;&#x8fdb;&#x884c;&#x6062;&#x590d;&#x65f6;&#xff0c;AOF&#x7684;&#x4f18;&#x5148;&#x7ea7;&#x9ad8;&#x4e8e;RDB&#xff0c;&#x4e5f;&#x5c31;&#x662f;&#x4f1a;&#x4f7f;&#x7528;AOF&#x6587;&#x4ef6;&#x8fdb;&#x884c;&#x6062;&#x590d;&#x3002;AOF&#x9ed8;&#x8ba4;&#x5173;&#x95ed;&#x7684;&#xff0c;&#x5982;&#x679c;&#x7b2c;&#x4e00;&#x6b21;&#x6253;&#x5f00;&#xff0c;&#x800c;&#x7b2c;&#x4e00;&#x6b21;&#x5e76;&#x6ca1;&#x6709;AOF&#x6587;&#x4ef6;&#xff0c;&#x8fd9;&#x65f6;&#x5019;&#x4f7f;&#x7528;AOF&#x6062;&#x590d;&#x6570;&#x636e;&#xff0c;&#x4f1a;&#x5bfc;&#x81f4;&#x6240;&#x6709;&#x6570;&#x636e;&#x4e22;&#x5931;"/>
<node CREATED="1686810303990" ID="ID_1800070282" MODIFIED="1686810350509" TEXT="AOF rewrite&#xff1a;&#x5c06;&#x4e00;&#x4e9b;&#x91cd;&#x590d;&#x7684;&#xff0c;&#x53ef;&#x4ee5;&#x5408;&#x5e76;&#x7684;&#xff0c;&#x8fc7;&#x671f;&#x7684;&#x6570;&#x636e;&#x91cd;&#x65b0;&#x5199;&#x5165;&#x5230;&#x4e00;&#x4e2a;&#x65b0;&#x7684;AOF&#x6587;&#x4ef6;&#x4e2d;&#xff0c;&#x4ece;&#x800c;&#x8282;&#x7ea6;AOF&#x5907;&#x4efd;&#x5360;&#x7528;&#x7684;&#x78c1;&#x76d8;&#x7a7a;&#x95f4;&#xff0c;&#x4e5f;&#x80fd;&#x52a0;&#x901f;&#x6062;&#x590d;&#x8fc7;&#x7a0b;"/>
<node CREATED="1686810391515" ID="ID_1198555900" MODIFIED="1686810395620" TEXT="&#x4f18;&#x70b9;&#xff1a;">
<node CREATED="1686810396585" ID="ID_257617492" MODIFIED="1686810467130" TEXT="&#x6570;&#x636e;&#x5b89;&#x5168;&#x6027;&#x8f83;&#x9ad8;&#xff0c;&#x6839;&#x636e;&#x9ed8;&#x8ba4;&#x7684;&#x7b56;&#x7565;&#xff08;appendfsync everysec&#xff09;&#x5373;&#x6bcf;&#x79d2;&#x949f;&#x6267;&#x884c;&#x4e00;&#x6b21;&#xff0c;&#x5728;&#x8fd9;&#x79cd;&#x914d;&#x7f6e;&#x4e0b;&#xff0c;&#x5c31;&#x7b97;&#x53d1;&#x751f;&#x5b95;&#x673a;&#xff0c;&#x6700;&#x540e;&#x53ea;&#x4f1a;&#x4e22;&#x5931;&#x4e00;&#x79d2;&#x949f;&#x7684;&#x6570;&#x636e;"/>
<node CREATED="1686810467414" ID="ID_1140070800" MODIFIED="1686810518117" TEXT="&#x7531;&#x4e8e;&#x8be5;&#x673a;&#x5236;&#x91c7;&#x7528;&#x7684;&#x662f;append&#xff0c;&#x800c;&#x4e0d;&#x9700;&#x8981;seek&#x64cd;&#x4f5c;&#xff0c;&#x6240;&#x4ee5;&#x5c31;&#x7b97;&#x64cd;&#x4f5c;&#x5931;&#x8d25;&#xff0c;&#x4e5f;&#x4e0d;&#x4f1a;&#x7834;&#x574f;&#x5df2;&#x7ecf;&#x5b58;&#x5728;&#x7684;&#x5185;&#x5bb9;"/>
<node CREATED="1686811296913" ID="ID_212785835" MODIFIED="1686811336631" TEXT="redis&#x53ef;&#x4ee5;&#x5728;aof&#x6587;&#x4ef6;&#x8fc7;&#x5927;&#x7684;&#x65f6;&#x5019;&#xff0c;&#x81ea;&#x52a8;&#x8fdb;&#x884c;&#x91cd;&#x5199;"/>
</node>
<node CREATED="1686811370765" ID="ID_179616713" MODIFIED="1686811373460" TEXT="&#x7f3a;&#x70b9;&#xff1a;">
<node CREATED="1686811374329" ID="ID_169390206" MODIFIED="1686811400547" TEXT="&#x5373;&#x4f7f;&#x662f;&#x91cd;&#x590d;&#x7684;&#x64cd;&#x4f5c;&#xff0c;AOF&#x4e5f;&#x4f1a;&#x5168;&#x90e8;&#x8bb0;&#x5f55;&#xff0c;aof&#x6587;&#x4ef6;&#x8981;&#x6bd4;rdb&#x6587;&#x4ef6;&#x5927;&#x5f88;&#x591a;"/>
<node CREATED="1686811400769" ID="ID_286971420" MODIFIED="1686811411169" TEXT="aof&#x5728;&#x6062;&#x590d;&#x65f6;&#x8981;&#x6bd4;rdb&#x6062;&#x590d;&#x65f6;&#x95f4; &#x957f;"/>
<node CREATED="1686811411392" ID="ID_1130671183" MODIFIED="1686811427153" TEXT="&#x6839;&#x636e;fsync&#x7684;&#x7b56;&#x7565;&#xff0c;&#x53ef;&#x80fd;aof&#x8981;&#x6bd4;rdb&#x6162;"/>
<node CREATED="1686811427387" ID="ID_103711510" MODIFIED="1686811435364" TEXT="bug&#x51fa;&#x73b0;&#x7684;&#x53ef;&#x80fd;&#x6027;&#x9ad8;"/>
</node>
</node>
<node CREATED="1686812003996" ID="ID_1208100695" MODIFIED="1686812014216" TEXT="&#x4e0d;&#x540c;&#x6301;&#x4e45;&#x5316;&#x8fc7;&#x7a0b;&#x7684;&#x4f18;&#x7f3a;&#x70b9;&#x5bf9;&#x6bd4;&#x53ca;&#x9009;&#x62e9;">
<node CREATED="1686812016040" ID="ID_1117262482" MODIFIED="1686812023442" TEXT="RDB">
<node CREATED="1686812024439" ID="ID_635124306" MODIFIED="1686812106717" TEXT="&#x9002;&#x5408;&#x505a;&#x51b7;&#x5907;&#xff1a;&#x56e0;&#x4e3a;RDB&#x65b9;&#x5f0f;&#x4f1a;&#x5728;&#x6bcf;&#x6b21;&#x5907;&#x4efd;&#x7684;&#x65f6;&#x5019;&#x751f;&#x6210;&#x4e00;&#x4e2a;&#x65b0;&#x7684;&#x6587;&#x4ef6;&#xff0c;&#x5927;&#x91cf;&#x7684;&#x5907;&#x4efd;&#x6587;&#x4ef6;&#xff0c;&#x53ef;&#x4ee5;&#x5b9a;&#x65f6;&#x7684;&#x5c06;&#x8fd9;&#x4e9b;&#x6587;&#x4ef6;&#x540c;&#x6b65;&#x5230;&#x8fdc;&#x7a0b;&#x7684;&#x670d;&#x52a1;&#x5668;&#x505a;&#x5b58;&#x50a8;&#x3002;"/>
<node CREATED="1686812117788" ID="ID_927874836" MODIFIED="1686812156370" TEXT="&#x76f8;&#x6bd4;AOF&#xff0c;RDB&#x65b9;&#x5f0f;&#x66f4;&#x52a0;&#x5feb;&#x901f;&#xff0c;&#x56e0;&#x4e3a;RDB&#x8bb0;&#x5f55;&#x7684;&#x662f;&#x6570;&#x636e;&#x6587;&#x4ef6;&#xff0c;&#x76f4;&#x63a5;&#x52a0;&#x8f7d;&#x5230;redis&#x7684;&#x5185;&#x5b58;&#x4e2d;&#x5373;&#x53ef;&#x4f7f;&#x7528;&#x3002;AOF&#x6587;&#x4ef6;&#x662f;&#x64cd;&#x4f5c;&#x65e5;&#x5fd7;&#xff0c;&#x9700;&#x8981;&#x65f6;&#x95f4;&#x6267;&#x884c;&#x6062;&#x590d;"/>
<node CREATED="1686812171853" ID="ID_353471223" MODIFIED="1686812199143" TEXT="RDB&#x6bcf;&#x6b21;&#x5199;&#x90fd;&#x662f;&#x76f4;&#x63a5;&#x5199;&#x5185;&#x5b58;&#xff0c;&#x4f46;&#x662f;AOF&#x6bcf;&#x6b21; &#x90fd;&#x662f;&#x5199;&#x6587;&#x4ef6;&#xff0c;&#x6240;&#x4ee5;QPS&#x6765;&#x8bf4;&#xff0c;RDB&#x66f4;&#x9ad8;"/>
<node CREATED="1686812199741" ID="ID_1284825528" MODIFIED="1686812228014" TEXT="RDB&#x56e0;&#x4e3a;&#x662f;&#x5b9a;&#x65f6;&#x505a;&#x5907;&#x4efd;&#xff0c;&#x5982;&#x679c;&#x5728;&#x505a;&#x5907;&#x4efd;&#x65f6;&#x51fa;&#x73b0;&#x5b95;&#x673a;&#xff0c;&#x5219;&#x4f1a;&#x51fa;&#x73b0;&#x6570;&#x636e;&#x4e22;&#x5931;"/>
<node CREATED="1686812235574" ID="ID_108725340" MODIFIED="1686812262506" TEXT="RDB&#x65f6;&#x5019;&#xff0c;&#x9700;&#x8981;fork&#x5b50;&#x8fdb;&#x7a0b;&#xff0c;&#x5982;&#x679c;&#x6570;&#x636e;&#x91cf;&#x7279;&#x522b;&#x5927;&#xff0c;&#x90a3;&#x4e48;fork&#x65f6;&#x95f4;&#x4f1a;&#x6bd4;&#x8f83;&#x957f;&#xff0c;&#x5f71;&#x54cd;&#x4e3b;&#x8fdb;&#x7a0b;"/>
<node CREATED="1686812262860" ID="ID_403318812" MODIFIED="1686812278412" TEXT="RDB&#x65e0;&#x6cd5;&#x652f;&#x6301;&#x5b9e;&#x65f6;&#x6216;&#x8005;&#x79d2;&#x7ea7;&#x6301;&#x4e45;&#x5316;"/>
</node>
<node CREATED="1686812287319" ID="ID_544444284" MODIFIED="1686812290878" TEXT="AOF">
<node CREATED="1686812291724" ID="ID_228267482" MODIFIED="1686812306060" TEXT="AOF&#x53ef;&#x4ee5;&#x66f4;&#x597d;&#x7684;&#x4fdd;&#x6301;&#x6570;&#x636e;&#xff0c;&#x56e0;&#x4e3a;&#x662f;&#x79d2;&#x7ea7;&#x6301;&#x4e45;&#x5316;"/>
<node CREATED="1686812306380" ID="ID_762409959" MODIFIED="1686812322310" TEXT="&#x4ee5;append-only&#x6a21;&#x5f0f;&#x5199;&#x5165;&#xff0c;&#x5199;&#x5165;&#x6027;&#x80fd;&#x6bd4;&#x8f83;&#x9ad8;"/>
<node CREATED="1686812322508" ID="ID_561924159" MODIFIED="1686812353847" TEXT="AOF&#x65e5;&#x5fd7;&#x5373;&#x4f7f;&#x8fc7;&#x5927;&#x7684;&#x65f6;&#x5019;&#xff0c;&#x540e;&#x53f0;&#x51fa;&#x73b0;&#x91cd;&#x5199;&#xff0c;&#x4e5f;&#x4e0d;&#x4f1a;&#x5bf9;&#x5ba2;&#x6237;&#x7aef;&#x7684;&#x8bfb;&#x5199;&#x6709;&#x5f71;&#x54cd;"/>
<node CREATED="1686812354106" ID="ID_676359247" MODIFIED="1686812376469" TEXT="&#x9002;&#x5408;&#x505a;&#x707e;&#x96be;&#x6027;&#x7684;&#x7d27;&#x6025;&#x6062;&#x590d;"/>
</node>
<node CREATED="1686812421661" ID="ID_923140463" MODIFIED="1686812479864" TEXT="&#x4e0d;&#x8981;&#x7b80;&#x5355;&#x7684;&#x7528;&#x4e00;&#x79cd;&#x65b9;&#x5f0f;&#x505a;&#x6301;&#x4e45;&#x5316;&#xff0c;&#x56e0;&#x4e3a;&#x4ec5;&#x7528;RDB&#xff0c;&#x53ef;&#x80fd;&#x9020;&#x6210;&#x6570;&#x636e;&#x4e22;&#x5931;&#x3002;&#x4ec5;&#x7528;AOF&#xff0c;&#x51b7;&#x5907;&#x7684;&#x6570;&#x636e;&#x6ca1;&#x6709;RDB&#x9ad8;&#xff0c;&#x6062;&#x590d;&#x901f;&#x5ea6;&#x6ca1;&#x6709;RDB&#x5feb;"/>
</node>
</node>
</node>
</map>
