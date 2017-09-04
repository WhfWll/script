.class public final Lcom/alipay/android/phone/mrpc/core/c;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final a:J = -0x27e79b9ef4131536L


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/c;

    const v1, 0x2c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1, p2}, Lcom/alipay/android/phone/mrpc/core/c;->a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/c;->c:I

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/c;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {p1, p2}, Lcom/alipay/android/phone/mrpc/core/c;->a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/c;->c:I

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/c;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/c;->c:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/c;->c:I

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/c;->d:Ljava/lang/String;

    return-void
.end method

.method private native a()Ljava/lang/String;
.end method

.method private static native a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native b()I
.end method

.method private native c()Ljava/lang/String;
.end method


# virtual methods
.method public final native a(Ljava/lang/String;)V
.end method
