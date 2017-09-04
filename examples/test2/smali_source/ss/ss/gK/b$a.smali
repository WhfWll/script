.class public Lss/ss/gK/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/gK/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lss/ag;

.field final c:Lss/ak;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLss/ag;Lss/ak;)V
    .registers 12

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lss/ss/gK/b$a;->l:I

    iput-wide p1, p0, Lss/ss/gK/b$a;->a:J

    iput-object p3, p0, Lss/ss/gK/b$a;->b:Lss/ag;

    iput-object p4, p0, Lss/ss/gK/b$a;->c:Lss/ak;

    if-eqz p4, :cond_8c

    invoke-virtual {p4}, Lss/ak;->e()Lss/w;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Lss/w;->a()I

    move-result v2

    :goto_17
    if-ge v0, v2, :cond_8c

    invoke-virtual {v1, v0}, Lss/w;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lss/w;->b(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-static {v4}, Lss/ss/gK/h;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lss/ss/gK/b$a;->d:Ljava/util/Date;

    iput-object v4, p0, Lss/ss/gK/b$a;->e:Ljava/lang/String;

    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_34
    const-string v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-static {v4}, Lss/ss/gK/h;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lss/ss/gK/b$a;->h:Ljava/util/Date;

    goto :goto_31

    :cond_43
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-static {v4}, Lss/ss/gK/h;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lss/ss/gK/b$a;->f:Ljava/util/Date;

    iput-object v4, p0, Lss/ss/gK/b$a;->g:Ljava/lang/String;

    goto :goto_31

    :cond_54
    const-string v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    iput-object v4, p0, Lss/ss/gK/b$a;->k:Ljava/lang/String;

    goto :goto_31

    :cond_5f
    const-string v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-static {v4, v6}, Lss/ss/gK/d;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lss/ss/gK/b$a;->l:I

    goto :goto_31

    :cond_6e
    sget-object v5, Lss/ss/gK/o;->b:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lss/ss/gK/b$a;->i:J

    goto :goto_31

    :cond_7d
    sget-object v5, Lss/ss/gK/o;->c:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lss/ss/gK/b$a;->j:J

    goto :goto_31

    :cond_8c
    return-void
.end method

.method private static a(Lss/ag;)Z
    .registers 2

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lss/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lss/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b()Lss/ss/gK/b;
    .registers 15

    const-wide/16 v4, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lss/ss/gK/b$a;->c:Lss/ak;

    if-nez v0, :cond_10

    new-instance v0, Lss/ss/gK/b;

    iget-object v1, p0, Lss/ss/gK/b$a;->b:Lss/ag;

    invoke-direct {v0, v1, v12, v12}, Lss/ss/gK/b;-><init>(Lss/ag;Lss/ak;Lss/ss/gK/c;)V

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lss/ss/gK/b$a;->b:Lss/ag;

    invoke-virtual {v0}, Lss/ag;->g()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lss/ss/gK/b$a;->c:Lss/ak;

    invoke-virtual {v0}, Lss/ak;->d()Lss/v;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v0, Lss/ss/gK/b;

    iget-object v1, p0, Lss/ss/gK/b$a;->b:Lss/ag;

    invoke-direct {v0, v1, v12, v12}, Lss/ss/gK/b;-><init>(Lss/ag;Lss/ak;Lss/ss/gK/c;)V

    goto :goto_f

    :cond_28
    iget-object v0, p0, Lss/ss/gK/b$a;->c:Lss/ak;

    iget-object v1, p0, Lss/ss/gK/b$a;->b:Lss/ag;

    invoke-static {v0, v1}, Lss/ss/gK/b;->a(Lss/ak;Lss/ag;)Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Lss/ss/gK/b;

    iget-object v1, p0, Lss/ss/gK/b$a;->b:Lss/ag;

    invoke-direct {v0, v1, v12, v12}, Lss/ss/gK/b;-><init>(Lss/ag;Lss/ak;Lss/ss/gK/c;)V

    goto :goto_f

    :cond_3a
    iget-object v0, p0, Lss/ss/gK/b$a;->b:Lss/ag;

    invoke-virtual {v0}, Lss/ag;->f()Lss/e;

    move-result-object v6

    invoke-virtual {v6}, Lss/e;->a()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lss/ss/gK/b$a;->b:Lss/ag;

    invoke-static {v0}, Lss/ss/gK/b$a;->a(Lss/ag;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_4e
    new-instance v0, Lss/ss/gK/b;

    iget-object v1, p0, Lss/ss/gK/b$a;->b:Lss/ag;

    invoke-direct {v0, v1, v12, v12}, Lss/ss/gK/b;-><init>(Lss/ag;Lss/ak;Lss/ss/gK/c;)V

    goto :goto_f

    :cond_56
    invoke-direct {p0}, Lss/ss/gK/b$a;->d()J

    move-result-wide v8

    invoke-direct {p0}, Lss/ss/gK/b$a;->c()J

    move-result-wide v0

    invoke-virtual {v6}, Lss/e;->c()I

    move-result v2

    if-eq v2, v13, :cond_73

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lss/e;->c()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_73
    invoke-virtual {v6}, Lss/e;->h()I

    move-result v2

    if-eq v2, v13, :cond_122

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lss/e;->h()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :goto_84
    iget-object v7, p0, Lss/ss/gK/b$a;->c:Lss/ak;

    invoke-virtual {v7}, Lss/ak;->h()Lss/e;

    move-result-object v7

    invoke-virtual {v7}, Lss/e;->f()Z

    move-result v10

    if-nez v10, :cond_a1

    invoke-virtual {v6}, Lss/e;->g()I

    move-result v10

    if-eq v10, v13, :cond_a1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lss/e;->g()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :cond_a1
    invoke-virtual {v7}, Lss/e;->a()Z

    move-result v6

    if-nez v6, :cond_df

    add-long v6, v8, v2

    add-long/2addr v4, v0

    cmp-long v4, v6, v4

    if-gez v4, :cond_df

    iget-object v4, p0, Lss/ss/gK/b$a;->c:Lss/ak;

    invoke-virtual {v4}, Lss/ak;->g()Lss/ak$a;

    move-result-object v4

    add-long/2addr v2, v8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_c0

    const-string v0, "Warning"

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v4, v0, v1}, Lss/ak$a;->b(Ljava/lang/String;Ljava/lang/String;)Lss/ak$a;

    :cond_c0
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v8, v0

    if-lez v0, :cond_d4

    invoke-direct {p0}, Lss/ss/gK/b$a;->e()Z

    move-result v0

    if-eqz v0, :cond_d4

    const-string v0, "Warning"

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v4, v0, v1}, Lss/ak$a;->b(Ljava/lang/String;Ljava/lang/String;)Lss/ak$a;

    :cond_d4
    new-instance v0, Lss/ss/gK/b;

    invoke-virtual {v4}, Lss/ak$a;->a()Lss/ak;

    move-result-object v1

    invoke-direct {v0, v12, v1, v12}, Lss/ss/gK/b;-><init>(Lss/ag;Lss/ak;Lss/ss/gK/c;)V

    goto/16 :goto_f

    :cond_df
    iget-object v0, p0, Lss/ss/gK/b$a;->b:Lss/ag;

    invoke-virtual {v0}, Lss/ag;->e()Lss/ag$a;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/b$a;->k:Ljava/lang/String;

    if-eqz v1, :cond_103

    const-string v1, "If-None-Match"

    iget-object v2, p0, Lss/ss/gK/b$a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    :cond_f0
    :goto_f0
    invoke-virtual {v0}, Lss/ag$a;->a()Lss/ag;

    move-result-object v1

    invoke-static {v1}, Lss/ss/gK/b$a;->a(Lss/ag;)Z

    move-result v0

    if-eqz v0, :cond_11b

    new-instance v0, Lss/ss/gK/b;

    iget-object v2, p0, Lss/ss/gK/b$a;->c:Lss/ak;

    invoke-direct {v0, v1, v2, v12}, Lss/ss/gK/b;-><init>(Lss/ag;Lss/ak;Lss/ss/gK/c;)V

    goto/16 :goto_f

    :cond_103
    iget-object v1, p0, Lss/ss/gK/b$a;->f:Ljava/util/Date;

    if-eqz v1, :cond_10f

    const-string v1, "If-Modified-Since"

    iget-object v2, p0, Lss/ss/gK/b$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    goto :goto_f0

    :cond_10f
    iget-object v1, p0, Lss/ss/gK/b$a;->d:Ljava/util/Date;

    if-eqz v1, :cond_f0

    const-string v1, "If-Modified-Since"

    iget-object v2, p0, Lss/ss/gK/b$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lss/ag$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;

    goto :goto_f0

    :cond_11b
    new-instance v0, Lss/ss/gK/b;

    invoke-direct {v0, v1, v12, v12}, Lss/ss/gK/b;-><init>(Lss/ag;Lss/ak;Lss/ss/gK/c;)V

    goto/16 :goto_f

    :cond_122
    move-wide v2, v4

    goto/16 :goto_84
.end method

.method private c()J
    .registers 7

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lss/ss/gK/b$a;->c:Lss/ak;

    invoke-virtual {v0}, Lss/ak;->h()Lss/e;

    move-result-object v0

    invoke-virtual {v0}, Lss/e;->c()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1b

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lss/e;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_1a
    :goto_1a
    return-wide v2

    :cond_1b
    iget-object v0, p0, Lss/ss/gK/b$a;->h:Ljava/util/Date;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lss/ss/gK/b$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lss/ss/gK/b$a;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_29
    iget-object v4, p0, Lss/ss/gK/b$a;->h:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3a

    :goto_35
    move-wide v2, v0

    goto :goto_1a

    :cond_37
    iget-wide v0, p0, Lss/ss/gK/b$a;->j:J

    goto :goto_29

    :cond_3a
    move-wide v0, v2

    goto :goto_35

    :cond_3c
    iget-object v0, p0, Lss/ss/gK/b$a;->f:Ljava/util/Date;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lss/ss/gK/b$a;->c:Lss/ak;

    invoke-virtual {v0}, Lss/ak;->a()Lss/ag;

    move-result-object v0

    invoke-virtual {v0}, Lss/ag;->a()Lss/y;

    move-result-object v0

    invoke-virtual {v0}, Lss/y;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lss/ss/gK/b$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lss/ss/gK/b$a;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_5a
    iget-object v4, p0, Lss/ss/gK/b$a;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    const-wide/16 v2, 0xa

    div-long v2, v0, v2

    goto :goto_1a

    :cond_6a
    iget-wide v0, p0, Lss/ss/gK/b$a;->i:J

    goto :goto_5a
.end method

.method private d()J
    .registers 9

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lss/ss/gK/b$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_13

    iget-wide v2, p0, Lss/ss/gK/b$a;->j:J

    iget-object v4, p0, Lss/ss/gK/b$a;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_13
    iget v2, p0, Lss/ss/gK/b$a;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lss/ss/gK/b$a;->l:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_25
    iget-wide v2, p0, Lss/ss/gK/b$a;->j:J

    iget-wide v4, p0, Lss/ss/gK/b$a;->i:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lss/ss/gK/b$a;->a:J

    iget-wide v6, p0, Lss/ss/gK/b$a;->j:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method private e()Z
    .registers 3

    iget-object v0, p0, Lss/ss/gK/b$a;->c:Lss/ak;

    invoke-virtual {v0}, Lss/ak;->h()Lss/e;

    move-result-object v0

    invoke-virtual {v0}, Lss/e;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lss/ss/gK/b$a;->h:Ljava/util/Date;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public a()Lss/ss/gK/b;
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lss/ss/gK/b$a;->b()Lss/ss/gK/b;

    move-result-object v0

    iget-object v1, v0, Lss/ss/gK/b;->a:Lss/ag;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lss/ss/gK/b$a;->b:Lss/ag;

    invoke-virtual {v1}, Lss/ag;->f()Lss/e;

    move-result-object v1

    invoke-virtual {v1}, Lss/e;->i()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v0, Lss/ss/gK/b;

    invoke-direct {v0, v2, v2, v2}, Lss/ss/gK/b;-><init>(Lss/ag;Lss/ak;Lss/ss/gK/c;)V

    :cond_1a
    return-object v0
.end method
