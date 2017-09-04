.class public abstract Lss/ai;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lss/ab;Ljava/lang/String;)Lss/ai;
    .registers 5

    sget-object v0, Lss/ss/j;->c:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lss/ab;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_23

    sget-object v0, Lss/ss/j;->c:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lss/ab;->a(Ljava/lang/String;)Lss/ab;

    move-result-object p0

    :cond_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lss/ai;->a(Lss/ab;[B)Lss/ai;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lss/ab;[B)Lss/ai;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lss/ai;->a(Lss/ab;[BII)Lss/ai;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lss/ab;[BII)Lss/ai;
    .registers 10

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lss/ss/j;->a(JJJ)V

    new-instance v0, Lss/aj;

    invoke-direct {v0, p0, p3, p1, p2}, Lss/aj;-><init>(Lss/ab;I[BI)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lss/ab;
.end method

.method public abstract a(LgK/f;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public b()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method
