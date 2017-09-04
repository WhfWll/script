.class public final Lcom/alipay/sdk/authjs/d;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/alipay/sdk/authjs/c;

.field b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/authjs/d;

    const v1, 0x8f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/sdk/authjs/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/authjs/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/sdk/authjs/d;->a:Lcom/alipay/sdk/authjs/c;

    return-void
.end method

.method private static synthetic a(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)Lcom/alipay/sdk/authjs/a$a;
    .registers 8

    if-eqz p1, :cond_37

    const-string v0, "toast"

    iget-object v1, p1, Lcom/alipay/sdk/authjs/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->m:Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x1

    const/16 v3, 0x9c4

    if-ge v2, v3, :cond_20

    const/4 v0, 0x0

    :cond_20
    iget-object v2, p0, Lcom/alipay/sdk/authjs/d;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/alipay/sdk/authjs/f;

    invoke-direct {v2, p0, p1}, Lcom/alipay/sdk/authjs/f;-><init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_37
    sget-object v0, Lcom/alipay/sdk/authjs/a$a;->a:Lcom/alipay/sdk/authjs/a$a;

    return-object v0
.end method

.method private static synthetic a(Lcom/alipay/sdk/authjs/d;)Lcom/alipay/sdk/authjs/c;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/authjs/d;->a:Lcom/alipay/sdk/authjs/c;

    return-object v0
.end method

.method private static synthetic a(Lcom/alipay/sdk/authjs/d;Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/alipay/sdk/authjs/d;->a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V

    return-void
.end method

.method private static native a(Ljava/lang/Runnable;)V
.end method

.method private native a(Ljava/lang/String;)V
.end method

.method private native b(Lcom/alipay/sdk/authjs/a;)Lcom/alipay/sdk/authjs/a$a;
.end method

.method private native c(Lcom/alipay/sdk/authjs/a;)V
.end method


# virtual methods
.method public final native a(Lcom/alipay/sdk/authjs/a;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public final native a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
