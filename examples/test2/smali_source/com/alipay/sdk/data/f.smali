.class public final Lcom/alipay/sdk/data/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x3e8

.field public static final b:I = 0x1f7


# instance fields
.field public c:I

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lorg/json/JSONObject;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Lcom/alipay/sdk/data/a;

.field m:[Lorg/apache/http/Header;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/data/f;

    const v1, 0x97

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/data/f;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/data/f;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/sdk/data/f;->e:J

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/data/f;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/sdk/data/f;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/sdk/data/f;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/sdk/data/f;->i:Lorg/json/JSONObject;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/data/f;->k:Z

    iput-object v2, p0, Lcom/alipay/sdk/data/f;->l:Lcom/alipay/sdk/data/a;

    iput-object v2, p0, Lcom/alipay/sdk/data/f;->m:[Lorg/apache/http/Header;

    return-void
.end method

.method private native a()Lcom/alipay/sdk/data/a;
.end method

.method private native a(I)V
.end method

.method private native a(J)V
.end method

.method private native a(Lcom/alipay/sdk/data/a;)V
.end method

.method private native a(Ljava/lang/String;)V
.end method

.method private native a(Lorg/json/JSONObject;)V
.end method

.method private native b()V
.end method

.method private native b(Ljava/lang/String;)V
.end method

.method private native c()I
.end method

.method private native c(Ljava/lang/String;)V
.end method

.method private native d()Ljava/lang/String;
.end method

.method private native d(Ljava/lang/String;)V
.end method

.method private native e(Ljava/lang/String;)V
.end method
