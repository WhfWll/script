.class public final Lcom/tl/uic/util/HTTPUtil;
.super Ljava/lang/Object;
.source "HTTPUtil.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final SUCCESS_IM_USED_RFC_3229:I = 0xe2

.field private static final SUCCESS_OK:I = 0xc8

.field public static final TLF_SESSION_ID_FROM_PCA:Ljava/lang/String; = "TLTSID"

.field private static volatile _myInstance:Lcom/tl/uic/util/HTTPUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/HTTPUtil;

    const v1, 0x422

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static native checkWhiteList()Ljava/lang/Boolean;
.end method

.method public static native convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native createEntity(Ljava/lang/String;Ljava/lang/Boolean;)Lorg/apache/http/entity/AbstractHttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native getBodyFromUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCookieValue(Ljava/net/URLConnection;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getInstance()Lcom/tl/uic/util/HTTPUtil;
.end method

.method public static native sendHttpImagePost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public static native sendHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
.end method

.method private static native sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method
