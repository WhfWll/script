.class public final Lcom/alipay/sdk/data/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "application/octet-stream;binary/octet-stream"


# instance fields
.field public b:[Lorg/apache/http/Header;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/data/c;

    const v1, 0x94

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/sdk/data/c;->b:[Lorg/apache/http/Header;

    iput-object v0, p0, Lcom/alipay/sdk/data/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/sdk/data/c;->d:Ljava/lang/String;

    return-void
.end method

.method private native a(Ljava/lang/String;)V
.end method

.method private native a([Lorg/apache/http/Header;)V
.end method

.method private native b(Ljava/lang/String;)V
.end method

.method private native b()[Lorg/apache/http/Header;
.end method

.method private native c()Ljava/lang/String;
.end method

.method private native d()Ljava/lang/String;
.end method

.method private native e()V
.end method


# virtual methods
.method public final native a()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;"
        }
    .end annotation
.end method
