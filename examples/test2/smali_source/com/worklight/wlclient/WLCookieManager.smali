.class public Lcom/worklight/wlclient/WLCookieManager;
.super Ljava/lang/Object;
.source "WLCookieManager.java"


# static fields
.field private static cookies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private static instanceAuthId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/WLCookieManager;

    const v1, 0x4c7

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const/4 v0, 0x0

    sput-object v0, Lcom/worklight/wlclient/WLCookieManager;->instanceAuthId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addCookies(Lcom/worklight/wlclient/WLRequest;)V
.end method

.method public static native clearCookies()V
.end method

.method public static native getCookies()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end method

.method public static native getInstanceAuthId()Ljava/lang/String;
.end method

.method public static native handleResponseHeaders([Lorg/apache/http/Header;Ljava/net/URI;)V
.end method

.method public static native setCookies(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setInstanceAuthId(Ljava/lang/String;)V
.end method
