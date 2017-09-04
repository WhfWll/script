.class public final Lif;
.super Ljava/lang/Object;


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>([BI)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p2, [B

    iput-object v0, p0, Lif;->a:[B

    iget-object v0, p0, Lif;->a:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
