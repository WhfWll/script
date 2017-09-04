.class public final Lcom/alipay/sdk/net/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/alipay/sdk/data/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/net/d;

    const v1, 0xa1

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/net/d;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/sdk/data/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/net/d;->a:I

    iput-object p1, p0, Lcom/alipay/sdk/net/d;->b:Lcom/alipay/sdk/data/c;

    return-void
.end method

.method private native a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/data/c;Lcom/alipay/sdk/data/f;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation
.end method

.method private static native a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/data/f;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation
.end method

.method private native a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/data/f;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation
.end method

.method private static native a(Lcom/alipay/sdk/data/f;Ljava/lang/String;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method private static native a(Ljava/lang/String;Lcom/alipay/sdk/data/f;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method private static native a(Lorg/json/JSONObject;)V
.end method


# virtual methods
.method public final native a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Z)Lcom/alipay/sdk/protocol/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation
.end method
