œ
IC:\sonarqube\projects\SonarProject\SonarProject\App_Start\BundleConfig.cs
	namespace 	
SonarProject
 
{ 
public 

class 
BundleConfig 
{ 
public		 
static		 
void		 
RegisterBundles		 *
(		* +
BundleCollection		+ ;
bundles		< C
)		C D
{

 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) ;
); <
.< =
Include= D
(D E
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str 4
)4 5
)5 6
;6 7
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
,. /
$str ,
), -
)- .
;. /
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
} 	
} 
} ¯
IC:\sonarqube\projects\SonarProject\SonarProject\App_Start\FilterConfig.cs
	namespace 	
SonarProject
 
{ 
public 

class 
FilterConfig 
{ 
public 
static 
void !
RegisterGlobalFilters 0
(0 1"
GlobalFilterCollection1 G
filtersH O
)O P
{		 	
filters

 
.

 
Add

 
(

 
new

  
HandleErrorAttribute

 0
(

0 1
)

1 2
)

2 3
;

3 4
} 	
} 
} ∏:
KC:\sonarqube\projects\SonarProject\SonarProject\App_Start\IdentityConfig.cs
	namespace 	
SonarProject
 
{ 
public 

class 
EmailService 
: #
IIdentityMessageService  7
{ 
public 
Task 
	SendAsync 
( 
IdentityMessage -
message. 5
)5 6
{ 	
return 
Task 
. 

FromResult "
(" #
$num# $
)$ %
;% &
} 	
} 
public 

class 

SmsService 
: #
IIdentityMessageService 5
{ 
public 
Task 
	SendAsync 
( 
IdentityMessage -
message. 5
)5 6
{ 	
return 
Task 
. 

FromResult "
(" #
$num# $
)$ %
;% &
}   	
}!! 
public$$ 

class$$ "
ApplicationUserManager$$ '
:$$( )
UserManager$$* 5
<$$5 6
ApplicationUser$$6 E
>$$E F
{%% 
public&& "
ApplicationUserManager&& %
(&&% &

IUserStore&&& 0
<&&0 1
ApplicationUser&&1 @
>&&@ A
store&&B G
)&&G H
:'' 
base'' 
('' 
store'' 
)'' 
{(( 	
})) 	
public++ 
static++ "
ApplicationUserManager++ ,
Create++- 3
(++3 4"
IdentityFactoryOptions++4 J
<++J K"
ApplicationUserManager++K a
>++a b
options++c j
,++j k
IOwinContext++l x
context	++y Ä
)
++Ä Å
{,, 	
var-- 
manager-- 
=-- 
new-- "
ApplicationUserManager-- 4
(--4 5
new--5 8
	UserStore--9 B
<--B C
ApplicationUser--C R
>--R S
(--S T
context--T [
.--[ \
Get--\ _
<--_ ` 
ApplicationDbContext--` t
>--t u
(--u v
)--v w
)--w x
)--x y
;--y z
manager// 
.// 
UserValidator// !
=//" #
new//$ '
UserValidator//( 5
<//5 6
ApplicationUser//6 E
>//E F
(//F G
manager//G N
)//N O
{00 *
AllowOnlyAlphanumericUserNames11 .
=11/ 0
false111 6
,116 7
RequireUniqueEmail22 "
=22# $
true22% )
}33 
;33 
manager66 
.66 
PasswordValidator66 %
=66& '
new66( +
PasswordValidator66, =
{77 
RequiredLength88 
=88  
$num88! "
,88" ##
RequireNonLetterOrDigit99 '
=99( )
true99* .
,99. /
RequireDigit:: 
=:: 
true:: #
,::# $
RequireLowercase;;  
=;;! "
true;;# '
,;;' (
RequireUppercase<<  
=<<! "
true<<# '
,<<' (
}== 
;== 
manager@@ 
.@@ '
UserLockoutEnabledByDefault@@ /
=@@0 1
true@@2 6
;@@6 7
managerAA 
.AA )
DefaultAccountLockoutTimeSpanAA 1
=AA2 3
TimeSpanAA4 <
.AA< =
FromMinutesAA= H
(AAH I
$numAAI J
)AAJ K
;AAK L
managerBB 
.BB 0
$MaxFailedAccessAttemptsBeforeLockoutBB 8
=BB9 :
$numBB; <
;BB< =
managerFF 
.FF %
RegisterTwoFactorProviderFF -
(FF- .
$strFF. :
,FF: ;
newFF< ?$
PhoneNumberTokenProviderFF@ X
<FFX Y
ApplicationUserFFY h
>FFh i
{GG 
MessageFormatHH 
=HH 
$strHH  ;
}II 
)II 
;II 
managerJJ 
.JJ %
RegisterTwoFactorProviderJJ -
(JJ- .
$strJJ. :
,JJ: ;
newJJ< ?
EmailTokenProviderJJ@ R
<JJR S
ApplicationUserJJS b
>JJb c
{KK 
SubjectLL 
=LL 
$strLL )
,LL) *

BodyFormatMM 
=MM 
$strMM 8
}NN 
)NN 
;NN 
managerOO 
.OO 
EmailServiceOO  
=OO! "
newOO# &
EmailServiceOO' 3
(OO3 4
)OO4 5
;OO5 6
managerPP 
.PP 

SmsServicePP 
=PP  
newPP! $

SmsServicePP% /
(PP/ 0
)PP0 1
;PP1 2
varQQ "
dataProtectionProviderQQ &
=QQ' (
optionsQQ) 0
.QQ0 1"
DataProtectionProviderQQ1 G
;QQG H
ifRR 
(RR "
dataProtectionProviderRR &
!=RR' )
nullRR* .
)RR. /
{SS 
managerTT 
.TT 
UserTokenProviderTT )
=TT* +
newUU &
DataProtectorTokenProviderUU 2
<UU2 3
ApplicationUserUU3 B
>UUB C
(UUC D"
dataProtectionProviderUUD Z
.UUZ [
CreateUU[ a
(UUa b
$strUUb t
)UUt u
)UUu v
;UUv w
}VV 
returnWW 
managerWW 
;WW 
}XX 	
}YY 
public\\ 

class\\ $
ApplicationSignInManager\\ )
:\\* +
SignInManager\\, 9
<\\9 :
ApplicationUser\\: I
,\\I J
string\\K Q
>\\Q R
{]] 
public^^ $
ApplicationSignInManager^^ '
(^^' ("
ApplicationUserManager^^( >
userManager^^? J
,^^J K"
IAuthenticationManager^^L b!
authenticationManager^^c x
)^^x y
:__ 
base__ 
(__ 
userManager__ 
,__ !
authenticationManager__  5
)__5 6
{`` 	
}aa 	
publiccc 
overridecc 
Taskcc 
<cc 
ClaimsIdentitycc +
>cc+ ,#
CreateUserIdentityAsynccc- D
(ccD E
ApplicationUserccE T
userccU Y
)ccY Z
{dd 	
returnee 
useree 
.ee %
GenerateUserIdentityAsyncee 1
(ee1 2
(ee2 3"
ApplicationUserManageree3 I
)eeI J
UserManagereeJ U
)eeU V
;eeV W
}ff 	
publichh 
statichh $
ApplicationSignInManagerhh .
Createhh/ 5
(hh5 6"
IdentityFactoryOptionshh6 L
<hhL M$
ApplicationSignInManagerhhM e
>hhe f
optionshhg n
,hhn o
IOwinContexthhp |
context	hh} Ñ
)
hhÑ Ö
{ii 	
returnjj 
newjj $
ApplicationSignInManagerjj /
(jj/ 0
contextjj0 7
.jj7 8
GetUserManagerjj8 F
<jjF G"
ApplicationUserManagerjjG ]
>jj] ^
(jj^ _
)jj_ `
,jj` a
contextjjb i
.jji j
Authenticationjjj x
)jjx y
;jjy z
}kk 	
}ll 
}mm ÷
HC:\sonarqube\projects\SonarProject\SonarProject\App_Start\RouteConfig.cs
	namespace 	
SonarProject
 
{		 
public

 

class

 
RouteConfig

 
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
,E F
idG I
=J K
UrlParameterL X
.X Y
OptionalY a
}b c
) 
; 
} 	
} 
} Í
IC:\sonarqube\projects\SonarProject\SonarProject\App_Start\Startup.Auth.cs
	namespace

 	
SonarProject


 
{ 
public 

partial 
class 
Startup  
{ 
public 
void 
ConfigureAuth !
(! "
IAppBuilder" -
app. 1
)1 2
{ 	
app 
.  
CreatePerOwinContext $
($ % 
ApplicationDbContext% 9
.9 :
Create: @
)@ A
;A B
app 
.  
CreatePerOwinContext $
<$ %"
ApplicationUserManager% ;
>; <
(< ="
ApplicationUserManager= S
.S T
CreateT Z
)Z [
;[ \
app 
.  
CreatePerOwinContext $
<$ %$
ApplicationSignInManager% =
>= >
(> ?$
ApplicationSignInManager? W
.W X
CreateX ^
)^ _
;_ `
app 
. #
UseCookieAuthentication '
(' (
new( +'
CookieAuthenticationOptions, G
{ 
AuthenticationType "
=# $&
DefaultAuthenticationTypes% ?
.? @
ApplicationCookie@ Q
,Q R
	LoginPath 
= 
new 

PathString  *
(* +
$str+ ;
); <
,< =
Provider 
= 
new (
CookieAuthenticationProvider ;
{ 
OnValidateIdentity!! &
=!!' ("
SecurityStampValidator!!) ?
.!!? @
OnValidateIdentity!!@ R
<!!R S"
ApplicationUserManager!!S i
,!!i j
ApplicationUser!!k z
>!!z {
(!!{ |
validateInterval"" (
:""( )
TimeSpan""* 2
.""2 3
FromMinutes""3 >
(""> ?
$num""? A
)""A B
,""B C
regenerateIdentity## *
:##* +
(##, -
manager##- 4
,##4 5
user##6 :
)##: ;
=>##< >
user##? C
.##C D%
GenerateUserIdentityAsync##D ]
(##] ^
manager##^ e
)##e f
)##f g
}$$ 
}%% 
)%% 
;%% 
app&& 
.&& #
UseExternalSignInCookie&& '
(&&' (&
DefaultAuthenticationTypes&&( B
.&&B C
ExternalCookie&&C Q
)&&Q R
;&&R S
app)) 
.)) $
UseTwoFactorSignInCookie)) (
())( )&
DefaultAuthenticationTypes))) C
.))C D
TwoFactorCookie))D S
,))S T
TimeSpan))U ]
.))] ^
FromMinutes))^ i
())i j
$num))j k
)))k l
)))l m
;))m n
app.. 
... -
!UseTwoFactorRememberBrowserCookie.. 1
(..1 2&
DefaultAuthenticationTypes..2 L
...L M*
TwoFactorRememberBrowserCookie..M k
)..k l
;..l m
}BB 	
}CC 
}DD ’§
PC:\sonarqube\projects\SonarProject\SonarProject\Controllers\AccountController.cs
	namespace 	
SonarProject
 
. 
Controllers "
{ 
[ 
	Authorize 
] 
public 

class 
AccountController "
:# $

Controller% /
{ 
private $
ApplicationSignInManager (
_signInManager) 7
;7 8
private "
ApplicationUserManager &
_userManager' 3
;3 4
public 
AccountController  
(  !
)! "
{ 	
} 	
public 
AccountController  
(  !"
ApplicationUserManager! 7
userManager8 C
,C D$
ApplicationSignInManagerE ]
signInManager^ k
)l m
{ 	
UserManager 
= 
userManager %
;% &
SignInManager 
= 
signInManager )
;) *
} 	
public $
ApplicationSignInManager '
SignInManager( 5
{   	
get!! 
{"" 
return## 
_signInManager## %
??##& (
HttpContext##) 4
.##4 5
GetOwinContext##5 C
(##C D
)##D E
.##E F
Get##F I
<##I J$
ApplicationSignInManager##J b
>##b c
(##c d
)##d e
;##e f
}$$ 
private%% 
set%% 
{&& 
_signInManager'' 
=''  
value''! &
;''& '
}(( 
})) 	
public++ "
ApplicationUserManager++ %
UserManager++& 1
{,, 	
get-- 
{.. 
return// 
_userManager// #
??//$ &
HttpContext//' 2
.//2 3
GetOwinContext//3 A
(//A B
)//B C
.//C D
GetUserManager//D R
<//R S"
ApplicationUserManager//S i
>//i j
(//j k
)//k l
;//l m
}00 
private11 
set11 
{22 
_userManager33 
=33 
value33 $
;33$ %
}44 
}55 	
[99 	
AllowAnonymous99	 
]99 
public:: 
ActionResult:: 
Login:: !
(::! "
string::" (
	returnUrl::) 2
)::2 3
{;; 	
ViewBag<< 
.<< 
	ReturnUrl<< 
=<< 
	returnUrl<<  )
;<<) *
return== 
View== 
(== 
)== 
;== 
}>> 	
[BB 	
HttpPostBB	 
]BB 
[CC 	
AllowAnonymousCC	 
]CC 
[DD 	$
ValidateAntiForgeryTokenDD	 !
]DD! "
publicEE 
asyncEE 
TaskEE 
<EE 
ActionResultEE &
>EE& '
LoginEE( -
(EE- .
LoginViewModelEE. <
modelEE= B
,EEB C
stringEED J
	returnUrlEEK T
)EET U
{FF 	
ifGG 
(GG 
!GG 

ModelStateGG 
.GG 
IsValidGG #
)GG# $
{HH 
returnII 
ViewII 
(II 
modelII !
)II! "
;II" #
}JJ 
varNN 
resultNN 
=NN 
awaitNN 
SignInManagerNN ,
.NN, -
PasswordSignInAsyncNN- @
(NN@ A
modelNNA F
.NNF G
EmailNNG L
,NNL M
modelNNN S
.NNS T
PasswordNNT \
,NN\ ]
modelNN^ c
.NNc d

RememberMeNNd n
,NNn o
shouldLockoutNNp }
:NN} ~
false	NN Ñ
)
NNÑ Ö
.
NNÖ Ü
ConfigureAwait
NNÜ î
(
NNî ï
false
NNï ö
)
NNö õ
;
NNõ ú
switchOO 
(OO 
resultOO 
)OO 
{PP 
caseQQ 
SignInStatusQQ !
.QQ! "
SuccessQQ" )
:QQ) *
returnRR 
RedirectToLocalRR *
(RR* +
	returnUrlRR+ 4
)RR4 5
;RR5 6
caseSS 
SignInStatusSS !
.SS! "
	LockedOutSS" +
:SS+ ,
returnTT 
ViewTT 
(TT  
$strTT  )
)TT) *
;TT* +
caseUU 
SignInStatusUU !
.UU! " 
RequiresVerificationUU" 6
:UU6 7
returnVV 
RedirectToActionVV +
(VV+ ,
$strVV, 6
,VV6 7
newVV8 ;
{VV< =
	ReturnUrlVV> G
=VVH I
	returnUrlVVJ S
,VVS T

RememberMeVVU _
=VV` a
modelVVb g
.VVg h

RememberMeVVh r
}VVs t
)VVt u
;VVu v
caseWW 
SignInStatusWW !
.WW! "
FailureWW" )
:WW) *
defaultXX 
:XX 

ModelStateYY 
.YY 
AddModelErrorYY ,
(YY, -
$strYY- /
,YY/ 0
$strYY1 I
)YYI J
;YYJ K
returnZZ 
ViewZZ 
(ZZ  
modelZZ  %
)ZZ% &
;ZZ& '
}[[ 
}\\ 	
[`` 	
AllowAnonymous``	 
]`` 
publicaa 
asyncaa 
Taskaa 
<aa 
ActionResultaa &
>aa& '

VerifyCodeaa( 2
(aa2 3
stringaa3 9
provideraa: B
,aaB C
stringaaD J
	returnUrlaaK T
,aaT U
boolaaV Z

rememberMeaa[ e
)aae f
{bb 	
ifdd 
(dd 
!dd 
awaitdd 
SignInManagerdd $
.dd$ % 
HasBeenVerifiedAsyncdd% 9
(dd9 :
)dd: ;
.dd; <
ConfigureAwaitdd< J
(ddJ K
falseddK P
)ddP Q
)ddQ R
{ee 
returnff 
Viewff 
(ff 
$strff #
)ff# $
;ff$ %
}gg 
returnhh 
Viewhh 
(hh 
newhh 
VerifyCodeViewModelhh /
{hh0 1
Providerhh2 :
=hh; <
providerhh= E
,hhE F
	ReturnUrlhhG P
=hhQ R
	returnUrlhhS \
,hh\ ]

RememberMehh^ h
=hhi j

rememberMehhk u
}hhv w
)hhw x
;hhx y
}ii 	
[mm 	
HttpPostmm	 
]mm 
[nn 	
AllowAnonymousnn	 
]nn 
[oo 	$
ValidateAntiForgeryTokenoo	 !
]oo! "
publicpp 
asyncpp 
Taskpp 
<pp 
ActionResultpp &
>pp& '

VerifyCodepp( 2
(pp2 3
VerifyCodeViewModelpp3 F
modelppG L
)ppL M
{qq 	
ifrr 
(rr 
!rr 

ModelStaterr 
.rr 
IsValidrr #
)rr# $
{ss 
returntt 
Viewtt 
(tt 
modeltt !
)tt! "
;tt" #
}uu 
var{{ 
result{{ 
={{ 
await{{ 
SignInManager{{ ,
.{{, - 
TwoFactorSignInAsync{{- A
({{A B
model{{B G
.{{G H
Provider{{H P
,{{P Q
model{{R W
.{{W X
Code{{X \
,{{\ ]
isPersistent{{^ j
:{{j k
model{{m r
.{{r s

RememberMe{{s }
,{{} ~
rememberBrowser	{{ é
:
{{é è
model
{{ê ï
.
{{ï ñ
RememberBrowser
{{ñ •
)
{{• ¶
.
{{¶ ß
ConfigureAwait
{{ß µ
(
{{µ ∂
false
{{∂ ª
)
{{ª º
;
{{º Ω
switch|| 
(|| 
result|| 
)|| 
{}} 
case~~ 
SignInStatus~~ !
.~~! "
Success~~" )
:~~) *
return 
RedirectToLocal *
(* +
model+ 0
.0 1
	ReturnUrl1 :
): ;
;; <
case
ÄÄ 
SignInStatus
ÄÄ !
.
ÄÄ! "
	LockedOut
ÄÄ" +
:
ÄÄ+ ,
return
ÅÅ 
View
ÅÅ 
(
ÅÅ  
$str
ÅÅ  )
)
ÅÅ) *
;
ÅÅ* +
case
ÇÇ 
SignInStatus
ÇÇ !
.
ÇÇ! "
Failure
ÇÇ" )
:
ÇÇ) *
default
ÉÉ 
:
ÉÉ 

ModelState
ÑÑ 
.
ÑÑ 
AddModelError
ÑÑ ,
(
ÑÑ, -
$str
ÑÑ- /
,
ÑÑ/ 0
$str
ÑÑ1 @
)
ÑÑ@ A
;
ÑÑA B
return
ÖÖ 
View
ÖÖ 
(
ÖÖ  
model
ÖÖ  %
)
ÖÖ% &
;
ÖÖ& '
}
ÜÜ 
}
áá 	
[
ãã 	
AllowAnonymous
ãã	 
]
ãã 
public
åå 
ActionResult
åå 
Register
åå $
(
åå$ %
)
åå% &
{
çç 	
return
éé 
View
éé 
(
éé 
)
éé 
;
éé 
}
èè 	
[
ìì 	
HttpPost
ìì	 
]
ìì 
[
îî 	
AllowAnonymous
îî	 
]
îî 
[
ïï 	&
ValidateAntiForgeryToken
ïï	 !
]
ïï! "
public
ññ 
async
ññ 
Task
ññ 
<
ññ 
ActionResult
ññ &
>
ññ& '
Register
ññ( 0
(
ññ0 1
RegisterViewModel
ññ1 B
model
ññC H
)
ññH I
{
óó 	
if
òò 
(
òò 

ModelState
òò 
.
òò 
IsValid
òò "
)
òò" #
{
ôô 
var
öö 
user
öö 
=
öö 
new
öö 
ApplicationUser
öö .
{
öö/ 0
UserName
öö1 9
=
öö: ;
model
öö< A
.
ööA B
Email
ööB G
,
ööG H
Email
ööI N
=
ööO P
model
ööQ V
.
ööV W
Email
ööW \
}
öö] ^
;
öö^ _
var
õõ 
result
õõ 
=
õõ 
await
õõ "
UserManager
õõ# .
.
õõ. /
CreateAsync
õõ/ :
(
õõ: ;
user
õõ; ?
,
õõ? @
model
õõA F
.
õõF G
Password
õõG O
)
õõO P
.
õõP Q
ConfigureAwait
õõQ _
(
õõ_ `
false
õõ` e
)
õõe f
;
õõf g
if
úú 
(
úú 
result
úú 
.
úú 
	Succeeded
úú $
)
úú$ %
{
ùù 
await
ûû 
SignInManager
ûû '
.
ûû' (
SignInAsync
ûû( 3
(
ûû3 4
user
ûû4 8
,
ûû8 9
isPersistent
ûû: F
:
ûûF G
false
ûûG L
,
ûûL M
rememberBrowser
ûûN ]
:
ûû] ^
false
ûû^ c
)
ûûc d
.
ûûd e
ConfigureAwait
ûûe s
(
ûûs t
false
ûût y
)
ûûy z
;
ûûz {
return
££ 
RedirectToAction
££ +
(
££+ ,
$str
££, 3
,
££3 4
$str
££5 ;
)
££; <
;
££< =
}
§§ 
	AddErrors
•• 
(
•• 
result
••  
)
••  !
;
••! "
}
¶¶ 
return
©© 
View
©© 
(
©© 
model
©© 
)
©© 
;
©© 
}
™™ 	
[
ÆÆ 	
AllowAnonymous
ÆÆ	 
]
ÆÆ 
public
ØØ 
async
ØØ 
Task
ØØ 
<
ØØ 
ActionResult
ØØ &
>
ØØ& '
ConfirmEmail
ØØ( 4
(
ØØ4 5
string
ØØ5 ;
userId
ØØ< B
,
ØØB C
string
ØØD J
code
ØØK O
)
ØØO P
{
∞∞ 	
if
±± 
(
±± 
userId
±± 
==
±± 
null
±± 
||
±± !
code
±±" &
==
±±' )
null
±±* .
)
±±. /
{
≤≤ 
return
≥≥ 
View
≥≥ 
(
≥≥ 
$str
≥≥ #
)
≥≥# $
;
≥≥$ %
}
¥¥ 
var
µµ 
result
µµ 
=
µµ 
await
µµ 
UserManager
µµ *
.
µµ* +
ConfirmEmailAsync
µµ+ <
(
µµ< =
userId
µµ= C
,
µµC D
code
µµE I
)
µµI J
.
µµJ K
ConfigureAwait
µµK Y
(
µµY Z
false
µµZ _
)
µµ_ `
;
µµ` a
return
∂∂ 
View
∂∂ 
(
∂∂ 
result
∂∂ 
.
∂∂ 
	Succeeded
∂∂ (
?
∂∂) *
$str
∂∂+ 9
:
∂∂: ;
$str
∂∂< C
)
∂∂C D
;
∂∂D E
}
∑∑ 	
[
ªª 	
AllowAnonymous
ªª	 
]
ªª 
public
ºº 
ActionResult
ºº 
ForgotPassword
ºº *
(
ºº* +
)
ºº+ ,
{
ΩΩ 	
return
ææ 
View
ææ 
(
ææ 
)
ææ 
;
ææ 
}
øø 	
[
√√ 	
HttpPost
√√	 
]
√√ 
[
ƒƒ 	
AllowAnonymous
ƒƒ	 
]
ƒƒ 
[
≈≈ 	&
ValidateAntiForgeryToken
≈≈	 !
]
≈≈! "
public
∆∆ 
async
∆∆ 
Task
∆∆ 
<
∆∆ 
ActionResult
∆∆ &
>
∆∆& '
ForgotPassword
∆∆( 6
(
∆∆6 7%
ForgotPasswordViewModel
∆∆7 N
model
∆∆O T
)
∆∆T U
{
«« 	
if
»» 
(
»» 

ModelState
»» 
.
»» 
IsValid
»» "
)
»»" #
{
…… 
var
   
user
   
=
   
await
    
UserManager
  ! ,
.
  , -
FindByNameAsync
  - <
(
  < =
model
  = B
.
  B C
Email
  C H
)
  H I
.
  I J
ConfigureAwait
  J X
(
  X Y
false
  Y ^
)
  ^ _
;
  _ `
if
ÀÀ 
(
ÀÀ 
user
ÀÀ 
==
ÀÀ 
null
ÀÀ  
||
ÀÀ! #
!
ÀÀ$ %
(
ÀÀ% &
await
ÀÀ& +
UserManager
ÀÀ, 7
.
ÀÀ7 8#
IsEmailConfirmedAsync
ÀÀ8 M
(
ÀÀM N
user
ÀÀN R
.
ÀÀR S
Id
ÀÀS U
)
ÀÀU V
.
ÀÀV W
ConfigureAwait
ÀÀW e
(
ÀÀe f
false
ÀÀf k
)
ÀÀk l
)
ÀÀl m
)
ÀÀm n
{
ÃÃ 
return
ŒŒ 
View
ŒŒ 
(
ŒŒ  
$str
ŒŒ  <
)
ŒŒ< =
;
ŒŒ= >
}
œœ 
}
‘‘ 
return
◊◊ 
View
◊◊ 
(
◊◊ 
model
◊◊ 
)
◊◊ 
;
◊◊ 
}
ÿÿ 	
[
‹‹ 	
AllowAnonymous
‹‹	 
]
‹‹ 
public
›› 
ActionResult
›› (
ForgotPasswordConfirmation
›› 6
(
››6 7
)
››7 8
{
ﬁﬁ 	
return
ﬂﬂ 
View
ﬂﬂ 
(
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 	
[
‰‰ 	
AllowAnonymous
‰‰	 
]
‰‰ 
public
ÂÂ 
ActionResult
ÂÂ 
ResetPassword
ÂÂ )
(
ÂÂ) *
string
ÂÂ* 0
code
ÂÂ1 5
)
ÂÂ5 6
{
ÊÊ 	
return
ÁÁ 
code
ÁÁ 
==
ÁÁ 
null
ÁÁ 
?
ÁÁ  !
View
ÁÁ" &
(
ÁÁ& '
$str
ÁÁ' .
)
ÁÁ. /
:
ÁÁ0 1
View
ÁÁ2 6
(
ÁÁ6 7
)
ÁÁ7 8
;
ÁÁ8 9
}
ËË 	
[
ÏÏ 	
HttpPost
ÏÏ	 
]
ÏÏ 
[
ÌÌ 	
AllowAnonymous
ÌÌ	 
]
ÌÌ 
[
ÓÓ 	&
ValidateAntiForgeryToken
ÓÓ	 !
]
ÓÓ! "
public
ÔÔ 
async
ÔÔ 
Task
ÔÔ 
<
ÔÔ 
ActionResult
ÔÔ &
>
ÔÔ& '
ResetPassword
ÔÔ( 5
(
ÔÔ5 6$
ResetPasswordViewModel
ÔÔ6 L
model
ÔÔM R
)
ÔÔR S
{
 	
if
ÒÒ 
(
ÒÒ 
!
ÒÒ 

ModelState
ÒÒ 
.
ÒÒ 
IsValid
ÒÒ #
)
ÒÒ# $
{
ÚÚ 
return
ÛÛ 
View
ÛÛ 
(
ÛÛ 
model
ÛÛ !
)
ÛÛ! "
;
ÛÛ" #
}
ÙÙ 
var
ıı 
user
ıı 
=
ıı 
await
ıı 
UserManager
ıı (
.
ıı( )
FindByNameAsync
ıı) 8
(
ıı8 9
model
ıı9 >
.
ıı> ?
Email
ıı? D
)
ııD E
.
ııE F
ConfigureAwait
ııF T
(
ııT U
false
ııU Z
)
ııZ [
;
ıı\ ]
if
ˆˆ 
(
ˆˆ 
user
ˆˆ 
==
ˆˆ 
null
ˆˆ 
)
ˆˆ 
{
˜˜ 
return
˘˘ 
RedirectToAction
˘˘ '
(
˘˘' (
$str
˘˘( C
,
˘˘C D
$str
˘˘E N
)
˘˘N O
;
˘˘O P
}
˙˙ 
var
˚˚ 
result
˚˚ 
=
˚˚ 
await
˚˚ 
UserManager
˚˚ *
.
˚˚* + 
ResetPasswordAsync
˚˚+ =
(
˚˚= >
user
˚˚> B
.
˚˚B C
Id
˚˚C E
,
˚˚E F
model
˚˚G L
.
˚˚L M
Code
˚˚M Q
,
˚˚Q R
model
˚˚S X
.
˚˚X Y
Password
˚˚Y a
)
˚˚a b
.
˚˚b c
ConfigureAwait
˚˚c q
(
˚˚q r
false
˚˚r w
)
˚˚w x
;
˚˚x y
if
¸¸ 
(
¸¸ 
result
¸¸ 
.
¸¸ 
	Succeeded
¸¸  
)
¸¸  !
{
˝˝ 
return
˛˛ 
RedirectToAction
˛˛ '
(
˛˛' (
$str
˛˛( C
,
˛˛C D
$str
˛˛E N
)
˛˛N O
;
˛˛O P
}
ˇˇ 
	AddErrors
ÄÄ 
(
ÄÄ 
result
ÄÄ 
)
ÄÄ 
;
ÄÄ 
return
ÅÅ 
View
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
[
ÜÜ 	
AllowAnonymous
ÜÜ	 
]
ÜÜ 
public
áá 
ActionResult
áá '
ResetPasswordConfirmation
áá 5
(
áá5 6
)
áá6 7
{
àà 	
return
ââ 
View
ââ 
(
ââ 
)
ââ 
;
ââ 
}
ää 	
[
éé 	
HttpPost
éé	 
]
éé 
[
èè 	
AllowAnonymous
èè	 
]
èè 
[
êê 	&
ValidateAntiForgeryToken
êê	 !
]
êê! "
public
ëë 
ActionResult
ëë 
ExternalLogin
ëë )
(
ëë) *
string
ëë* 0
provider
ëë1 9
,
ëë9 :
string
ëë; A
	returnUrl
ëëB K
)
ëëK L
{
íí 	
return
îî 
new
îî 
ChallengeResult
îî &
(
îî& '
provider
îî' /
,
îî/ 0
Url
îî1 4
.
îî4 5
Action
îî5 ;
(
îî; <
$str
îî< S
,
îîS T
$str
îîU ^
,
îî^ _
new
îî` c
{
îîd e
	ReturnUrl
îîf o
=
îîp q
	returnUrl
îîr {
}
îî| }
)
îî} ~
)
îî~ 
;îî Ä
}
ïï 	
[
ôô 	
AllowAnonymous
ôô	 
]
ôô 
public
öö 
async
öö 
Task
öö 
<
öö 
ActionResult
öö &
>
öö& '
SendCode
öö( 0
(
öö0 1
string
öö1 7
	returnUrl
öö8 A
,
ööA B
bool
ööC G

rememberMe
ööH R
)
ööR S
{
õõ 	
var
úú 
userId
úú 
=
úú 
await
úú 
SignInManager
úú ,
.
úú, -$
GetVerifiedUserIdAsync
úú- C
(
úúC D
)
úúD E
.
úúE F
ConfigureAwait
úúF T
(
úúT U
false
úúU Z
)
úúZ [
;
úú[ \
if
ùù 
(
ùù 
userId
ùù 
==
ùù 
null
ùù 
)
ùù 
{
ûû 
return
üü 
View
üü 
(
üü 
$str
üü #
)
üü# $
;
üü$ %
}
†† 
var
°° 
userFactors
°° 
=
°° 
await
°° #
UserManager
°°$ /
.
°°/ 0-
GetValidTwoFactorProvidersAsync
°°0 O
(
°°O P
userId
°°P V
)
°°V W
.
°°W X
ConfigureAwait
°°X f
(
°°f g
false
°°g l
)
°°l m
;
°°m n
var
¢¢ 
factorOptions
¢¢ 
=
¢¢ 
userFactors
¢¢  +
.
¢¢+ ,
Select
¢¢, 2
(
¢¢2 3
purpose
¢¢3 :
=>
¢¢; =
new
¢¢> A
SelectListItem
¢¢B P
{
¢¢Q R
Text
¢¢S W
=
¢¢X Y
purpose
¢¢Z a
,
¢¢a b
Value
¢¢c h
=
¢¢i j
purpose
¢¢k r
}
¢¢s t
)
¢¢t u
.
¢¢u v
ToList
¢¢v |
(
¢¢| }
)
¢¢} ~
;
¢¢~ 
return
££ 
View
££ 
(
££ 
new
££ 
SendCodeViewModel
££ -
{
££. /
	Providers
££0 9
=
££: ;
factorOptions
££< I
,
££I J
	ReturnUrl
££K T
=
££U V
	returnUrl
££W `
,
££` a

RememberMe
££b l
=
££m n

rememberMe
££o y
}
££z {
)
££{ |
;
££| }
}
§§ 	
[
®® 	
HttpPost
®®	 
]
®® 
[
©© 	
AllowAnonymous
©©	 
]
©© 
[
™™ 	&
ValidateAntiForgeryToken
™™	 !
]
™™! "
public
´´ 
async
´´ 
Task
´´ 
<
´´ 
ActionResult
´´ &
>
´´& '
SendCode
´´( 0
(
´´0 1
SendCodeViewModel
´´1 B
model
´´C H
)
´´H I
{
¨¨ 	
if
≠≠ 
(
≠≠ 
!
≠≠ 

ModelState
≠≠ 
.
≠≠ 
IsValid
≠≠ #
)
≠≠# $
{
ÆÆ 
return
ØØ 
View
ØØ 
(
ØØ 
)
ØØ 
;
ØØ 
}
∞∞ 
if
≥≥ 
(
≥≥ 
!
≥≥ 
await
≥≥ 
SignInManager
≥≥ $
.
≥≥$ %$
SendTwoFactorCodeAsync
≥≥% ;
(
≥≥; <
model
≥≥< A
.
≥≥A B
SelectedProvider
≥≥B R
)
≥≥R S
.
≥≥S T
ConfigureAwait
≥≥T b
(
≥≥b c
false
≥≥c h
)
≥≥h i
)
≥≥i j
{
¥¥ 
return
µµ 
View
µµ 
(
µµ 
$str
µµ #
)
µµ# $
;
µµ$ %
}
∂∂ 
return
∑∑ 
RedirectToAction
∑∑ #
(
∑∑# $
$str
∑∑$ 0
,
∑∑0 1
new
∑∑2 5
{
∑∑6 7
Provider
∑∑8 @
=
∑∑A B
model
∑∑C H
.
∑∑H I
SelectedProvider
∑∑I Y
,
∑∑Y Z
	ReturnUrl
∑∑[ d
=
∑∑e f
model
∑∑g l
.
∑∑l m
	ReturnUrl
∑∑m v
,
∑∑v w

RememberMe∑∑x Ç
=∑∑É Ñ
model∑∑Ö ä
.∑∑ä ã

RememberMe∑∑ã ï
}∑∑ñ ó
)∑∑ó ò
;∑∑ò ô
}
∏∏ 	
[
ºº 	
AllowAnonymous
ºº	 
]
ºº 
public
ΩΩ 
async
ΩΩ 
Task
ΩΩ 
<
ΩΩ 
ActionResult
ΩΩ &
>
ΩΩ& '#
ExternalLoginCallback
ΩΩ( =
(
ΩΩ= >
string
ΩΩ> D
	returnUrl
ΩΩE N
)
ΩΩN O
{
ææ 	
var
øø 
	loginInfo
øø 
=
øø 
await
øø !#
AuthenticationManager
øø" 7
.
øø7 8'
GetExternalLoginInfoAsync
øø8 Q
(
øøQ R
)
øøR S
.
øøS T
ConfigureAwait
øøT b
(
øøb c
false
øøc h
)
øøh i
;
øøi j
if
¿¿ 
(
¿¿ 
	loginInfo
¿¿ 
==
¿¿ 
null
¿¿ !
)
¿¿! "
{
¡¡ 
return
¬¬ 
RedirectToAction
¬¬ '
(
¬¬' (
$str
¬¬( /
)
¬¬/ 0
;
¬¬0 1
}
√√ 
var
∆∆ 
result
∆∆ 
=
∆∆ 
await
∆∆ 
SignInManager
∆∆ ,
.
∆∆, -!
ExternalSignInAsync
∆∆- @
(
∆∆@ A
	loginInfo
∆∆A J
,
∆∆J K
isPersistent
∆∆L X
:
∆∆X Y
false
∆∆Z _
)
∆∆_ `
.
∆∆` a
ConfigureAwait
∆∆a o
(
∆∆o p
false
∆∆p u
)
∆∆u v
;
∆∆v w
switch
«« 
(
«« 
result
«« 
)
«« 
{
»» 
case
…… 
SignInStatus
…… !
.
……! "
Success
……" )
:
……) *
return
   
RedirectToLocal
   *
(
  * +
	returnUrl
  + 4
)
  4 5
;
  5 6
case
ÀÀ 
SignInStatus
ÀÀ !
.
ÀÀ! "
	LockedOut
ÀÀ" +
:
ÀÀ+ ,
return
ÃÃ 
View
ÃÃ 
(
ÃÃ  
$str
ÃÃ  )
)
ÃÃ) *
;
ÃÃ* +
case
ÕÕ 
SignInStatus
ÕÕ !
.
ÕÕ! ""
RequiresVerification
ÕÕ" 6
:
ÕÕ6 7
return
ŒŒ 
RedirectToAction
ŒŒ +
(
ŒŒ+ ,
$str
ŒŒ, 6
,
ŒŒ6 7
new
ŒŒ8 ;
{
ŒŒ< =
	ReturnUrl
ŒŒ> G
=
ŒŒH I
	returnUrl
ŒŒJ S
,
ŒŒS T

RememberMe
ŒŒU _
=
ŒŒ` a
false
ŒŒb g
}
ŒŒh i
)
ŒŒi j
;
ŒŒj k
case
œœ 
SignInStatus
œœ !
.
œœ! "
Failure
œœ" )
:
œœ) *
default
–– 
:
–– 
ViewBag
““ 
.
““ 
	ReturnUrl
““ %
=
““& '
	returnUrl
““( 1
;
““1 2
ViewBag
”” 
.
”” 
LoginProvider
”” )
=
””* +
	loginInfo
””, 5
.
””5 6
Login
””6 ;
.
””; <
LoginProvider
””< I
;
””I J
return
‘‘ 
View
‘‘ 
(
‘‘  
$str
‘‘  ;
,
‘‘; <
new
‘‘= @0
"ExternalLoginConfirmationViewModel
‘‘A c
{
‘‘d e
Email
‘‘f k
=
‘‘l m
	loginInfo
‘‘n w
.
‘‘w x
Email
‘‘x }
}
‘‘~ 
)‘‘ Ä
;‘‘Ä Å
}
’’ 
}
÷÷ 	
[
⁄⁄ 	
HttpPost
⁄⁄	 
]
⁄⁄ 
[
€€ 	
AllowAnonymous
€€	 
]
€€ 
[
‹‹ 	&
ValidateAntiForgeryToken
‹‹	 !
]
‹‹! "
public
›› 
async
›› 
Task
›› 
<
›› 
ActionResult
›› &
>
››& ''
ExternalLoginConfirmation
››( A
(
››A B0
"ExternalLoginConfirmationViewModel
››B d
model
››e j
,
››j k
string
››l r
	returnUrl
››s |
)
››| }
{
ﬁﬁ 	
if
ﬂﬂ 
(
ﬂﬂ 
User
ﬂﬂ 
.
ﬂﬂ 
Identity
ﬂﬂ 
.
ﬂﬂ 
IsAuthenticated
ﬂﬂ -
)
ﬂﬂ- .
{
‡‡ 
return
·· 
RedirectToAction
·· '
(
··' (
$str
··( /
,
··/ 0
$str
··1 9
)
··9 :
;
··: ;
}
‚‚ 
if
‰‰ 
(
‰‰ 

ModelState
‰‰ 
.
‰‰ 
IsValid
‰‰ "
)
‰‰" #
{
ÂÂ 
var
ÁÁ 
info
ÁÁ 
=
ÁÁ 
await
ÁÁ  #
AuthenticationManager
ÁÁ! 6
.
ÁÁ6 7'
GetExternalLoginInfoAsync
ÁÁ7 P
(
ÁÁP Q
)
ÁÁQ R
.
ÁÁR S
ConfigureAwait
ÁÁS a
(
ÁÁa b
false
ÁÁb g
)
ÁÁg h
;
ÁÁh i
if
ËË 
(
ËË 
info
ËË 
==
ËË 
null
ËË  
)
ËË  !
{
ÈÈ 
return
ÍÍ 
View
ÍÍ 
(
ÍÍ  
$str
ÍÍ  6
)
ÍÍ6 7
;
ÍÍ7 8
}
ÎÎ 
var
ÏÏ 
user
ÏÏ 
=
ÏÏ 
new
ÏÏ 
ApplicationUser
ÏÏ .
{
ÏÏ/ 0
UserName
ÏÏ1 9
=
ÏÏ: ;
model
ÏÏ< A
.
ÏÏA B
Email
ÏÏB G
,
ÏÏG H
Email
ÏÏI N
=
ÏÏO P
model
ÏÏQ V
.
ÏÏV W
Email
ÏÏW \
}
ÏÏ] ^
;
ÏÏ^ _
var
ÌÌ 
result
ÌÌ 
=
ÌÌ 
await
ÌÌ "
UserManager
ÌÌ# .
.
ÌÌ. /
CreateAsync
ÌÌ/ :
(
ÌÌ: ;
user
ÌÌ; ?
)
ÌÌ? @
.
ÌÌ@ A
ConfigureAwait
ÌÌA O
(
ÌÌO P
false
ÌÌP U
)
ÌÌU V
;
ÌÌV W
if
ÓÓ 
(
ÓÓ 
result
ÓÓ 
.
ÓÓ 
	Succeeded
ÓÓ $
)
ÓÓ$ %
{
ÔÔ 
result
 
=
 
await
 "
UserManager
# .
.
. /
AddLoginAsync
/ <
(
< =
user
= A
.
A B
Id
B D
,
D E
info
F J
.
J K
Login
K P
)
P Q
.
Q R
ConfigureAwait
R `
(
` a
false
a f
)
f g
;
g h
if
ÒÒ 
(
ÒÒ 
result
ÒÒ 
.
ÒÒ 
	Succeeded
ÒÒ (
)
ÒÒ( )
{
ÚÚ 
await
ÛÛ 
SignInManager
ÛÛ +
.
ÛÛ+ ,
SignInAsync
ÛÛ, 7
(
ÛÛ7 8
user
ÛÛ8 <
,
ÛÛ< =
isPersistent
ÛÛ> J
:
ÛÛJ K
false
ÛÛL Q
,
ÛÛQ R
rememberBrowser
ÛÛS b
:
ÛÛb c
false
ÛÛd i
)
ÛÛi j
.
ÛÛj k
ConfigureAwait
ÛÛk y
(
ÛÛy z
false
ÛÛz 
)ÛÛ Ä
;ÛÛÅ Ç
return
ÙÙ 
RedirectToLocal
ÙÙ .
(
ÙÙ. /
	returnUrl
ÙÙ/ 8
)
ÙÙ8 9
;
ÙÙ9 :
}
ıı 
}
ˆˆ 
	AddErrors
˜˜ 
(
˜˜ 
result
˜˜  
)
˜˜  !
;
˜˜! "
}
¯¯ 
ViewBag
˙˙ 
.
˙˙ 
	ReturnUrl
˙˙ 
=
˙˙ 
	returnUrl
˙˙  )
;
˙˙) *
return
˚˚ 
View
˚˚ 
(
˚˚ 
model
˚˚ 
)
˚˚ 
;
˚˚ 
}
¸¸ 	
[
ÄÄ 	
HttpPost
ÄÄ	 
]
ÄÄ 
[
ÅÅ 	&
ValidateAntiForgeryToken
ÅÅ	 !
]
ÅÅ! "
public
ÇÇ 
ActionResult
ÇÇ 
LogOff
ÇÇ "
(
ÇÇ" #
)
ÇÇ# $
{
ÉÉ 	#
AuthenticationManager
ÑÑ !
.
ÑÑ! "
SignOut
ÑÑ" )
(
ÑÑ) *(
DefaultAuthenticationTypes
ÑÑ* D
.
ÑÑD E
ApplicationCookie
ÑÑE V
)
ÑÑV W
;
ÑÑW X
return
ÖÖ 
RedirectToAction
ÖÖ #
(
ÖÖ# $
$str
ÖÖ$ +
,
ÖÖ+ ,
$str
ÖÖ- 3
)
ÖÖ3 4
;
ÖÖ4 5
}
ÜÜ 	
[
ää 	
AllowAnonymous
ää	 
]
ää 
public
ãã 
ActionResult
ãã "
ExternalLoginFailure
ãã 0
(
ãã0 1
)
ãã1 2
{
åå 	
return
çç 
View
çç 
(
çç 
)
çç 
;
çç 
}
éé 	
	protected
êê 
override
êê 
void
êê 
Dispose
êê  '
(
êê' (
bool
êê( ,
	disposing
êê- 6
)
êê6 7
{
ëë 	
if
íí 
(
íí 
	disposing
íí 
)
íí 
{
ìì 
if
îî 
(
îî 
_userManager
îî  
!=
îî! #
null
îî$ (
)
îî( )
{
ïï 
_userManager
ññ  
.
ññ  !
Dispose
ññ! (
(
ññ( )
)
ññ) *
;
ññ* +
_userManager
óó  
=
óó! "
null
óó# '
;
óó' (
}
òò 
if
öö 
(
öö 
_signInManager
öö "
!=
öö# %
null
öö& *
)
öö* +
{
õõ 
_signInManager
úú "
.
úú" #
Dispose
úú# *
(
úú* +
)
úú+ ,
;
úú, -
_signInManager
ùù "
=
ùù# $
null
ùù% )
;
ùù) *
}
ûû 
}
üü 
base
°° 
.
°° 
Dispose
°° 
(
°° 
	disposing
°° "
)
°°" #
;
°°# $
}
¢¢ 	
private
¶¶ 
const
¶¶ 
string
¶¶ 
XsrfKey
¶¶ $
=
¶¶% &
$str
¶¶' /
;
¶¶/ 0
private
®® $
IAuthenticationManager
®® &#
AuthenticationManager
®®' <
{
©© 	
get
™™ 
{
´´ 
return
¨¨ 
HttpContext
¨¨ "
.
¨¨" #
GetOwinContext
¨¨# 1
(
¨¨1 2
)
¨¨2 3
.
¨¨3 4
Authentication
¨¨4 B
;
¨¨B C
}
≠≠ 
}
ÆÆ 	
private
∞∞ 
void
∞∞ 
	AddErrors
∞∞ 
(
∞∞ 
IdentityResult
∞∞ -
result
∞∞. 4
)
∞∞4 5
{
±± 	
foreach
≤≤ 
(
≤≤ 
var
≤≤ 
error
≤≤ 
in
≤≤ !
result
≤≤" (
.
≤≤( )
Errors
≤≤) /
)
≤≤/ 0
{
≥≥ 

ModelState
¥¥ 
.
¥¥ 
AddModelError
¥¥ (
(
¥¥( )
$str
¥¥) +
,
¥¥+ ,
error
¥¥- 2
)
¥¥2 3
;
¥¥3 4
}
µµ 
}
∂∂ 	
private
∏∏ 
ActionResult
∏∏ 
RedirectToLocal
∏∏ ,
(
∏∏, -
string
∏∏- 3
	returnUrl
∏∏4 =
)
∏∏= >
{
ππ 	
if
∫∫ 
(
∫∫ 
Url
∫∫ 
.
∫∫ 

IsLocalUrl
∫∫ 
(
∫∫ 
	returnUrl
∫∫ (
)
∫∫( )
)
∫∫) *
{
ªª 
return
ºº 
Redirect
ºº 
(
ºº  
	returnUrl
ºº  )
)
ºº) *
;
ºº* +
}
ΩΩ 
return
ææ 
RedirectToAction
ææ #
(
ææ# $
$str
ææ$ +
,
ææ+ ,
$str
ææ- 3
)
ææ3 4
;
ææ4 5
}
øø 	
internal
¡¡ 
class
¡¡ 
ChallengeResult
¡¡ &
:
¡¡' ($
HttpUnauthorizedResult
¡¡) ?
{
¬¬ 	
public
√√ 
ChallengeResult
√√ "
(
√√" #
string
√√# )
provider
√√* 2
,
√√2 3
string
√√4 :
redirectUri
√√; F
)
√√F G
:
ƒƒ 
this
ƒƒ 
(
ƒƒ 
provider
ƒƒ 
,
ƒƒ  
redirectUri
ƒƒ! ,
,
ƒƒ, -
null
ƒƒ. 2
)
ƒƒ2 3
{
≈≈ 
}
∆∆ 
public
»» 
ChallengeResult
»» "
(
»»" #
string
»»# )
provider
»»* 2
,
»»2 3
string
»»4 :
redirectUri
»»; F
,
»»F G
string
»»H N
userId
»»O U
)
»»U V
{
…… 
LoginProvider
   
=
   
provider
    (
;
  ( )
RedirectUri
ÀÀ 
=
ÀÀ 
redirectUri
ÀÀ )
;
ÀÀ) *
UserId
ÃÃ 
=
ÃÃ 
userId
ÃÃ 
;
ÃÃ  
}
ÕÕ 
public
œœ 
string
œœ 
LoginProvider
œœ '
{
œœ( )
get
œœ* -
;
œœ- .
set
œœ/ 2
;
œœ2 3
}
œœ4 5
public
–– 
string
–– 
RedirectUri
–– %
{
––& '
get
––( +
;
––+ ,
set
––- 0
;
––0 1
}
––2 3
public
—— 
string
—— 
UserId
——  
{
——! "
get
——# &
;
——& '
set
——( +
;
——+ ,
}
——- .
public
”” 
override
”” 
void
””  
ExecuteResult
””! .
(
””. /
ControllerContext
””/ @
context
””A H
)
””H I
{
‘‘ 
var
’’ 

properties
’’ 
=
’’  
new
’’! $&
AuthenticationProperties
’’% =
{
’’> ?
RedirectUri
’’@ K
=
’’L M
RedirectUri
’’N Y
}
’’Z [
;
’’[ \
if
÷÷ 
(
÷÷ 
UserId
÷÷ 
!=
÷÷ 
null
÷÷ "
)
÷÷" #
{
◊◊ 

properties
ÿÿ 
.
ÿÿ 

Dictionary
ÿÿ )
[
ÿÿ) *
XsrfKey
ÿÿ* 1
]
ÿÿ1 2
=
ÿÿ3 4
UserId
ÿÿ5 ;
;
ÿÿ; <
}
ŸŸ 
context
⁄⁄ 
.
⁄⁄ 
HttpContext
⁄⁄ #
.
⁄⁄# $
GetOwinContext
⁄⁄$ 2
(
⁄⁄2 3
)
⁄⁄3 4
.
⁄⁄4 5
Authentication
⁄⁄5 C
.
⁄⁄C D
	Challenge
⁄⁄D M
(
⁄⁄M N

properties
⁄⁄N X
,
⁄⁄X Y
LoginProvider
⁄⁄Z g
)
⁄⁄g h
;
⁄⁄h i
}
€€ 
}
‹‹ 	
}
ﬁﬁ 
}ﬂﬂ å	
MC:\sonarqube\projects\SonarProject\SonarProject\Controllers\HomeController.cs
	namespace 	
SonarProject
 
. 
Controllers "
{ 
public		 

class		 
HomeController		 
:		  !

Controller		" ,
{

 
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
) 
; 
} 	
public 
ActionResult 
About !
(! "
)" #
{ 	
ViewBag 
. 
Message 
= 
$str B
;B C
return 
View 
( 
) 
; 
} 	
public 
ActionResult 
Contact #
(# $
)$ %
{ 	
ViewBag 
. 
Message 
= 
$str 2
;2 3
return 
View 
( 
) 
; 
} 	
} 
} ≥ã
OC:\sonarqube\projects\SonarProject\SonarProject\Controllers\ManageController.cs
	namespace 	
SonarProject
 
. 
Controllers "
{ 
[ 
	Authorize 
] 
public 

class 
ManageController !
:" #

Controller$ .
{ 
private $
ApplicationSignInManager (
_signInManager) 7
;7 8
private "
ApplicationUserManager &
_userManager' 3
;3 4
public 
ManageController 
(  
)  !
{ 	
} 	
public 
ManageController 
(  "
ApplicationUserManager  6
userManager7 B
,B C$
ApplicationSignInManagerD \
signInManager] j
)j k
{ 	
UserManager 
= 
userManager %
;% &
SignInManager 
= 
signInManager )
;) *
} 	
public $
ApplicationSignInManager '
SignInManager( 5
{ 	
get 
{   
return!! 
_signInManager!! %
??!!& (
HttpContext!!) 4
.!!4 5
GetOwinContext!!5 C
(!!C D
)!!D E
.!!E F
Get!!F I
<!!I J$
ApplicationSignInManager!!J b
>!!b c
(!!c d
)!!d e
;!!e f
}"" 
private## 
set## 
{$$ 
_signInManager%% 
=%%  
value%%! &
;%%& '
}&& 
}'' 	
public)) "
ApplicationUserManager)) %
UserManager))& 1
{** 	
get++ 
{,, 
return-- 
_userManager-- #
??--$ &
HttpContext--' 2
.--2 3
GetOwinContext--3 A
(--A B
)--B C
.--C D
GetUserManager--D R
<--R S"
ApplicationUserManager--S i
>--i j
(--j k
)--k l
;--l m
}.. 
private// 
set// 
{00 
_userManager11 
=11 
value11 $
;11$ %
}22 
}33 	
public77 
async77 
Task77 
<77 
ActionResult77 &
>77& '
Index77( -
(77- .
ManageMessageId77. =
?77= >
message77? F
)77F G
{88 	
ViewBag99 
.99 
StatusMessage99 !
=99" #
message:: 
==:: 
ManageMessageId:: *
.::* +!
ChangePasswordSuccess::+ @
?::A B
$str::C d
:;; 
message;; 
==;; 
ManageMessageId;; ,
.;;, -
SetPasswordSuccess;;- ?
?;;@ A
$str;;B _
:<< 
message<< 
==<< 
ManageMessageId<< ,
.<<, -
SetTwoFactorSuccess<<- @
?<<A B
$str<<C z
:== 
message== 
==== 
ManageMessageId== ,
.==, -
Error==- 2
?==3 4
$str==5 M
:>> 
message>> 
==>> 
ManageMessageId>> ,
.>>, -
AddPhoneSuccess>>- <
?>>= >
$str>>? ]
:?? 
message?? 
==?? 
ManageMessageId?? ,
.??, -
RemovePhoneSuccess??- ?
???@ A
$str??B b
:@@ 
$str@@ 
;@@ 
varBB 
userIdBB 
=BB 
UserBB 
.BB 
IdentityBB &
.BB& '
	GetUserIdBB' 0
(BB0 1
)BB1 2
;BB2 3
varCC 
modelCC 
=CC 
newCC 
IndexViewModelCC *
{DD 
HasPasswordEE 
=EE 
HasPasswordEE )
(EE) *
)EE* +
,EE+ ,
PhoneNumberFF 
=FF 
awaitFF #
UserManagerFF$ /
.FF/ 0
GetPhoneNumberAsyncFF0 C
(FFC D
userIdFFD J
)FFJ K
,FFK L
	TwoFactorGG 
=GG 
awaitGG !
UserManagerGG" -
.GG- .$
GetTwoFactorEnabledAsyncGG. F
(GGF G
userIdGGG M
)GGM N
,GGN O
LoginsHH 
=HH 
awaitHH 
UserManagerHH *
.HH* +
GetLoginsAsyncHH+ 9
(HH9 :
userIdHH: @
)HH@ A
,HHA B
BrowserRememberedII !
=II" #
awaitII$ )!
AuthenticationManagerII* ?
.II? @+
TwoFactorBrowserRememberedAsyncII@ _
(II_ `
userIdII` f
)IIf g
}JJ 
;JJ 
returnKK 
ViewKK 
(KK 
modelKK 
)KK 
;KK 
}LL 	
[PP 	
HttpPostPP	 
]PP 
[QQ 	$
ValidateAntiForgeryTokenQQ	 !
]QQ! "
publicRR 
asyncRR 
TaskRR 
<RR 
ActionResultRR &
>RR& '
RemoveLoginRR( 3
(RR3 4
stringRR4 :
loginProviderRR; H
,RRH I
stringRRJ P
providerKeyRRQ \
)RR\ ]
{SS 	
ManageMessageIdTT 
?TT 
messageTT $
;TT$ %
varUU 
resultUU 
=UU 
awaitUU 
UserManagerUU *
.UU* +
RemoveLoginAsyncUU+ ;
(UU; <
UserUU< @
.UU@ A
IdentityUUA I
.UUI J
	GetUserIdUUJ S
(UUS T
)UUT U
,UUU V
newUUW Z
UserLoginInfoUU[ h
(UUh i
loginProviderUUi v
,UUv w
providerKey	UUx É
)
UUÉ Ñ
)
UUÑ Ö
;
UUÖ Ü
ifVV 
(VV 
resultVV 
.VV 
	SucceededVV  
)VV  !
{WW 
varXX 
userXX 
=XX 
awaitXX  
UserManagerXX! ,
.XX, -
FindByIdAsyncXX- :
(XX: ;
UserXX; ?
.XX? @
IdentityXX@ H
.XXH I
	GetUserIdXXI R
(XXR S
)XXS T
)XXT U
;XXU V
ifYY 
(YY 
userYY 
!=YY 
nullYY  
)YY  !
{ZZ 
await[[ 
SignInManager[[ '
.[[' (
SignInAsync[[( 3
([[3 4
user[[4 8
,[[8 9
isPersistent[[: F
:[[F G
false[[H M
,[[M N
rememberBrowser[[O ^
:[[^ _
false[[` e
)[[e f
;[[f g
}\\ 
message]] 
=]] 
ManageMessageId]] )
.]]) *
RemoveLoginSuccess]]* <
;]]< =
}^^ 
else__ 
{`` 
messageaa 
=aa 
ManageMessageIdaa )
.aa) *
Erroraa* /
;aa/ 0
}bb 
returncc 
RedirectToActioncc #
(cc# $
$strcc$ 2
,cc2 3
newcc4 7
{cc8 9
Messagecc: A
=ccB C
messageccD K
}ccL M
)ccM N
;ccN O
}dd 	
publichh 
ActionResulthh 
AddPhoneNumberhh *
(hh* +
)hh+ ,
{ii 	
returnjj 
Viewjj 
(jj 
)jj 
;jj 
}kk 	
[oo 	
HttpPostoo	 
]oo 
[pp 	$
ValidateAntiForgeryTokenpp	 !
]pp! "
publicqq 
asyncqq 
Taskqq 
<qq 
ActionResultqq &
>qq& '
AddPhoneNumberqq( 6
(qq6 7#
AddPhoneNumberViewModelqq7 N
modelqqO T
)qqT U
{rr 	
ifss 
(ss 
!ss 

ModelStatess 
.ss 
IsValidss #
)ss# $
{tt 
returnuu 
Viewuu 
(uu 
modeluu !
)uu! "
;uu" #
}vv 
varxx 
codexx 
=xx 
awaitxx 
UserManagerxx (
.xx( )/
#GenerateChangePhoneNumberTokenAsyncxx) L
(xxL M
UserxxM Q
.xxQ R
IdentityxxR Z
.xxZ [
	GetUserIdxx[ d
(xxd e
)xxe f
,xxf g
modelxxh m
.xxm n
Numberxxn t
)xxt u
;xxu v
ifyy 
(yy 
UserManageryy 
.yy 

SmsServiceyy &
!=yy' )
nullyy* .
)yy. /
{zz 
var{{ 
message{{ 
={{ 
new{{ !
IdentityMessage{{" 1
{|| 
Destination}} 
=}}  !
model}}" '
.}}' (
Number}}( .
,}}. /
Body~~ 
=~~ 
$str~~ 4
+~~5 6
code~~7 ;
} 
; 
await
ÄÄ 
UserManager
ÄÄ !
.
ÄÄ! "

SmsService
ÄÄ" ,
.
ÄÄ, -
	SendAsync
ÄÄ- 6
(
ÄÄ6 7
message
ÄÄ7 >
)
ÄÄ> ?
;
ÄÄ? @
}
ÅÅ 
return
ÇÇ 
RedirectToAction
ÇÇ #
(
ÇÇ# $
$str
ÇÇ$ 7
,
ÇÇ7 8
new
ÇÇ9 <
{
ÇÇ= >
PhoneNumber
ÇÇ? J
=
ÇÇK L
model
ÇÇM R
.
ÇÇR S
Number
ÇÇS Y
}
ÇÇZ [
)
ÇÇ[ \
;
ÇÇ\ ]
}
ÉÉ 	
[
áá 	
HttpPost
áá	 
]
áá 
[
àà 	&
ValidateAntiForgeryToken
àà	 !
]
àà! "
public
ââ 
async
ââ 
Task
ââ 
<
ââ 
ActionResult
ââ &
>
ââ& '+
EnableTwoFactorAuthentication
ââ( E
(
ââE F
)
ââF G
{
ää 	
await
ãã 
UserManager
ãã 
.
ãã &
SetTwoFactorEnabledAsync
ãã 6
(
ãã6 7
User
ãã7 ;
.
ãã; <
Identity
ãã< D
.
ããD E
	GetUserId
ããE N
(
ããN O
)
ããO P
,
ããP Q
true
ããR V
)
ããV W
;
ããW X
var
åå 
user
åå 
=
åå 
await
åå 
UserManager
åå (
.
åå( )
FindByIdAsync
åå) 6
(
åå6 7
User
åå7 ;
.
åå; <
Identity
åå< D
.
ååD E
	GetUserId
ååE N
(
ååN O
)
ååO P
)
ååP Q
;
ååQ R
if
çç 
(
çç 
user
çç 
!=
çç 
null
çç 
)
çç 
{
éé 
await
èè 
SignInManager
èè #
.
èè# $
SignInAsync
èè$ /
(
èè/ 0
user
èè0 4
,
èè4 5
isPersistent
èè6 B
:
èèB C
false
èèD I
,
èèI J
rememberBrowser
èèK Z
:
èèZ [
false
èè\ a
)
èèa b
;
èèb c
}
êê 
return
ëë 
RedirectToAction
ëë #
(
ëë# $
$str
ëë$ +
,
ëë+ ,
$str
ëë- 5
)
ëë5 6
;
ëë6 7
}
íí 	
[
ññ 	
HttpPost
ññ	 
]
ññ 
[
óó 	&
ValidateAntiForgeryToken
óó	 !
]
óó! "
public
òò 
async
òò 
Task
òò 
<
òò 
ActionResult
òò &
>
òò& ',
DisableTwoFactorAuthentication
òò( F
(
òòF G
)
òòG H
{
ôô 	
await
öö 
UserManager
öö 
.
öö &
SetTwoFactorEnabledAsync
öö 6
(
öö6 7
User
öö7 ;
.
öö; <
Identity
öö< D
.
ööD E
	GetUserId
ööE N
(
ööN O
)
ööO P
,
ööP Q
false
ööR W
)
ööW X
;
ööX Y
var
õõ 
user
õõ 
=
õõ 
await
õõ 
UserManager
õõ (
.
õõ( )
FindByIdAsync
õõ) 6
(
õõ6 7
User
õõ7 ;
.
õõ; <
Identity
õõ< D
.
õõD E
	GetUserId
õõE N
(
õõN O
)
õõO P
)
õõP Q
;
õõQ R
if
úú 
(
úú 
user
úú 
!=
úú 
null
úú 
)
úú 
{
ùù 
await
ûû 
SignInManager
ûû #
.
ûû# $
SignInAsync
ûû$ /
(
ûû/ 0
user
ûû0 4
,
ûû4 5
isPersistent
ûû6 B
:
ûûB C
false
ûûD I
,
ûûI J
rememberBrowser
ûûK Z
:
ûûZ [
false
ûû\ a
)
ûûa b
;
ûûb c
}
üü 
return
†† 
RedirectToAction
†† #
(
††# $
$str
††$ +
,
††+ ,
$str
††- 5
)
††5 6
;
††6 7
}
°° 	
public
•• 
async
•• 
Task
•• 
<
•• 
ActionResult
•• &
>
••& '
VerifyPhoneNumber
••( 9
(
••9 :
string
••: @
phoneNumber
••A L
)
••L M
{
¶¶ 	
var
ßß 
code
ßß 
=
ßß 
await
ßß 
UserManager
ßß (
.
ßß( )1
#GenerateChangePhoneNumberTokenAsync
ßß) L
(
ßßL M
User
ßßM Q
.
ßßQ R
Identity
ßßR Z
.
ßßZ [
	GetUserId
ßß[ d
(
ßßd e
)
ßße f
,
ßßf g
phoneNumber
ßßh s
)
ßßs t
;
ßßt u
return
©© 
phoneNumber
©© 
==
©© !
null
©©" &
?
©©' (
View
©©) -
(
©©- .
$str
©©. 5
)
©©5 6
:
©©7 8
View
©©9 =
(
©©= >
new
©©> A(
VerifyPhoneNumberViewModel
©©B \
{
©©] ^
PhoneNumber
©©_ j
=
©©k l
phoneNumber
©©m x
}
©©y z
)
©©z {
;
©©{ |
}
™™ 	
[
ÆÆ 	
HttpPost
ÆÆ	 
]
ÆÆ 
[
ØØ 	&
ValidateAntiForgeryToken
ØØ	 !
]
ØØ! "
public
∞∞ 
async
∞∞ 
Task
∞∞ 
<
∞∞ 
ActionResult
∞∞ &
>
∞∞& '
VerifyPhoneNumber
∞∞( 9
(
∞∞9 :(
VerifyPhoneNumberViewModel
∞∞: T
model
∞∞U Z
)
∞∞Z [
{
±± 	
if
≤≤ 
(
≤≤ 
!
≤≤ 

ModelState
≤≤ 
.
≤≤ 
IsValid
≤≤ #
)
≤≤# $
{
≥≥ 
return
¥¥ 
View
¥¥ 
(
¥¥ 
model
¥¥ !
)
¥¥! "
;
¥¥" #
}
µµ 
var
∂∂ 
result
∂∂ 
=
∂∂ 
await
∂∂ 
UserManager
∂∂ *
.
∂∂* +$
ChangePhoneNumberAsync
∂∂+ A
(
∂∂A B
User
∂∂B F
.
∂∂F G
Identity
∂∂G O
.
∂∂O P
	GetUserId
∂∂P Y
(
∂∂Y Z
)
∂∂Z [
,
∂∂[ \
model
∂∂] b
.
∂∂b c
PhoneNumber
∂∂c n
,
∂∂n o
model
∂∂p u
.
∂∂u v
Code
∂∂v z
)
∂∂z {
;
∂∂{ |
if
∑∑ 
(
∑∑ 
result
∑∑ 
.
∑∑ 
	Succeeded
∑∑  
)
∑∑  !
{
∏∏ 
var
ππ 
user
ππ 
=
ππ 
await
ππ  
UserManager
ππ! ,
.
ππ, -
FindByIdAsync
ππ- :
(
ππ: ;
User
ππ; ?
.
ππ? @
Identity
ππ@ H
.
ππH I
	GetUserId
ππI R
(
ππR S
)
ππS T
)
ππT U
;
ππU V
if
∫∫ 
(
∫∫ 
user
∫∫ 
!=
∫∫ 
null
∫∫  
)
∫∫  !
{
ªª 
await
ºº 
SignInManager
ºº '
.
ºº' (
SignInAsync
ºº( 3
(
ºº3 4
user
ºº4 8
,
ºº8 9
isPersistent
ºº: F
:
ººF G
false
ººH M
,
ººM N
rememberBrowser
ººO ^
:
ºº^ _
false
ºº` e
)
ººe f
;
ººf g
}
ΩΩ 
return
ææ 
RedirectToAction
ææ '
(
ææ' (
$str
ææ( /
,
ææ/ 0
new
ææ1 4
{
ææ5 6
Message
ææ7 >
=
ææ? @
ManageMessageId
ææA P
.
ææP Q
AddPhoneSuccess
ææQ `
}
ææa b
)
ææb c
;
ææc d
}
øø 

ModelState
¡¡ 
.
¡¡ 
AddModelError
¡¡ $
(
¡¡$ %
$str
¡¡% '
,
¡¡' (
$str
¡¡) A
)
¡¡A B
;
¡¡B C
return
¬¬ 
View
¬¬ 
(
¬¬ 
model
¬¬ 
)
¬¬ 
;
¬¬ 
}
√√ 	
[
«« 	
HttpPost
««	 
]
«« 
[
»» 	&
ValidateAntiForgeryToken
»»	 !
]
»»! "
public
…… 
async
…… 
Task
…… 
<
…… 
ActionResult
…… &
>
……& '
RemovePhoneNumber
……( 9
(
……9 :
)
……: ;
{
   	
var
ÀÀ 
result
ÀÀ 
=
ÀÀ 
await
ÀÀ 
UserManager
ÀÀ *
.
ÀÀ* +!
SetPhoneNumberAsync
ÀÀ+ >
(
ÀÀ> ?
User
ÀÀ? C
.
ÀÀC D
Identity
ÀÀD L
.
ÀÀL M
	GetUserId
ÀÀM V
(
ÀÀV W
)
ÀÀW X
,
ÀÀX Y
null
ÀÀZ ^
)
ÀÀ^ _
;
ÀÀ_ `
if
ÃÃ 
(
ÃÃ 
!
ÃÃ 
result
ÃÃ 
.
ÃÃ 
	Succeeded
ÃÃ !
)
ÃÃ! "
{
ÕÕ 
return
ŒŒ 
RedirectToAction
ŒŒ '
(
ŒŒ' (
$str
ŒŒ( /
,
ŒŒ/ 0
new
ŒŒ1 4
{
ŒŒ5 6
Message
ŒŒ7 >
=
ŒŒ? @
ManageMessageId
ŒŒA P
.
ŒŒP Q
Error
ŒŒQ V
}
ŒŒW X
)
ŒŒX Y
;
ŒŒY Z
}
œœ 
var
–– 
user
–– 
=
–– 
await
–– 
UserManager
–– (
.
––( )
FindByIdAsync
––) 6
(
––6 7
User
––7 ;
.
––; <
Identity
––< D
.
––D E
	GetUserId
––E N
(
––N O
)
––O P
)
––P Q
;
––Q R
if
—— 
(
—— 
user
—— 
!=
—— 
null
—— 
)
—— 
{
““ 
await
”” 
SignInManager
”” #
.
””# $
SignInAsync
””$ /
(
””/ 0
user
””0 4
,
””4 5
isPersistent
””6 B
:
””B C
false
””D I
,
””I J
rememberBrowser
””K Z
:
””Z [
false
””\ a
)
””a b
;
””b c
}
‘‘ 
return
’’ 
RedirectToAction
’’ #
(
’’# $
$str
’’$ +
,
’’+ ,
new
’’- 0
{
’’1 2
Message
’’3 :
=
’’; <
ManageMessageId
’’= L
.
’’L M 
RemovePhoneSuccess
’’M _
}
’’` a
)
’’a b
;
’’b c
}
÷÷ 	
public
⁄⁄ 
ActionResult
⁄⁄ 
ChangePassword
⁄⁄ *
(
⁄⁄* +
)
⁄⁄+ ,
{
€€ 	
return
‹‹ 
View
‹‹ 
(
‹‹ 
)
‹‹ 
;
‹‹ 
}
›› 	
[
·· 	
HttpPost
··	 
]
·· 
[
‚‚ 	&
ValidateAntiForgeryToken
‚‚	 !
]
‚‚! "
public
„„ 
async
„„ 
Task
„„ 
<
„„ 
ActionResult
„„ &
>
„„& '
ChangePassword
„„( 6
(
„„6 7%
ChangePasswordViewModel
„„7 N
model
„„O T
)
„„T U
{
‰‰ 	
if
ÂÂ 
(
ÂÂ 
!
ÂÂ 

ModelState
ÂÂ 
.
ÂÂ 
IsValid
ÂÂ #
)
ÂÂ# $
{
ÊÊ 
return
ÁÁ 
View
ÁÁ 
(
ÁÁ 
model
ÁÁ !
)
ÁÁ! "
;
ÁÁ" #
}
ËË 
var
ÈÈ 
result
ÈÈ 
=
ÈÈ 
await
ÈÈ 
UserManager
ÈÈ *
.
ÈÈ* +!
ChangePasswordAsync
ÈÈ+ >
(
ÈÈ> ?
User
ÈÈ? C
.
ÈÈC D
Identity
ÈÈD L
.
ÈÈL M
	GetUserId
ÈÈM V
(
ÈÈV W
)
ÈÈW X
,
ÈÈX Y
model
ÈÈZ _
.
ÈÈ_ `
OldPassword
ÈÈ` k
,
ÈÈk l
model
ÈÈm r
.
ÈÈr s
NewPassword
ÈÈs ~
)
ÈÈ~ 
;ÈÈ Ä
if
ÍÍ 
(
ÍÍ 
result
ÍÍ 
.
ÍÍ 
	Succeeded
ÍÍ  
)
ÍÍ  !
{
ÎÎ 
var
ÏÏ 
user
ÏÏ 
=
ÏÏ 
await
ÏÏ  
UserManager
ÏÏ! ,
.
ÏÏ, -
FindByIdAsync
ÏÏ- :
(
ÏÏ: ;
User
ÏÏ; ?
.
ÏÏ? @
Identity
ÏÏ@ H
.
ÏÏH I
	GetUserId
ÏÏI R
(
ÏÏR S
)
ÏÏS T
)
ÏÏT U
;
ÏÏU V
if
ÌÌ 
(
ÌÌ 
user
ÌÌ 
!=
ÌÌ 
null
ÌÌ  
)
ÌÌ  !
{
ÓÓ 
await
ÔÔ 
SignInManager
ÔÔ '
.
ÔÔ' (
SignInAsync
ÔÔ( 3
(
ÔÔ3 4
user
ÔÔ4 8
,
ÔÔ8 9
isPersistent
ÔÔ: F
:
ÔÔF G
false
ÔÔH M
,
ÔÔM N
rememberBrowser
ÔÔO ^
:
ÔÔ^ _
false
ÔÔ` e
)
ÔÔe f
;
ÔÔf g
}
 
return
ÒÒ 
RedirectToAction
ÒÒ '
(
ÒÒ' (
$str
ÒÒ( /
,
ÒÒ/ 0
new
ÒÒ1 4
{
ÒÒ5 6
Message
ÒÒ7 >
=
ÒÒ? @
ManageMessageId
ÒÒA P
.
ÒÒP Q#
ChangePasswordSuccess
ÒÒQ f
}
ÒÒg h
)
ÒÒh i
;
ÒÒi j
}
ÚÚ 
	AddErrors
ÛÛ 
(
ÛÛ 
result
ÛÛ 
)
ÛÛ 
;
ÛÛ 
return
ÙÙ 
View
ÙÙ 
(
ÙÙ 
model
ÙÙ 
)
ÙÙ 
;
ÙÙ 
}
ıı 	
public
˘˘ 
ActionResult
˘˘ 
SetPassword
˘˘ '
(
˘˘' (
)
˘˘( )
{
˙˙ 	
return
˚˚ 
View
˚˚ 
(
˚˚ 
)
˚˚ 
;
˚˚ 
}
¸¸ 	
[
ÄÄ 	
HttpPost
ÄÄ	 
]
ÄÄ 
[
ÅÅ 	&
ValidateAntiForgeryToken
ÅÅ	 !
]
ÅÅ! "
public
ÇÇ 
async
ÇÇ 
Task
ÇÇ 
<
ÇÇ 
ActionResult
ÇÇ &
>
ÇÇ& '
SetPassword
ÇÇ( 3
(
ÇÇ3 4"
SetPasswordViewModel
ÇÇ4 H
model
ÇÇI N
)
ÇÇN O
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 

ModelState
ÑÑ 
.
ÑÑ 
IsValid
ÑÑ "
)
ÑÑ" #
{
ÖÖ 
var
ÜÜ 
result
ÜÜ 
=
ÜÜ 
await
ÜÜ "
UserManager
ÜÜ# .
.
ÜÜ. /
AddPasswordAsync
ÜÜ/ ?
(
ÜÜ? @
User
ÜÜ@ D
.
ÜÜD E
Identity
ÜÜE M
.
ÜÜM N
	GetUserId
ÜÜN W
(
ÜÜW X
)
ÜÜX Y
,
ÜÜY Z
model
ÜÜ[ `
.
ÜÜ` a
NewPassword
ÜÜa l
)
ÜÜl m
;
ÜÜm n
if
áá 
(
áá 
result
áá 
.
áá 
	Succeeded
áá $
)
áá$ %
{
àà 
var
ââ 
user
ââ 
=
ââ 
await
ââ $
UserManager
ââ% 0
.
ââ0 1
FindByIdAsync
ââ1 >
(
ââ> ?
User
ââ? C
.
ââC D
Identity
ââD L
.
ââL M
	GetUserId
ââM V
(
ââV W
)
ââW X
)
ââX Y
;
ââY Z
if
ää 
(
ää 
user
ää 
!=
ää 
null
ää  $
)
ää$ %
{
ãã 
await
åå 
SignInManager
åå +
.
åå+ ,
SignInAsync
åå, 7
(
åå7 8
user
åå8 <
,
åå< =
isPersistent
åå> J
:
ååJ K
false
ååL Q
,
ååQ R
rememberBrowser
ååS b
:
ååb c
false
ååd i
)
ååi j
;
ååj k
}
çç 
return
éé 
RedirectToAction
éé +
(
éé+ ,
$str
éé, 3
,
éé3 4
new
éé5 8
{
éé9 :
Message
éé; B
=
ééC D
ManageMessageId
ééE T
.
ééT U 
SetPasswordSuccess
ééU g
}
ééh i
)
ééi j
;
ééj k
}
èè 
	AddErrors
êê 
(
êê 
result
êê  
)
êê  !
;
êê! "
}
ëë 
return
îî 
View
îî 
(
îî 
model
îî 
)
îî 
;
îî 
}
ïï 	
public
ôô 
async
ôô 
Task
ôô 
<
ôô 
ActionResult
ôô &
>
ôô& '
ManageLogins
ôô( 4
(
ôô4 5
ManageMessageId
ôô5 D
?
ôôD E
message
ôôF M
)
ôôM N
{
öö 	
ViewBag
õõ 
.
õõ 
StatusMessage
õõ !
=
õõ" #
message
úú 
==
úú 
ManageMessageId
úú *
.
úú* + 
RemoveLoginSuccess
úú+ =
?
úú> ?
$str
úú@ a
:
ùù 
message
ùù 
==
ùù 
ManageMessageId
ùù ,
.
ùù, -
Error
ùù- 2
?
ùù3 4
$str
ùù5 M
:
ûû 
$str
ûû 
;
ûû 
var
üü 
user
üü 
=
üü 
await
üü 
UserManager
üü (
.
üü( )
FindByIdAsync
üü) 6
(
üü6 7
User
üü7 ;
.
üü; <
Identity
üü< D
.
üüD E
	GetUserId
üüE N
(
üüN O
)
üüO P
)
üüP Q
;
üüQ R
if
†† 
(
†† 
user
†† 
==
†† 
null
†† 
)
†† 
{
°° 
return
¢¢ 
View
¢¢ 
(
¢¢ 
$str
¢¢ #
)
¢¢# $
;
¢¢$ %
}
££ 
var
§§ 

userLogins
§§ 
=
§§ 
await
§§ "
UserManager
§§# .
.
§§. /
GetLoginsAsync
§§/ =
(
§§= >
User
§§> B
.
§§B C
Identity
§§C K
.
§§K L
	GetUserId
§§L U
(
§§U V
)
§§V W
)
§§W X
;
§§X Y
var
•• 
otherLogins
•• 
=
•• #
AuthenticationManager
•• 3
.
••3 4,
GetExternalAuthenticationTypes
••4 R
(
••R S
)
••S T
.
••T U
Where
••U Z
(
••Z [
auth
••[ _
=>
••` b

userLogins
••c m
.
••m n
All
••n q
(
••q r
ul
••r t
=>
••u w
auth
••x |
.
••| }!
AuthenticationType••} è
!=••ê í
ul••ì ï
.••ï ñ
LoginProvider••ñ £
)••£ §
)••§ •
.••• ¶
ToList••¶ ¨
(••¨ ≠
)••≠ Æ
;••Æ Ø
ViewBag
¶¶ 
.
¶¶ 
ShowRemoveButton
¶¶ $
=
¶¶% &
user
¶¶' +
.
¶¶+ ,
PasswordHash
¶¶, 8
!=
¶¶9 ;
null
¶¶< @
||
¶¶A C

userLogins
¶¶D N
.
¶¶N O
Count
¶¶O T
>
¶¶U V
$num
¶¶W X
;
¶¶X Y
return
ßß 
View
ßß 
(
ßß 
new
ßß #
ManageLoginsViewModel
ßß 1
{
®® 
CurrentLogins
©© 
=
©© 

userLogins
©©  *
,
©©* +
OtherLogins
™™ 
=
™™ 
otherLogins
™™ )
}
´´ 
)
´´ 
;
´´ 
}
¨¨ 	
[
∞∞ 	
HttpPost
∞∞	 
]
∞∞ 
[
±± 	&
ValidateAntiForgeryToken
±±	 !
]
±±! "
public
≤≤ 
ActionResult
≤≤ 
	LinkLogin
≤≤ %
(
≤≤% &
string
≤≤& ,
provider
≤≤- 5
)
≤≤5 6
{
≥≥ 	
return
µµ 
new
µµ 
AccountController
µµ (
.
µµ( )
ChallengeResult
µµ) 8
(
µµ8 9
provider
µµ9 A
,
µµA B
Url
µµC F
.
µµF G
Action
µµG M
(
µµM N
$str
µµN a
,
µµa b
$str
µµc k
)
µµk l
,
µµl m
User
µµn r
.
µµr s
Identity
µµs {
.
µµ{ |
	GetUserIdµµ| Ö
(µµÖ Ü
)µµÜ á
)µµá à
;µµà â
}
∂∂ 	
public
∫∫ 
async
∫∫ 
Task
∫∫ 
<
∫∫ 
ActionResult
∫∫ &
>
∫∫& '
LinkLoginCallback
∫∫( 9
(
∫∫9 :
)
∫∫: ;
{
ªª 	
var
ºº 
	loginInfo
ºº 
=
ºº 
await
ºº !#
AuthenticationManager
ºº" 7
.
ºº7 8'
GetExternalLoginInfoAsync
ºº8 Q
(
ººQ R
XsrfKey
ººR Y
,
ººY Z
User
ºº[ _
.
ºº_ `
Identity
ºº` h
.
ººh i
	GetUserId
ººi r
(
ººr s
)
ººs t
)
ººt u
;
ººu v
if
ΩΩ 
(
ΩΩ 
	loginInfo
ΩΩ 
==
ΩΩ 
null
ΩΩ !
)
ΩΩ! "
{
ææ 
return
øø 
RedirectToAction
øø '
(
øø' (
$str
øø( 6
,
øø6 7
new
øø8 ;
{
øø< =
Message
øø> E
=
øøF G
ManageMessageId
øøH W
.
øøW X
Error
øøX ]
}
øø^ _
)
øø_ `
;
øø` a
}
¿¿ 
var
¡¡ 
result
¡¡ 
=
¡¡ 
await
¡¡ 
UserManager
¡¡ *
.
¡¡* +
AddLoginAsync
¡¡+ 8
(
¡¡8 9
User
¡¡9 =
.
¡¡= >
Identity
¡¡> F
.
¡¡F G
	GetUserId
¡¡G P
(
¡¡P Q
)
¡¡Q R
,
¡¡R S
	loginInfo
¡¡T ]
.
¡¡] ^
Login
¡¡^ c
)
¡¡c d
;
¡¡d e
return
¬¬ 
result
¬¬ 
.
¬¬ 
	Succeeded
¬¬ #
?
¬¬$ %
RedirectToAction
¬¬& 6
(
¬¬6 7
$str
¬¬7 E
)
¬¬E F
:
¬¬G H
RedirectToAction
¬¬I Y
(
¬¬Y Z
$str
¬¬Z h
,
¬¬h i
new
¬¬j m
{
¬¬n o
Message
¬¬p w
=
¬¬x y
ManageMessageId¬¬z â
.¬¬â ä
Error¬¬ä è
}¬¬ê ë
)¬¬ë í
;¬¬í ì
}
√√ 	
	protected
≈≈ 
override
≈≈ 
void
≈≈ 
Dispose
≈≈  '
(
≈≈' (
bool
≈≈( ,
	disposing
≈≈- 6
)
≈≈6 7
{
∆∆ 	
if
«« 
(
«« 
	disposing
«« 
&&
«« 
_userManager
«« )
!=
««* ,
null
««- 1
)
««1 2
{
»» 
_userManager
…… 
.
…… 
Dispose
…… $
(
……$ %
)
……% &
;
……& '
_userManager
   
=
   
null
   #
;
  # $
}
ÀÀ 
base
ÕÕ 
.
ÕÕ 
Dispose
ÕÕ 
(
ÕÕ 
	disposing
ÕÕ "
)
ÕÕ" #
;
ÕÕ# $
}
ŒŒ 	
public
–– 
int
–– 
a
–– 
;
–– 
private
““ 
void
““ 
	doNothing
““ 
(
““ 
)
““  
{
”” 	
int
‘‘ 
x
‘‘ 
=
‘‘ 
$num
‘‘ 
;
‘‘ 
return
’’ 
;
’’ 
}
÷÷ 	
private
⁄⁄ 
const
⁄⁄ 
string
⁄⁄ 
XsrfKey
⁄⁄ $
=
⁄⁄% &
$str
⁄⁄' /
;
⁄⁄/ 0
private
‹‹ $
IAuthenticationManager
‹‹ &#
AuthenticationManager
‹‹' <
{
›› 	
get
ﬁﬁ 
{
ﬂﬂ 
return
‡‡ 
HttpContext
‡‡ "
.
‡‡" #
GetOwinContext
‡‡# 1
(
‡‡1 2
)
‡‡2 3
.
‡‡3 4
Authentication
‡‡4 B
;
‡‡B C
}
·· 
}
‚‚ 	
private
‰‰ 
void
‰‰ 
	AddErrors
‰‰ 
(
‰‰ 
IdentityResult
‰‰ -
result
‰‰. 4
)
‰‰4 5
{
ÂÂ 	
foreach
ÊÊ 
(
ÊÊ 
var
ÊÊ 
error
ÊÊ 
in
ÊÊ !
result
ÊÊ" (
.
ÊÊ( )
Errors
ÊÊ) /
)
ÊÊ/ 0
{
ÁÁ 

ModelState
ËË 
.
ËË 
AddModelError
ËË (
(
ËË( )
$str
ËË) +
,
ËË+ ,
error
ËË- 2
)
ËË2 3
;
ËË3 4
}
ÈÈ 
}
ÍÍ 	
private
ÏÏ 
bool
ÏÏ 
HasPassword
ÏÏ  
(
ÏÏ  !
)
ÏÏ! "
{
ÌÌ 	
var
ÓÓ 
user
ÓÓ 
=
ÓÓ 
UserManager
ÓÓ "
.
ÓÓ" #
FindById
ÓÓ# +
(
ÓÓ+ ,
User
ÓÓ, 0
.
ÓÓ0 1
Identity
ÓÓ1 9
.
ÓÓ9 :
	GetUserId
ÓÓ: C
(
ÓÓC D
)
ÓÓD E
)
ÓÓE F
;
ÓÓF G
if
ÔÔ 
(
ÔÔ 
user
ÔÔ 
!=
ÔÔ 
null
ÔÔ 
)
ÔÔ 
{
 
return
ÒÒ 
user
ÒÒ 
.
ÒÒ 
PasswordHash
ÒÒ (
!=
ÒÒ) +
null
ÒÒ, 0
;
ÒÒ0 1
}
ÚÚ 
return
ÛÛ 
false
ÛÛ 
;
ÛÛ 
}
ÙÙ 	
public
¯¯ 
enum
¯¯ 
ManageMessageId
¯¯ #
{
˘˘ 	
AddPhoneSuccess
˙˙ 
,
˙˙ #
ChangePasswordSuccess
˚˚ !
,
˚˚! "!
SetTwoFactorSuccess
¸¸ 
,
¸¸   
SetPasswordSuccess
˝˝ 
,
˝˝  
RemoveLoginSuccess
˛˛ 
,
˛˛  
RemovePhoneSuccess
ˇˇ 
,
ˇˇ 
Error
ÄÄ 
}
ÅÅ 	
}
ÑÑ 
}ÖÖ È
>C:\sonarqube\projects\SonarProject\SonarProject\Global.asax.cs
	namespace		 	
SonarProject		
 
{

 
public 

class 
MvcApplication 
:  !
System" (
.( )
Web) ,
., -
HttpApplication- <
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
FilterConfig 
. !
RegisterGlobalFilters .
(. /
GlobalFilters/ <
.< =
Filters= D
)D E
;E F
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
} 
} ÛF
KC:\sonarqube\projects\SonarProject\SonarProject\Models\AccountViewModels.cs
	namespace 	
SonarProject
 
. 
Models 
{ 
public 

class .
"ExternalLoginConfirmationViewModel 3
{ 
[ 	
Required	 
] 
[		 	
Display			 
(		 
Name		 
=		 
$str		 
)		  
]		  !
public

 
string

 
Email

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
} 
public 

class &
ExternalLoginListViewModel +
{ 
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
} 
public 

class 
SendCodeViewModel "
{ 
public 
string 
SelectedProvider &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
ICollection 
< 
System !
.! "
Web" %
.% &
Mvc& )
.) *
SelectListItem* 8
>8 9
	Providers: C
{D E
getF I
;I J
setK N
;N O
}P Q
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 

RememberMe 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 

class 
VerifyCodeViewModel $
{ 
[ 	
Required	 
] 
public 
string 
Provider 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[   	
Display  	 
(   
Name   
=   
$str   
)   
]    
public!! 
string!! 
Code!! 
{!! 
get!!  
;!!  !
set!!" %
;!!% &
}!!' (
public"" 
string"" 
	ReturnUrl"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
[$$ 	
Display$$	 
($$ 
Name$$ 
=$$ 
$str$$ 0
)$$0 1
]$$1 2
public%% 
bool%% 
RememberBrowser%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
public'' 
bool'' 

RememberMe'' 
{''  
get''! $
;''$ %
set''& )
;'') *
}''+ ,
}(( 
public** 

class** 
ForgotViewModel**  
{++ 
[,, 	
Required,,	 
],, 
[-- 	
Display--	 
(-- 
Name-- 
=-- 
$str-- 
)--  
]--  !
public.. 
string.. 
Email.. 
{.. 
get.. !
;..! "
set..# &
;..& '
}..( )
}// 
public11 

class11 
LoginViewModel11 
{22 
[33 	
Required33	 
]33 
[44 	
Display44	 
(44 
Name44 
=44 
$str44 
)44  
]44  !
[55 	
EmailAddress55	 
]55 
public66 
string66 
Email66 
{66 
get66 !
;66! "
set66# &
;66& '
}66( )
[88 	
Required88	 
]88 
[99 	
DataType99	 
(99 
DataType99 
.99 
Password99 #
)99# $
]99$ %
[:: 	
Display::	 
(:: 
Name:: 
=:: 
$str:: "
)::" #
]::# $
public;; 
string;; 
Password;; 
{;;  
get;;! $
;;;$ %
set;;& )
;;;) *
};;+ ,
[== 	
Display==	 
(== 
Name== 
=== 
$str== &
)==& '
]==' (
public>> 
bool>> 

RememberMe>> 
{>>  
get>>! $
;>>$ %
set>>& )
;>>) *
}>>+ ,
}?? 
publicAA 

classAA 
RegisterViewModelAA "
{BB 
[CC 	
RequiredCC	 
]CC 
[DD 	
EmailAddressDD	 
]DD 
[EE 	
DisplayEE	 
(EE 
NameEE 
=EE 
$strEE 
)EE  
]EE  !
publicFF 
stringFF 
EmailFF 
{FF 
getFF !
;FF! "
setFF# &
;FF& '
}FF( )
[HH 	
RequiredHH	 
]HH 
[II 	
StringLengthII	 
(II 
$numII 
,II 
ErrorMessageII '
=II( )
$strII* Y
,IIY Z
MinimumLengthII[ h
=IIi j
$numIIk l
)IIl m
]IIm n
[JJ 	
DataTypeJJ	 
(JJ 
DataTypeJJ 
.JJ 
PasswordJJ #
)JJ# $
]JJ$ %
[KK 	
DisplayKK	 
(KK 
NameKK 
=KK 
$strKK "
)KK" #
]KK# $
publicLL 
stringLL 
PasswordLL 
{LL  
getLL! $
;LL$ %
setLL& )
;LL) *
}LL+ ,
[NN 	
DataTypeNN	 
(NN 
DataTypeNN 
.NN 
PasswordNN #
)NN# $
]NN$ %
[OO 	
DisplayOO	 
(OO 
NameOO 
=OO 
$strOO *
)OO* +
]OO+ ,
[PP 	
ComparePP	 
(PP 
$strPP 
,PP 
ErrorMessagePP )
=PP* +
$strPP, b
)PPb c
]PPc d
publicQQ 
stringQQ 
ConfirmPasswordQQ %
{QQ& '
getQQ( +
;QQ+ ,
setQQ- 0
;QQ0 1
}QQ2 3
}RR 
publicTT 

classTT "
ResetPasswordViewModelTT '
{UU 
[VV 	
RequiredVV	 
]VV 
[WW 	
EmailAddressWW	 
]WW 
[XX 	
DisplayXX	 
(XX 
NameXX 
=XX 
$strXX 
)XX  
]XX  !
publicYY 
stringYY 
EmailYY 
{YY 
getYY !
;YY! "
setYY# &
;YY& '
}YY( )
[[[ 	
Required[[	 
][[ 
[\\ 	
StringLength\\	 
(\\ 
$num\\ 
,\\ 
ErrorMessage\\ '
=\\( )
$str\\* Y
,\\Y Z
MinimumLength\\[ h
=\\i j
$num\\k l
)\\l m
]\\m n
[]] 	
DataType]]	 
(]] 
DataType]] 
.]] 
Password]] #
)]]# $
]]]$ %
[^^ 	
Display^^	 
(^^ 
Name^^ 
=^^ 
$str^^ "
)^^" #
]^^# $
public__ 
string__ 
Password__ 
{__  
get__! $
;__$ %
set__& )
;__) *
}__+ ,
[aa 	
DataTypeaa	 
(aa 
DataTypeaa 
.aa 
Passwordaa #
)aa# $
]aa$ %
[bb 	
Displaybb	 
(bb 
Namebb 
=bb 
$strbb *
)bb* +
]bb+ ,
[cc 	
Comparecc	 
(cc 
$strcc 
,cc 
ErrorMessagecc )
=cc* +
$strcc, b
)ccb c
]ccc d
publicdd 
stringdd 
ConfirmPassworddd %
{dd& '
getdd( +
;dd+ ,
setdd- 0
;dd0 1
}dd2 3
publicff 
stringff 
Codeff 
{ff 
getff  
;ff  !
setff" %
;ff% &
}ff' (
}gg 
publicii 

classii #
ForgotPasswordViewModelii (
{jj 
[kk 	
Requiredkk	 
]kk 
[ll 	
EmailAddressll	 
]ll 
[mm 	
Displaymm	 
(mm 
Namemm 
=mm 
$strmm 
)mm  
]mm  !
publicnn 
stringnn 
Emailnn 
{nn 
getnn !
;nn! "
setnn# &
;nn& '
}nn( )
}oo 
}pp ‚
HC:\sonarqube\projects\SonarProject\SonarProject\Models\IdentityModels.cs
	namespace 	
SonarProject
 
. 
Models 
{ 
public

 

class

 
ApplicationUser

  
:

! "
IdentityUser

# /
{ 
public 
async 
Task 
< 
ClaimsIdentity (
>( )%
GenerateUserIdentityAsync* C
(C D
UserManagerD O
<O P
ApplicationUserP _
>_ `
managera h
)h i
{ 	
var 
userIdentity 
= 
await $
manager% ,
., -
CreateIdentityAsync- @
(@ A
thisA E
,E F&
DefaultAuthenticationTypesG a
.a b
ApplicationCookieb s
)s t
;t u
return 
userIdentity 
;  
} 	
} 
public 

class  
ApplicationDbContext %
:& '
IdentityDbContext( 9
<9 :
ApplicationUser: I
>I J
{ 
public  
ApplicationDbContext #
(# $
)$ %
: 
base 
( 
$str &
,& '
throwIfV1Schema( 7
:7 8
false9 >
)> ?
{ 	
} 	
public 
static  
ApplicationDbContext *
Create+ 1
(1 2
)2 3
{ 	
return 
new  
ApplicationDbContext +
(+ ,
), -
;- .
} 	
}   
}!! ¬8
JC:\sonarqube\projects\SonarProject\SonarProject\Models\ManageViewModels.cs
	namespace 	
SonarProject
 
. 
Models 
{ 
public 

class 
IndexViewModel 
{		 
public

 
bool

 
HasPassword

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
IList 
< 
UserLoginInfo "
>" #
Logins$ *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
	TwoFactor 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
BrowserRemembered %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
public 

class !
ManageLoginsViewModel &
{ 
public 
IList 
< 
UserLoginInfo "
>" #
CurrentLogins$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
IList 
< %
AuthenticationDescription .
>. /
OtherLogins0 ;
{< =
get> A
;A B
setC F
;F G
}H I
} 
public 

class 
FactorViewModel  
{ 
public 
string 
Purpose 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class  
SetPasswordViewModel %
{ 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* Y
,Y Z
MinimumLength[ h
=i j
$numk l
)l m
]m n
[   	
DataType  	 
(   
DataType   
.   
Password   #
)  # $
]  $ %
[!! 	
Display!!	 
(!! 
Name!! 
=!! 
$str!! &
)!!& '
]!!' (
public"" 
string"" 
NewPassword"" !
{""" #
get""$ '
;""' (
set"") ,
;"", -
}"". /
[$$ 	
DataType$$	 
($$ 
DataType$$ 
.$$ 
Password$$ #
)$$# $
]$$$ %
[%% 	
Display%%	 
(%% 
Name%% 
=%% 
$str%% .
)%%. /
]%%/ 0
[&& 	
Compare&&	 
(&& 
$str&& 
,&& 
ErrorMessage&&  ,
=&&- .
$str&&/ i
)&&i j
]&&j k
public'' 
string'' 
ConfirmPassword'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
}(( 
public** 

class** #
ChangePasswordViewModel** (
{++ 
[,, 	
Required,,	 
],, 
[-- 	
DataType--	 
(-- 
DataType-- 
.-- 
Password-- #
)--# $
]--$ %
[.. 	
Display..	 
(.. 
Name.. 
=.. 
$str.. *
)..* +
]..+ ,
public// 
string// 
OldPassword// !
{//" #
get//$ '
;//' (
set//) ,
;//, -
}//. /
[11 	
Required11	 
]11 
[22 	
StringLength22	 
(22 
$num22 
,22 
ErrorMessage22 '
=22( )
$str22* Y
,22Y Z
MinimumLength22[ h
=22i j
$num22k l
)22l m
]22m n
[33 	
DataType33	 
(33 
DataType33 
.33 
Password33 #
)33# $
]33$ %
[44 	
Display44	 
(44 
Name44 
=44 
$str44 &
)44& '
]44' (
public55 
string55 
NewPassword55 !
{55" #
get55$ '
;55' (
set55) ,
;55, -
}55. /
[77 	
DataType77	 
(77 
DataType77 
.77 
Password77 #
)77# $
]77$ %
[88 	
Display88	 
(88 
Name88 
=88 
$str88 .
)88. /
]88/ 0
[99 	
Compare99	 
(99 
$str99 
,99 
ErrorMessage99  ,
=99- .
$str99/ i
)99i j
]99j k
public:: 
string:: 
ConfirmPassword:: %
{::& '
get::( +
;::+ ,
set::- 0
;::0 1
}::2 3
};; 
public== 

class== #
AddPhoneNumberViewModel== (
{>> 
[?? 	
Required??	 
]?? 
[@@ 	
Phone@@	 
]@@ 
[AA 	
DisplayAA	 
(AA 
NameAA 
=AA 
$strAA &
)AA& '
]AA' (
publicBB 
stringBB 
NumberBB 
{BB 
getBB "
;BB" #
setBB$ '
;BB' (
}BB) *
}CC 
publicEE 

classEE &
VerifyPhoneNumberViewModelEE +
{FF 
[GG 	
RequiredGG	 
]GG 
[HH 	
DisplayHH	 
(HH 
NameHH 
=HH 
$strHH 
)HH 
]HH  
publicII 
stringII 
CodeII 
{II 
getII  
;II  !
setII" %
;II% &
}II' (
[KK 	
RequiredKK	 
]KK 
[LL 	
PhoneLL	 
]LL 
[MM 	
DisplayMM	 
(MM 
NameMM 
=MM 
$strMM &
)MM& '
]MM' (
publicNN 
stringNN 
PhoneNumberNN !
{NN" #
getNN$ '
;NN' (
setNN) ,
;NN, -
}NN. /
}OO 
publicQQ 

classQQ '
ConfigureTwoFactorViewModelQQ ,
{RR 
publicSS 
stringSS 
SelectedProviderSS &
{SS' (
getSS) ,
;SS, -
setSS. 1
;SS1 2
}SS3 4
publicTT 
ICollectionTT 
<TT 
SystemTT !
.TT! "
WebTT" %
.TT% &
MvcTT& )
.TT) *
SelectListItemTT* 8
>TT8 9
	ProvidersTT: C
{TTD E
getTTF I
;TTI J
setTTK N
;TTN O
}TTP Q
}UU 
}VV ı
JC:\sonarqube\projects\SonarProject\SonarProject\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str '
)' (
]( )
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str )
)) *
]* +
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *Â
:C:\sonarqube\projects\SonarProject\SonarProject\Startup.cs
[ 
assembly 	
:	 
 
OwinStartupAttribute 
(  
typeof  &
(& '
SonarProject' 3
.3 4
Startup4 ;
); <
)< =
]= >
	namespace 	
SonarProject
 
{ 
public 

partial 
class 
Startup  
{ 
public		 
void		 
Configuration		 !
(		! "
IAppBuilder		" -
app		. 1
)		1 2
{

 	
ConfigureAuth 
( 
app 
) 
; 
} 	
} 
} 