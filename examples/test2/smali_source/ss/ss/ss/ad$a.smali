.class final Lss/ss/ss/ad$a;
.super Ljava/lang/Object;

# interfaces
.implements Lss/ss/ss/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:LgK/g;

.field private final b:Z

.field private final c:Lss/ss/ss/w;


# direct methods
.method constructor <init>(LgK/g;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    new-instance v0, Lss/ss/ss/w;

    iget-object v1, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-direct {v0, v1}, Lss/ss/ss/w;-><init>(LgK/g;)V

    iput-object v0, p0, Lss/ss/ss/ad$a;->c:Lss/ss/ss/w;

    iput-boolean p2, p0, Lss/ss/ss/ad$a;->b:Z

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lss/ss/ss/b$a;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v5, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v2}, LgK/g;->j()I

    move-result v2

    iget-object v3, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v3}, LgK/g;->j()I

    move-result v4

    and-int v3, v2, v5

    and-int/2addr v4, v5

    iget-object v2, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v2}, LgK/g;->i()S

    iget-object v2, p0, Lss/ss/ss/ad$a;->c:Lss/ss/ss/w;

    add-int/lit8 v5, p3, -0xa

    invoke-virtual {v2, v5}, Lss/ss/ss/w;->a(I)Ljava/util/List;

    move-result-object v5

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_31

    move v2, v1

    :goto_26
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_33

    :goto_2a
    sget-object v6, Lss/ss/ss/s;->a:Lss/ss/ss/s;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lss/ss/ss/b$a;->a(ZZIILjava/util/List;Lss/ss/ss/s;)V

    return-void

    :cond_31
    move v2, v0

    goto :goto_26

    :cond_33
    move v1, v0

    goto :goto_2a
.end method

.method private b(Lss/ss/ss/b$a;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v0}, LgK/g;->j()I

    move-result v0

    const v2, 0x7fffffff

    and-int v3, v0, v2

    iget-object v0, p0, Lss/ss/ss/ad$a;->c:Lss/ss/ss/w;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, v2}, Lss/ss/ss/w;->a(I)Ljava/util/List;

    move-result-object v5

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_21

    const/4 v2, 0x1

    :goto_19
    const/4 v4, -0x1

    sget-object v6, Lss/ss/ss/s;->b:Lss/ss/ss/s;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lss/ss/ss/b$a;->a(ZZIILjava/util/List;Lss/ss/ss/s;)V

    return-void

    :cond_21
    move v2, v1

    goto :goto_19
.end method

.method private c(Lss/ss/ss/b$a;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    if-eq p3, v0, :cond_15

    const-string v0, "TYPE_RST_STREAM length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lss/ss/ss/ad$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    iget-object v0, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v0}, LgK/g;->j()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v1}, LgK/g;->j()I

    move-result v1

    invoke-static {v1}, Lss/ss/ss/a;->a(I)Lss/ss/ss/a;

    move-result-object v2

    if-nez v2, :cond_3a

    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lss/ss/ss/ad$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3a
    invoke-interface {p1, v0, v2}, Lss/ss/ss/b$a;->a(ILss/ss/ss/a;)V

    return-void
.end method

.method private d(Lss/ss/ss/b$a;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v0}, LgK/g;->j()I

    move-result v0

    const v2, 0x7fffffff

    and-int v3, v0, v2

    iget-object v0, p0, Lss/ss/ss/ad$a;->c:Lss/ss/ss/w;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, v2}, Lss/ss/ss/w;->a(I)Ljava/util/List;

    move-result-object v5

    const/4 v4, -0x1

    sget-object v6, Lss/ss/ss/s;->c:Lss/ss/ss/s;

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v6}, Lss/ss/ss/b$a;->a(ZZIILjava/util/List;Lss/ss/ss/s;)V

    return-void
.end method

.method private e(Lss/ss/ss/b$a;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v2, 0x7fffffff

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v0, 0x8

    if-eq p3, v0, :cond_18

    const-string v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lss/ss/ss/ad$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_18
    iget-object v0, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v0}, LgK/g;->j()I

    move-result v0

    iget-object v1, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v1}, LgK/g;->j()I

    move-result v1

    and-int/2addr v0, v2

    and-int/2addr v1, v2

    int-to-long v2, v1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3c

    const-string v0, "windowSizeIncrement was 0"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lss/ss/ss/ad$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3c
    invoke-interface {p1, v0, v2, v3}, Lss/ss/ss/b$a;->a(IJ)V

    return-void
.end method

.method private f(Lss/ss/ss/b$a;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p3, v2, :cond_14

    const-string v2, "TYPE_PING length: %d != 4"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lss/ss/ss/ad$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_14
    iget-object v2, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v2}, LgK/g;->j()I

    move-result v3

    iget-boolean v4, p0, Lss/ss/ss/ad$a;->b:Z

    and-int/lit8 v2, v3, 0x1

    if-ne v2, v0, :cond_27

    move v2, v0

    :goto_21
    if-ne v4, v2, :cond_29

    :goto_23
    invoke-interface {p1, v0, v3, v1}, Lss/ss/ss/b$a;->a(ZII)V

    return-void

    :cond_27
    move v2, v1

    goto :goto_21

    :cond_29
    move v0, v1

    goto :goto_23
.end method

.method private g(Lss/ss/ss/b$a;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    if-eq p3, v0, :cond_15

    const-string v0, "TYPE_GOAWAY length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lss/ss/ss/ad$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    iget-object v0, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v0}, LgK/g;->j()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v1}, LgK/g;->j()I

    move-result v1

    invoke-static {v1}, Lss/ss/ss/a;->c(I)Lss/ss/ss/a;

    move-result-object v2

    if-nez v2, :cond_3a

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lss/ss/ss/ad$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3a
    sget-object v1, LgK/h;->b:LgK/h;

    invoke-interface {p1, v0, v2, v1}, Lss/ss/ss/b$a;->a(ILss/ss/ss/a;LgK/h;)V

    return-void
.end method

.method private h(Lss/ss/ss/b$a;II)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v2}, LgK/g;->j()I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    add-int/lit8 v2, v2, 0x4

    if-eq p3, v2, :cond_24

    const-string v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Lss/ss/ss/ad$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_24
    new-instance v4, Lss/ss/ss/ac;

    invoke-direct {v4}, Lss/ss/ss/ac;-><init>()V

    move v2, v1

    :goto_2a
    if-ge v2, v3, :cond_47

    iget-object v5, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v5}, LgK/g;->j()I

    move-result v5

    iget-object v6, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v6}, LgK/g;->j()I

    move-result v6

    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    const v8, 0xffffff

    and-int/2addr v5, v8

    invoke-virtual {v4, v5, v7, v6}, Lss/ss/ss/ac;->a(III)Lss/ss/ss/ac;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_47
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_4f

    :goto_4b
    invoke-interface {p1, v0, v4}, Lss/ss/ss/b$a;->a(ZLss/ss/ss/ac;)V

    return-void

    :cond_4f
    move v0, v1

    goto :goto_4b
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lss/ss/ss/b$a;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v2}, LgK/g;->j()I

    move-result v3

    iget-object v2, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {v2}, LgK/g;->j()I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_44

    move-result v4

    const/high16 v2, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_47

    move v2, v1

    :goto_14
    const/high16 v5, -0x1000000

    and-int/2addr v5, v4

    ushr-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v4, v6

    if-eqz v2, :cond_73

    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v3

    ushr-int/lit8 v0, v0, 0x10

    const v2, 0xffff

    and-int/2addr v2, v3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_49

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version != 3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_44
    move-exception v1

    move v1, v0

    :goto_46
    return v1

    :cond_47
    move v2, v0

    goto :goto_14

    :cond_49
    packed-switch v2, :pswitch_data_82

    :pswitch_4c
    iget-object v0, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    int-to-long v2, v4

    invoke-interface {v0, v2, v3}, LgK/g;->g(J)V

    goto :goto_46

    :pswitch_53
    invoke-direct {p0, p1, v5, v4}, Lss/ss/ss/ad$a;->a(Lss/ss/ss/b$a;II)V

    goto :goto_46

    :pswitch_57
    invoke-direct {p0, p1, v5, v4}, Lss/ss/ss/ad$a;->b(Lss/ss/ss/b$a;II)V

    goto :goto_46

    :pswitch_5b
    invoke-direct {p0, p1, v5, v4}, Lss/ss/ss/ad$a;->c(Lss/ss/ss/b$a;II)V

    goto :goto_46

    :pswitch_5f
    invoke-direct {p0, p1, v5, v4}, Lss/ss/ss/ad$a;->h(Lss/ss/ss/b$a;II)V

    goto :goto_46

    :pswitch_63
    invoke-direct {p0, p1, v5, v4}, Lss/ss/ss/ad$a;->f(Lss/ss/ss/b$a;II)V

    goto :goto_46

    :pswitch_67
    invoke-direct {p0, p1, v5, v4}, Lss/ss/ss/ad$a;->g(Lss/ss/ss/b$a;II)V

    goto :goto_46

    :pswitch_6b
    invoke-direct {p0, p1, v5, v4}, Lss/ss/ss/ad$a;->d(Lss/ss/ss/b$a;II)V

    goto :goto_46

    :pswitch_6f
    invoke-direct {p0, p1, v5, v4}, Lss/ss/ss/ad$a;->e(Lss/ss/ss/b$a;II)V

    goto :goto_46

    :cond_73
    const v2, 0x7fffffff

    and-int/2addr v2, v3

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_7c

    move v0, v1

    :cond_7c
    iget-object v3, p0, Lss/ss/ss/ad$a;->a:LgK/g;

    invoke-interface {p1, v0, v2, v3, v4}, Lss/ss/ss/b$a;->a(ZILgK/g;I)V

    goto :goto_46

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_53
        :pswitch_57
        :pswitch_5b
        :pswitch_5f
        :pswitch_4c
        :pswitch_63
        :pswitch_67
        :pswitch_6b
        :pswitch_6f
    .end packed-switch
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/ad$a;->c:Lss/ss/ss/w;

    invoke-virtual {v0}, Lss/ss/ss/w;->a()V

    return-void
.end method
