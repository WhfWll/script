.class public final Lji;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field public a:Ldz;

.field public a:Lea;

.field public a:Ljava/lang/String;

.field private a:Ljy;

.field public a:Z

.field private b:I

.field public b:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ldz;I)V
    .registers 19

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v10, "JKS"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lji;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldz;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ldz;Ljava/lang/String;)V
    .registers 20

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v10, "JKS"

    const/16 v11, 0x3c

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lji;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldz;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldz;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    const/4 v3, 0x1

    const/16 v11, 0x3c

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lji;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldz;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldz;Ljava/lang/String;I)V
    .registers 25

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lji;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldz;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldz;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lji;->a:Ldz;

    sget-object v0, Lea;->a:Lea;

    iput-object v0, p0, Lji;->a:Lea;

    iput-object v2, p0, Lji;->a:Ljy;

    iput-boolean v1, p0, Lji;->c:Z

    iput-boolean v1, p0, Lji;->d:Z

    iput-boolean v1, p0, Lji;->e:Z

    const/16 v0, 0x384

    iput v0, p0, Lji;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lji;->a:Z

    iput-object p1, p0, Lji;->d:Ljava/lang/String;

    iput p2, p0, Lji;->a:I

    iput-boolean p3, p0, Lji;->b:Z

    iput-object p7, p0, Lji;->a:Ljava/lang/String;

    iput-object p8, p0, Lji;->c:Ljava/lang/String;

    iput-object p9, p0, Lji;->a:Ldz;

    iput-object p4, p0, Lji;->e:Ljava/lang/String;

    iput-object p5, p0, Lji;->f:Ljava/lang/String;

    iput-object p6, p0, Lji;->g:Ljava/lang/String;

    iput-object p10, p0, Lji;->b:Ljava/lang/String;

    iput p11, p0, Lji;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lji;->b:Z

    if-eqz v0, :cond_6b

    const-string v0, "ssl://"

    :goto_3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lji;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lji;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_55
    new-instance v1, Ljy;

    iget-object v2, p0, Lji;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lji;->a:Ljy;
    :try_end_5e
    .catch Ljm; {:try_start_55 .. :try_end_5e} :catch_6e

    :cond_5e
    :goto_5e
    :try_start_5e
    iget-object v0, p0, Lji;->a:Ljy;

    iget-object v0, v0, Ljy;->a:Ljs;

    iget-object v0, v0, Ljs;->a:Lju;

    invoke-virtual {v0, p0}, Lju;->a(Lji;)V
    :try_end_67
    .catch Ljm; {:try_start_5e .. :try_end_67} :catch_79

    :goto_67
    invoke-virtual {p0, p10, p12}, Lji;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6b
    const-string v0, "tcp://"

    goto :goto_3b

    :catch_6e
    move-exception v0

    iget-object v1, p0, Lji;->a:Ldz;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lji;->a:Ldz;

    invoke-interface {v1, v0}, Ldz;->a(Ljava/lang/Throwable;)V

    goto :goto_5e

    :catch_79
    move-exception v0

    iget-object v1, p0, Lji;->a:Ldz;

    invoke-interface {v1, v0}, Ldz;->a(Ljava/lang/Throwable;)V

    goto :goto_67
.end method

.method private a(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lji;->e:Ljava/lang/String;

    iget-object v1, p0, Lji;->f:Ljava/lang/String;

    iget-object v2, p0, Lji;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3, p1}, Lat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public final a()V
    .registers 9

    const/4 v2, 0x1

    iget-object v0, p0, Lji;->a:Lea;

    sget-object v1, Lea;->c:Lea;

    invoke-virtual {v0, v1}, Lea;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v2, p0, Lji;->d:Z

    :cond_d
    :goto_d
    return-void

    :cond_e
    sget-object v0, Lea;->b:Lea;

    iput-object v0, p0, Lji;->a:Lea;

    :try_start_12
    iget-object v1, p0, Lji;->a:Ljy;

    iget-object v0, v1, Ljy;->a:Lkk;

    const/16 v2, 0x68

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Long;

    const-wide/16 v6, 0x7530

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lkk;->a(I[Ljava/lang/Object;)V

    new-instance v0, Lks;

    invoke-direct {v0}, Lks;-><init>()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_4b

    :try_start_2d
    iget-object v2, v1, Ljy;->a:Ljs;

    invoke-virtual {v2, v0}, Ljs;->a(Lks;)V
    :try_end_32
    .catch Ljm; {:try_start_2d .. :try_end_32} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_4b

    :try_start_32
    sget-object v0, Lea;->a:Lea;

    iput-object v0, p0, Lji;->a:Lea;

    iget-object v0, p0, Lji;->a:Ldz;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lji;->a:Ldz;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldz;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lji;->d:Z

    iget-boolean v0, p0, Lji;->e:Z

    if-eqz v0, :cond_64

    invoke-virtual {p0}, Lji;->b()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4a} :catch_4b

    goto :goto_d

    :catch_4b
    move-exception v0

    sget-object v1, Lea;->e:Lea;

    iput-object v1, p0, Lji;->a:Lea;

    iget-object v1, p0, Lji;->a:Ldz;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lji;->a:Ldz;

    invoke-interface {v1, v0}, Ldz;->d(Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_5a
    move-exception v0

    :try_start_5b
    iget-object v1, v1, Ljy;->a:Lkk;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lkk;->a(I[Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v0

    :cond_64
    iget-boolean v0, p0, Lji;->c:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lji;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lji;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6e} :catch_4b

    goto :goto_d
.end method

.method public final a(Ljava/lang/String;)V
    .registers 8

    const-string v1, "clearSession"

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lji;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v2, 0x1

    iget-object v0, p0, Lji;->a:Lea;

    sget-object v1, Lea;->b:Lea;

    invoke-virtual {v0, v1}, Lea;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v2, p0, Lji;->c:Z

    :cond_d
    :goto_d
    return-void

    :cond_e
    sget-object v0, Lea;->c:Lea;

    iput-object v0, p0, Lji;->a:Lea;

    :try_start_12
    new-instance v0, Ljk;

    invoke-direct {v0}, Ljk;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljk;->a:Z

    iget v1, p0, Lji;->b:I

    iput v1, v0, Ljk;->a:I

    if-eqz p2, :cond_45

    if-eqz p2, :cond_43

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_34} :catch_34

    :catch_34
    move-exception v0

    sget-object v1, Lea;->e:Lea;

    iput-object v1, p0, Lji;->a:Lea;

    iget-object v1, p0, Lji;->a:Ldz;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lji;->a:Ldz;

    invoke-interface {v1, v0}, Ldz;->c(Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_43
    :try_start_43
    iput-object p2, v0, Ljk;->a:Ljava/lang/String;

    :cond_45
    iget-boolean v1, p0, Lji;->b:Z

    if-eqz v1, :cond_4f

    invoke-direct {p0, p1}, Lji;->a(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Ljk;->a:Ljavax/net/SocketFactory;

    :cond_4f
    iget-object v3, p0, Lji;->a:Ljy;

    iget-object v1, v3, Ljy;->a:Ljs;

    iget-boolean v1, v1, Ljs;->a:Z

    if-eqz v1, :cond_5e

    const/16 v0, 0x7d64

    invoke-static {v0}, Lat;->a(I)Ljm;

    move-result-object v0

    throw v0

    :cond_5e
    iget-object v1, v3, Ljy;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Z

    move-result v1

    if-eqz v1, :cond_9d

    iget-object v1, v3, Ljy;->a:Lkk;

    const/16 v2, 0x67

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Boolean;

    iget-boolean v7, v0, Ljk;->a:Z

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    iget v7, v0, Ljk;->b:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    iget v7, v0, Ljk;->a:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v0, Ljk;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "[null]"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "[null]"

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_9d
    iget-object v1, v3, Ljy;->a:Ljs;

    iget-object v2, v3, Ljy;->b:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Ljy;->a(Ljava/lang/String;Ljk;)Lkc;

    move-result-object v2

    iput-object v2, v1, Ljs;->a:Lkc;

    iget-object v1, v3, Ljy;->a:Ljj;

    iget-object v2, v3, Ljy;->a:Ljava/lang/String;

    iget-object v2, v3, Ljy;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljj;->a()V

    iget-boolean v1, v0, Ljk;->a:Z

    if-eqz v1, :cond_bb

    iget-object v1, v3, Ljy;->a:Ljj;

    iget-object v1, v1, Ljj;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    :cond_bb
    iget-object v1, v3, Ljy;->a:Ljs;

    new-instance v2, Lkr;

    iget-object v3, v3, Ljy;->a:Ljava/lang/String;

    iget-boolean v4, v0, Ljk;->a:Z

    iget v5, v0, Ljk;->a:I

    iget-object v6, v0, Ljk;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lkr;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    iget v3, v0, Ljk;->b:I

    iget v4, v0, Ljk;->a:I

    int-to-long v4, v4

    iget-boolean v6, v0, Ljk;->a:Z

    invoke-virtual/range {v1 .. v6}, Ljs;->a(Lkr;IJZ)Lkq;

    iget-object v0, p0, Lji;->c:Ljava/lang/String;
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_d6} :catch_34

    :try_start_d6
    iget-object v1, p0, Lji;->a:Ljy;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v0, v3

    invoke-virtual {v1, v2, v0}, Ljy;->a([Ljava/lang/String;[I)V

    sget-object v0, Lea;->d:Lea;

    iput-object v0, p0, Lji;->a:Lea;

    iget-object v0, p0, Lji;->a:Ldz;

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lji;->a:Ldz;

    invoke-interface {v0}, Ldz;->b()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_f5} :catch_10a

    :cond_f5
    :goto_f5
    :try_start_f5
    iget-object v0, p0, Lji;->a:Ldz;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lji;->a:Ldz;

    invoke-interface {v0}, Ldz;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lji;->c:Z

    iget-boolean v0, p0, Lji;->e:Z

    if-eqz v0, :cond_119

    invoke-virtual {p0}, Lji;->b()V

    goto/16 :goto_d

    :catch_10a
    move-exception v0

    sget-object v1, Lea;->a:Lea;

    iput-object v1, p0, Lji;->a:Lea;

    iget-object v1, p0, Lji;->a:Ldz;

    if-eqz v1, :cond_f5

    iget-object v1, p0, Lji;->a:Ldz;

    invoke-interface {v1, v0}, Ldz;->e(Ljava/lang/Throwable;)V

    goto :goto_f5

    :cond_119
    iget-boolean v0, p0, Lji;->d:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lji;->a()V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_120} :catch_34

    goto/16 :goto_d
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lji;->a:Ljy;

    invoke-virtual {v0, p2}, Ljy;->a(Ljava/lang/String;)Ljr;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Ljn;

    invoke-direct {v2, v1}, Ljn;-><init>([B)V

    invoke-virtual {v2, p5}, Ljn;->a(I)V

    invoke-virtual {v2, p4}, Ljn;->a(Z)V

    iget-object v1, v0, Ljr;->a:Ljs;

    new-instance v3, Llc;

    iget-object v0, v0, Ljr;->a:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Llc;-><init>(Ljava/lang/String;Ljn;)V

    invoke-virtual {v1, v3}, Ljs;->a(Lli;)Ljl;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Ljl;->a(J)V

    iget-object v0, p0, Lji;->a:Ldz;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lji;->a:Ljy;

    iget-object v0, v0, Ljy;->a:Ljj;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lji;->a:Ljy;

    iget-object v0, v0, Ljy;->a:Ljj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mid-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj;->a(Ljava/lang/String;)Ljo;

    move-result-object v0

    instance-of v1, v0, Lkb;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lji;->a:Ldz;

    check-cast v0, Lkb;

    iget-object v0, v0, Lkb;->a:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ldz;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    iget-object v0, p0, Lji;->a:Ljy;

    iget-object v0, v0, Ljy;->a:Ljj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mid-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj;->a(Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-void

    :cond_6c
    iget-object v0, p0, Lji;->a:Ldz;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ldz;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73

    goto :goto_55

    :catch_73
    move-exception v0

    iget-object v1, p0, Lji;->a:Ldz;

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lji;->a:Ldz;

    invoke-interface {v1, p1, v0}, Ldz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6b

    :cond_7e
    :try_start_7e
    iget-object v0, p0, Lji;->a:Ldz;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ldz;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_84} :catch_73

    goto :goto_6b
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lji;->a:Lea;

    sget-object v1, Lea;->c:Lea;

    invoke-virtual {v0, v1}, Lea;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lji;->a:Lea;

    sget-object v1, Lea;->b:Lea;

    invoke-virtual {v0, v1}, Lea;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lji;->e:Z

    :goto_17
    return-void

    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lji;->a:Ljy;

    sget-object v0, Lea;->a:Lea;

    iput-object v0, p0, Lji;->a:Lea;

    goto :goto_17
.end method
