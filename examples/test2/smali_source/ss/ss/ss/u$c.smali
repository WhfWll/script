.class final Lss/ss/ss/u$c;
.super Ljava/lang/Object;

# interfaces
.implements Lss/ss/ss/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Lss/ss/ss/t$a;

.field private final b:LgK/g;

.field private final c:Lss/ss/ss/u$a;

.field private final d:Z


# direct methods
.method constructor <init>(LgK/g;IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/ss/u$c;->b:LgK/g;

    iput-boolean p3, p0, Lss/ss/ss/u$c;->d:Z

    new-instance v0, Lss/ss/ss/u$a;

    iget-object v1, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-direct {v0, v1}, Lss/ss/ss/u$a;-><init>(LgK/g;)V

    iput-object v0, p0, Lss/ss/ss/u$c;->c:Lss/ss/ss/u$a;

    new-instance v0, Lss/ss/ss/t$a;

    iget-object v1, p0, Lss/ss/ss/u$c;->c:Lss/ss/ss/u$a;

    invoke-direct {v0, p2, v1}, Lss/ss/ss/t$a;-><init>(ILgK/w;)V

    iput-object v0, p0, Lss/ss/ss/u$c;->a:Lss/ss/ss/t$a;

    return-void
.end method

.method private a(ISBI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/u$c;->c:Lss/ss/ss/u$a;

    iget-object v1, p0, Lss/ss/ss/u$c;->c:Lss/ss/ss/u$a;

    iput p1, v1, Lss/ss/ss/u$a;->d:I

    iput p1, v0, Lss/ss/ss/u$a;->a:I

    iget-object v0, p0, Lss/ss/ss/u$c;->c:Lss/ss/ss/u$a;

    iput-short p2, v0, Lss/ss/ss/u$a;->e:S

    iget-object v0, p0, Lss/ss/ss/u$c;->c:Lss/ss/ss/u$a;

    iput-byte p3, v0, Lss/ss/ss/u$a;->b:B

    iget-object v0, p0, Lss/ss/ss/u$c;->c:Lss/ss/ss/u$a;

    iput p4, v0, Lss/ss/ss/u$a;->c:I

    iget-object v0, p0, Lss/ss/ss/u$c;->a:Lss/ss/ss/t$a;

    invoke-virtual {v0}, Lss/ss/ss/t$a;->a()V

    iget-object v0, p0, Lss/ss/ss/u$c;->a:Lss/ss/ss/t$a;

    invoke-virtual {v0}, Lss/ss/ss/t$a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lss/ss/ss/b$a;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v0}, LgK/g;->j()I

    move-result v1

    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_c
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iget-object v2, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v2}, LgK/g;->h()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, p2, v1, v2, v0}, Lss/ss/ss/b$a;->a(IIIZ)V

    return-void

    :cond_1e
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private a(Lss/ss/ss/b$a;IBI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p4, :cond_c

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_38

    const/4 v2, 0x1

    :goto_11
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v0}, LgK/g;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :goto_1e
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_27

    invoke-direct {p0, p1, p4}, Lss/ss/ss/u$c;->a(Lss/ss/ss/b$a;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_27
    invoke-static {p2, p3, v0}, Lss/ss/ss/u;->a(IBS)I

    move-result v3

    invoke-direct {p0, v3, v0, p3, p4}, Lss/ss/ss/u$c;->a(ISBI)Ljava/util/List;

    move-result-object v5

    const/4 v4, -0x1

    sget-object v6, Lss/ss/ss/s;->d:Lss/ss/ss/s;

    move-object v0, p1

    move v3, p4

    invoke-interface/range {v0 .. v6}, Lss/ss/ss/b$a;->a(ZZIILjava/util/List;Lss/ss/ss/s;)V

    return-void

    :cond_38
    move v2, v1

    goto :goto_11

    :cond_3a
    move v0, v1

    goto :goto_1e
.end method

.method private b(Lss/ss/ss/b$a;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_16

    move v2, v1

    :goto_7
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_18

    :goto_b
    if-eqz v1, :cond_1a

    const-string v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_16
    move v2, v0

    goto :goto_7

    :cond_18
    move v1, v0

    goto :goto_b

    :cond_1a
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_27

    iget-object v0, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v0}, LgK/g;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_27
    invoke-static {p2, p3, v0}, Lss/ss/ss/u;->a(IBS)I

    move-result v1

    iget-object v3, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {p1, v2, p4, v3, v1}, Lss/ss/ss/b$a;->a(ZILgK/g;I)V

    iget-object v1, p0, Lss/ss/ss/u$c;->b:LgK/g;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, LgK/g;->g(J)V

    return-void
.end method

.method private c(Lss/ss/ss/b$a;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_14

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_14
    if-nez p4, :cond_1f

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1f
    invoke-direct {p0, p1, p4}, Lss/ss/ss/u$c;->a(Lss/ss/ss/b$a;I)V

    return-void
.end method

.method private d(Lss/ss/ss/b$a;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_14

    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_14
    if-nez p4, :cond_1f

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1f
    iget-object v0, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v0}, LgK/g;->j()I

    move-result v0

    invoke-static {v0}, Lss/ss/ss/a;->b(I)Lss/ss/ss/a;

    move-result-object v1

    if-nez v1, :cond_3a

    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3a
    invoke-interface {p1, p4, v1}, Lss/ss/ss/b$a;->a(ILss/ss/ss/a;)V

    return-void
.end method

.method private e(Lss/ss/ss/b$a;IBI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_d

    const-string v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_d
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_20

    if-eqz p2, :cond_1c

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1c
    invoke-interface {p1}, Lss/ss/ss/b$a;->b()V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    rem-int/lit8 v0, p2, 0x6

    if-eqz v0, :cond_33

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_33
    new-instance v3, Lss/ss/ss/ac;

    invoke-direct {v3}, Lss/ss/ss/ac;-><init>()V

    move v1, v2

    :goto_39
    if-ge v1, p2, :cond_84

    iget-object v0, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v0}, LgK/g;->i()S

    move-result v0

    iget-object v4, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v4}, LgK/g;->j()I

    move-result v4

    packed-switch v0, :pswitch_data_98

    :cond_4a
    :goto_4a
    :pswitch_4a
    invoke-virtual {v3, v0, v2, v4}, Lss/ss/ss/ac;->a(III)Lss/ss/ss/ac;

    add-int/lit8 v0, v1, 0x6

    move v1, v0

    goto :goto_39

    :pswitch_51
    if-eqz v4, :cond_4a

    if-eq v4, v6, :cond_4a

    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_5e
    const/4 v0, 0x4

    goto :goto_4a

    :pswitch_60
    const/4 v0, 0x7

    if-gez v4, :cond_4a

    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_6c
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_75

    const v5, 0xffffff

    if-le v4, v5, :cond_4a

    :cond_75
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_84
    invoke-interface {p1, v2, v3}, Lss/ss/ss/b$a;->a(ZLss/ss/ss/ac;)V

    invoke-virtual {v3}, Lss/ss/ss/ac;->c()I

    move-result v0

    if-ltz v0, :cond_1f

    iget-object v0, p0, Lss/ss/ss/u$c;->a:Lss/ss/ss/t$a;

    invoke-virtual {v3}, Lss/ss/ss/ac;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lss/ss/ss/t$a;->a(I)V

    goto :goto_1f

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_51
        :pswitch_5e
        :pswitch_60
        :pswitch_6c
        :pswitch_4a
    .end packed-switch
.end method

.method private f(Lss/ss/ss/b$a;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_c

    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_19

    iget-object v0, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v0}, LgK/g;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_19
    iget-object v1, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v1}, LgK/g;->j()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, -0x4

    invoke-static {v2, p3, v0}, Lss/ss/ss/u;->a(IBS)I

    move-result v2

    invoke-direct {p0, v2, v0, p3, p4}, Lss/ss/ss/u$c;->a(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p4, v1, v0}, Lss/ss/ss/b$a;->a(IILjava/util/List;)V

    return-void
.end method

.method private g(Lss/ss/ss/b$a;IBI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p2, v2, :cond_15

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    if-eqz p4, :cond_20

    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_20
    iget-object v2, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v2}, LgK/g;->j()I

    move-result v2

    iget-object v3, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v3}, LgK/g;->j()I

    move-result v3

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_34

    :goto_30
    invoke-interface {p1, v0, v2, v3}, Lss/ss/ss/b$a;->a(ZII)V

    return-void

    :cond_34
    move v0, v1

    goto :goto_30
.end method

.method private h(Lss/ss/ss/b$a;IBI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x8

    if-ge p2, v0, :cond_15

    const-string v0, "TYPE_GOAWAY length < 8: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    if-eqz p4, :cond_20

    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_20
    iget-object v0, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v0}, LgK/g;->j()I

    move-result v1

    iget-object v0, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v0}, LgK/g;->j()I

    move-result v0

    add-int/lit8 v2, p2, -0x8

    invoke-static {v0}, Lss/ss/ss/a;->b(I)Lss/ss/ss/a;

    move-result-object v3

    if-nez v3, :cond_43

    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_43
    sget-object v0, LgK/h;->b:LgK/h;

    if-lez v2, :cond_4e

    iget-object v0, p0, Lss/ss/ss/u$c;->b:LgK/g;

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, LgK/g;->c(J)LgK/h;

    move-result-object v0

    :cond_4e
    invoke-interface {p1, v1, v3, v0}, Lss/ss/ss/b$a;->a(ILss/ss/ss/a;LgK/h;)V

    return-void
.end method

.method private i(Lss/ss/ss/b$a;IBI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_14

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_14
    iget-object v0, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v0}, LgK/g;->j()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_34

    const-string v2, "windowSizeIncrement was 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_34
    invoke-interface {p1, p4, v0, v1}, Lss/ss/ss/b$a;->a(IJ)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lss/ss/ss/u$c;->d:Z

    if-eqz v0, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-static {}, Lss/ss/ss/u;->a()LgK/h;

    move-result-object v1

    invoke-virtual {v1}, LgK/h;->f()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, LgK/g;->c(J)LgK/h;

    move-result-object v0

    invoke-static {}, Lss/ss/ss/u;->b()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {}, Lss/ss/ss/u;->b()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, LgK/h;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_37
    invoke-static {}, Lss/ss/ss/u;->a()LgK/h;

    move-result-object v1

    invoke-virtual {v1, v0}, LgK/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, LgK/h;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public a(Lss/ss/ss/b$a;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_2
    iget-object v2, p0, Lss/ss/ss/u$c;->b:LgK/g;

    const-wide/16 v4, 0x9

    invoke-interface {v2, v4, v5}, LgK/g;->a(J)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_24

    iget-object v2, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-static {v2}, Lss/ss/ss/u;->a(LgK/g;)I

    move-result v2

    if-ltz v2, :cond_15

    const/16 v3, 0x4000

    if-le v2, v3, :cond_27

    :cond_15
    const-string v3, "FRAME_SIZE_ERROR: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lss/ss/ss/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catch_24
    move-exception v0

    move v0, v1

    :goto_26
    return v0

    :cond_27
    iget-object v1, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v1}, LgK/g;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iget-object v3, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v3}, LgK/g;->h()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v4}, LgK/g;->j()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    invoke-static {}, Lss/ss/ss/u;->b()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-static {}, Lss/ss/ss/u;->b()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v0, v4, v2, v1, v3}, Lss/ss/ss/u$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_5a
    packed-switch v1, :pswitch_data_88

    iget-object v1, p0, Lss/ss/ss/u$c;->b:LgK/g;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, LgK/g;->g(J)V

    goto :goto_26

    :pswitch_64
    invoke-direct {p0, p1, v2, v3, v4}, Lss/ss/ss/u$c;->b(Lss/ss/ss/b$a;IBI)V

    goto :goto_26

    :pswitch_68
    invoke-direct {p0, p1, v2, v3, v4}, Lss/ss/ss/u$c;->a(Lss/ss/ss/b$a;IBI)V

    goto :goto_26

    :pswitch_6c
    invoke-direct {p0, p1, v2, v3, v4}, Lss/ss/ss/u$c;->c(Lss/ss/ss/b$a;IBI)V

    goto :goto_26

    :pswitch_70
    invoke-direct {p0, p1, v2, v3, v4}, Lss/ss/ss/u$c;->d(Lss/ss/ss/b$a;IBI)V

    goto :goto_26

    :pswitch_74
    invoke-direct {p0, p1, v2, v3, v4}, Lss/ss/ss/u$c;->e(Lss/ss/ss/b$a;IBI)V

    goto :goto_26

    :pswitch_78
    invoke-direct {p0, p1, v2, v3, v4}, Lss/ss/ss/u$c;->f(Lss/ss/ss/b$a;IBI)V

    goto :goto_26

    :pswitch_7c
    invoke-direct {p0, p1, v2, v3, v4}, Lss/ss/ss/u$c;->g(Lss/ss/ss/b$a;IBI)V

    goto :goto_26

    :pswitch_80
    invoke-direct {p0, p1, v2, v3, v4}, Lss/ss/ss/u$c;->h(Lss/ss/ss/b$a;IBI)V

    goto :goto_26

    :pswitch_84
    invoke-direct {p0, p1, v2, v3, v4}, Lss/ss/ss/u$c;->i(Lss/ss/ss/b$a;IBI)V

    goto :goto_26

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_64
        :pswitch_68
        :pswitch_6c
        :pswitch_70
        :pswitch_74
        :pswitch_78
        :pswitch_7c
        :pswitch_80
        :pswitch_84
    .end packed-switch
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/u$c;->b:LgK/g;

    invoke-interface {v0}, LgK/g;->close()V

    return-void
.end method
