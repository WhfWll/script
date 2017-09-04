.class public LgK/x;
.super Ljava/lang/Object;


# static fields
.field public static final b:LgK/x;


# instance fields
.field private a:Z

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LgK/y;

    invoke-direct {v0}, LgK/y;-><init>()V

    sput-object v0, LgK/x;->b:LgK/x;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)LgK/x;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, LgK/x;->a:Z

    iput-wide p1, p0, LgK/x;->c:J

    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)LgK/x;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    if-nez p3, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, LgK/x;->d:J

    return-object p0
.end method

.method public b_()J
    .registers 3

    iget-wide v0, p0, LgK/x;->d:J

    return-wide v0
.end method

.method public c_()Z
    .registers 2

    iget-boolean v0, p0, LgK/x;->a:Z

    return v0
.end method

.method public d()J
    .registers 3

    iget-boolean v0, p0, LgK/x;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-wide v0, p0, LgK/x;->c:J

    return-wide v0
.end method

.method public d_()LgK/x;
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LgK/x;->d:J

    return-object p0
.end method

.method public f()LgK/x;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LgK/x;->a:Z

    return-object p0
.end method

.method public g()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-boolean v0, p0, LgK/x;->a:Z

    if-eqz v0, :cond_27

    iget-wide v0, p0, LgK/x;->c:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_27

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    return-void
.end method
