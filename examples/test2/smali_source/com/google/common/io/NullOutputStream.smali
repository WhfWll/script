.class public final Lcom/google/common/io/NullOutputStream;
.super Ljava/io/OutputStream;
.source "NullOutputStream.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/io/NullOutputStream;

    const v1, 0x384

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public native write(I)V
.end method

.method public native write([BII)V
.end method
