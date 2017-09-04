.class public final Lcom/alipay/android/phone/mrpc/core/v;
.super Lcom/alipay/android/phone/mrpc/core/aa;


# instance fields
.field a:Ljava/lang/String;

.field b:[B

.field c:Ljava/lang/String;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/v;

    const v1, 0x3c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/aa;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/v;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/v;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/v;->h:Ljava/util/Map;

    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/v;->c:Ljava/lang/String;

    return-void
.end method

.method private native a(Z)V
.end method

.method private native a([B)V
.end method

.method private native b()Ljava/lang/String;
.end method

.method private native b(Ljava/lang/String;)V
.end method

.method private native c()[B
.end method

.method private native d()Ljava/lang/String;
.end method

.method private native e()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end method

.method private native f()Z
.end method


# virtual methods
.method public final native a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final native a(Lorg/apache/http/Header;)V
.end method

.method public final native equals(Ljava/lang/Object;)Z
.end method

.method public final native hashCode()I
.end method

.method public final native toString()Ljava/lang/String;
.end method
