.class public final Lkn;
.super Ljava/lang/Object;


# instance fields
.field public a:B

.field public a:J

.field public a:Ljava/lang/String;

.field public a:Ljava/lang/Throwable;

.field public a:S

.field public a:[Ljava/lang/Object;

.field public b:S


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SILjava/lang/Throwable;[Ljava/lang/Object;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lkn;->a:S

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkn;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lkn;->a:J

    const/4 v0, 0x5

    iput-byte v0, p0, Lkn;->a:B

    int-to-short v0, p2

    iput-short v0, p0, Lkn;->b:S

    iput-object p3, p0, Lkn;->a:Ljava/lang/Throwable;

    iput-object p4, p0, Lkn;->a:[Ljava/lang/Object;

    return-void
.end method
