.class public abstract Lcom/alipay/android/phone/mrpc/core/aa;
.super Ljava/lang/Object;


# instance fields
.field f:Z

.field protected g:Lcom/alipay/android/phone/mrpc/core/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/aa;->f:Z

    return-void
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/aa;->f:Z

    return-void
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/aa;->f:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/phone/mrpc/core/g;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/aa;->g:Lcom/alipay/android/phone/mrpc/core/g;

    return-object v0
.end method
