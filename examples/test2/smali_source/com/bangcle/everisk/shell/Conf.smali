.class public Lcom/bangcle/everisk/shell/Conf;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "http://9.5.2.9"

    sput-object v0, Lcom/bangcle/everisk/shell/Conf;->a:Ljava/lang/String;

    const-string v0, "http://9.5.2.7"

    sput-object v0, Lcom/bangcle/everisk/shell/Conf;->b:Ljava/lang/String;

    const-string v0, "http://9.5.2.8"

    sput-object v0, Lcom/bangcle/everisk/shell/Conf;->c:Ljava/lang/String;

    const-string v0, "http://mobile.12306.cn/otsmobile/pjsqj"

    sput-object v0, Lcom/bangcle/everisk/shell/Conf;->d:Ljava/lang/String;

    const-string v0, "http://mobile.12306.cn/otsmobile/pjsqj"

    sput-object v0, Lcom/bangcle/everisk/shell/Conf;->e:Ljava/lang/String;

    const v0, 0x5

    sput v0, Lcom/bangcle/everisk/shell/Conf;->f:I

    const v0, 0x8527

    sput v0, Lcom/bangcle/everisk/shell/Conf;->g:I

    const v0, 0xea60

    sput v0, Lcom/bangcle/everisk/shell/Conf;->h:I

    const v0, 0x1d4c0

    sput v0, Lcom/bangcle/everisk/shell/Conf;->i:I

    const-string v0, "javascript:if(typeof(get_risk_info)!=\"function\"){get_auto_info=function(){try{var autologin=window.ticketStorage.getItem(\"autologin\");if(autologin===\"true\"||autologin==true){var uname=window.ticketStorage.getItem(\"username\");if(uname)return uname;}}catch(e){}return\"\";};con_send=\"\";get_risk_info=function(idx){try{var content=get_auto_info();if(!content)content=jq(\"#usernameInput\").val();if(content&&content!=con_send){var jsons=\'{\"type\":\"user_data\",\"data\":\"\'+content+\'\"}\';Risk_JSObj.setRiskUserInfo(jsons);con_send=content;}}catch(e){}};risk_begin=function(){get_risk_info({data:3});if(jq(\"#usernameInput\").length>0){jq(\"#usernameInput\").unbind(\"change\",get_risk_info).bind(\"change\",1,get_risk_info);}else{}if(jq(\"#loginBtn\").length>0){jq(\"#loginBtn\").unbind(\"click\",get_risk_info).bind(\"click\",2,get_risk_info);}else{}};}try{risk_begin();}catch(e){}"

    sput-object v0, Lcom/bangcle/everisk/shell/Conf;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 1

    const/16 v0, 0x73

    sput v0, Lcom/bangcle/everisk/shell/Conf;->f:I

    const-string v0, "http://120.197.235.40:6280"

    sput-object v0, Lcom/bangcle/everisk/shell/Conf;->d:Ljava/lang/String;

    const-string v0, "http://120.197.235.40:7878"

    sput-object v0, Lcom/bangcle/everisk/shell/Conf;->e:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/bangcle/everisk/shell/Conf;->h:I

    const/4 v0, 0x3

    sput v0, Lcom/bangcle/everisk/shell/Conf;->i:I

    return-void
.end method

.method public static b()Z
    .registers 2

    sget-object v0, Lcom/bangcle/everisk/shell/Conf;->e:Ljava/lang/String;

    const-string v1, "unconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
