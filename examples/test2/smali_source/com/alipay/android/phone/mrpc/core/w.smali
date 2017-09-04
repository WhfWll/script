.class public final Lcom/alipay/android/phone/mrpc/core/w;
.super Lcom/alipay/android/phone/mrpc/core/ab;


# instance fields
.field a:J

.field b:J

.field c:Ljava/lang/String;

.field d:Lcom/alipay/android/phone/mrpc/core/b;

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/w;

    const v1, 0x3d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/b;ILjava/lang/String;[B)V
    .registers 5

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/ab;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/w;->d:Lcom/alipay/android/phone/mrpc/core/b;

    iput p2, p0, Lcom/alipay/android/phone/mrpc/core/w;->g:I

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/w;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/phone/mrpc/core/w;->e:[B

    return-void
.end method

.method private native a(J)V
.end method

.method private native b()Lcom/alipay/android/phone/mrpc/core/b;
.end method

.method private native b(J)V
.end method

.method private native b(Ljava/lang/String;)V
.end method
