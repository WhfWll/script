.class public final Ljp;
.super Ljm;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljm;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljm;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
