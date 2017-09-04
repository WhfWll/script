.class public Lcom/alipay/android/phone/mrpc/core/ab;
.super Ljava/lang/Object;


# instance fields
.field protected e:[B

.field protected f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/ab;

    const v1, 0x27

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native a(Ljava/lang/String;)V
.end method

.method public final native a()[B
.end method
