.class public Lcom/customized/webviewclient/MySslConfig;
.super Ljava/lang/Object;
.source "MySslConfig.java"


# static fields
.field private static domainWhiteList:[Ljava/lang/String;

.field private static issuerWhiteListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/customized/webviewclient/MySslConfig;

    const v1, 0x131

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "114.255.140.184:8280"

    aput-object v2, v0, v1

    .line 26
    const/4 v1, 0x1

    const-string v2, "mobile.12306.cn"

    aput-object v2, v0, v1

    sput-object v0, Lcom/customized/webviewclient/MySslConfig;->domainWhiteList:[Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/customized/webviewclient/MySslConfig;->issuerWhiteListMap:Ljava/util/HashMap;

    sget-object v0, Lcom/customized/webviewclient/MySslConfig;->issuerWhiteListMap:Ljava/util/HashMap;

    .line 28
    const-string v1, "114.255.140.184"

    const-string v2, "mobile.12306.cn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native isInWhiteList(Landroid/net/http/SslCertificate;)Z
.end method

.method public static native isInWhiteList(Ljava/lang/String;)Z
.end method
