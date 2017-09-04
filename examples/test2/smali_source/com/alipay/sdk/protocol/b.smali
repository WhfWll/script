.class public final Lcom/alipay/sdk/protocol/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Z

.field h:Z

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/protocol/b;

    const v1, 0xa2

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/b;->g:Z

    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/b;->h:Z

    iput-object p1, p0, Lcom/alipay/sdk/protocol/b;->a:Ljava/lang/String;

    return-void
.end method

.method private static native a(Ljava/lang/String;Lcom/alipay/sdk/protocol/a;)Lcom/alipay/sdk/protocol/b;
.end method

.method private static native a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/protocol/b;
.end method

.method private static native a(Lorg/json/JSONObject;)Lcom/alipay/sdk/protocol/b;
.end method

.method public static native a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/b;
.end method

.method private native b()Lorg/json/JSONObject;
.end method

.method private native c()Ljava/lang/String;
.end method

.method private native d()Ljava/lang/String;
.end method

.method private native e()Ljava/lang/String;
.end method

.method private native f()Ljava/lang/String;
.end method

.method private native g()Ljava/lang/String;
.end method

.method private native h()Ljava/lang/String;
.end method

.method private native i()Ljava/lang/String;
.end method

.method private native j()Ljava/lang/String;
.end method

.method private native k()Z
.end method

.method private native l()Z
.end method

.method private native m()Z
.end method


# virtual methods
.method public final native a()Lorg/json/JSONObject;
.end method
