.class La/a/a/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:La/a/a/a/a/f; = null

.field private static final c:Ljava/lang/String; = "rgid"

.field private static final d:Ljava/lang/String; = "expires"

.field private static final e:Ljava/lang/String; = "resource"

.field private static final f:Ljava/lang/String; = "rid"

.field private static final g:Ljava/lang/String; = "url"

.field private static final h:Ljava/lang/String; = "type"

.field private static final i:Ljava/lang/String; = "width"

.field private static final j:Ljava/lang/String; = "height"


# instance fields
.field a:Lcn/domob/android/i/f;

.field private k:I

.field private l:I

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, La/a/a/a/a/f;->b:La/a/a/a/a/f;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x14

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, La/a/a/a/a/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    .line 30
    iput v2, p0, La/a/a/a/a/f;->k:I

    .line 32
    iput v2, p0, La/a/a/a/a/f;->l:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/f;->m:Z

    return-void
.end method

.method protected static declared-synchronized a()La/a/a/a/a/f;
    .registers 2

    .prologue
    .line 36
    const-class v1, La/a/a/a/a/f;

    monitor-enter v1

    :try_start_3
    sget-object v0, La/a/a/a/a/f;->b:La/a/a/a/a/f;

    if-nez v0, :cond_e

    .line 37
    new-instance v0, La/a/a/a/a/f;

    invoke-direct {v0}, La/a/a/a/a/f;-><init>()V

    sput-object v0, La/a/a/a/a/f;->b:La/a/a/a/a/f;

    .line 39
    :cond_e
    sget-object v0, La/a/a/a/a/f;->b:La/a/a/a/a/f;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 8

    .prologue
    .line 347
    const-string v0, "resourceGroup"

    .line 348
    const-string v1, "Rgid = ?"

    .line 349
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 350
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v3

    invoke-virtual {v3, v0, p3, v1, v2}, La/a/a/a/a/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 351
    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 5

    .prologue
    .line 439
    if-nez p1, :cond_3

    .line 461
    :cond_2
    :goto_2
    return-void

    .line 443
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 444
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_2

    .line 458
    :catch_d
    move-exception v0

    .line 459
    iget-object v1, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 447
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_23

    array-length v0, v1

    if-nez v0, :cond_27

    .line 450
    :cond_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 453
    :cond_27
    const/4 v0, 0x0

    :goto_28
    array-length v2, v1

    if-ge v0, v2, :cond_33

    .line 454
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, La/a/a/a/a/f;->a(Ljava/io/File;)V

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 456
    :cond_33
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_36} :catch_d

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 432
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 433
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/a/a/a/a/f;->a(Ljava/io/File;)V

    .line 435
    :cond_10
    return-void
.end method

.method private h(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    const-string v1, "Expires"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const-string v1, " != ? and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const-string v1, "Expires"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    const-string v1, " < ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 217
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, La/a/a/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 218
    iget-object v1, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete expired group number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method private i(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 427
    invoke-static {}, La/a/a/a/a/d;->b()La/a/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/a/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/a/a/a/f;->a(Ljava/lang/String;)V

    .line 428
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/b;->b()V

    .line 429
    return-void
.end method

.method private j(Landroid/content/Context;)Ljava/util/Hashtable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 479
    :try_start_5
    invoke-static {}, La/a/a/a/a/d;->b()La/a/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 480
    invoke-static {}, La/a/a/a/a/d;->b()La/a/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/a/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 481
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 483
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 484
    if-eqz v3, :cond_80

    .line 485
    const/4 v0, 0x0

    :goto_2f
    array-length v4, v3

    if-ge v0, v4, :cond_80

    .line 486
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 487
    if-eqz v4, :cond_77

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_77

    .line 488
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 489
    const/4 v6, -0x1

    if-eq v5, v6, :cond_77

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_77

    .line 490
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 491
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_77

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_77} :catch_7a

    .line 485
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 500
    :catch_7a
    move-exception v0

    .line 501
    iget-object v2, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 503
    :cond_80
    return-object v1
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .registers 19

    .prologue
    .line 222
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 223
    const/4 v8, 0x0

    .line 225
    :try_start_3
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v1

    const-string v2, "resourceGroup"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Rgid"

    aput-object v5, v3, v4

    const/4 v7, 0x0

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, La/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_eb
    .catchall {:try_start_3 .. :try_end_1a} :catchall_10d

    move-result-object v10

    .line 227
    if-eqz v10, :cond_d2

    .line 228
    :try_start_1d
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 229
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    move/from16 v0, p5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->move(I)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_29} :catch_12c
    .catchall {:try_start_1d .. :try_end_29} :catchall_10d

    move-result v1

    .line 231
    if-nez v1, :cond_44

    .line 232
    const/4 v1, 0x0

    .line 260
    if-eqz v10, :cond_38

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_38

    .line 261
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_38
    if-eqz v9, :cond_43

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_43

    .line 264
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_43
    :goto_43
    return v1

    .line 234
    :cond_44
    const/4 v1, 0x0

    move v11, v1

    :goto_46
    :try_start_46
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sub-int v1, v1, p5

    if-ge v11, v1, :cond_d2

    .line 235
    const-string v1, "Rgid"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 236
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "Path"

    aput-object v2, v3, v1

    .line 237
    const-string v4, "Rgid = ?"

    .line 238
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v12, v5, v1

    .line 239
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v1

    const-string v2, "resource"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, La/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_78} :catch_138
    .catchall {:try_start_46 .. :try_end_78} :catchall_10d

    move-result-object v2

    .line 241
    if-eqz v2, :cond_c9

    .line 242
    :try_start_7b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 243
    const/4 v1, 0x0

    :goto_7f
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_a0

    .line 244
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 248
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, La/a/a/a/a/b;->b(Ljava/lang/String;)V

    .line 249
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 251
    :cond_a0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La/a/a/a/a/d;->b()La/a/a/a/a/d;

    move-result-object v3

    invoke-virtual {v3, p1}, La/a/a/a/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, La/a/a/a/a/f;->a(Ljava/lang/String;)V

    .line 252
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v1

    invoke-virtual {v1, v12}, La/a/a/a/a/b;->a(Ljava/lang/String;)V

    .line 254
    :cond_c9
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_cc} :catch_132
    .catchall {:try_start_7b .. :try_end_cc} :catchall_125

    .line 234
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    move-object v9, v2

    goto/16 :goto_46

    :cond_d2
    move v1, v8

    .line 260
    if-eqz v10, :cond_de

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_de

    .line 261
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_de
    if-eqz v9, :cond_43

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_43

    .line 264
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_43

    .line 257
    :catch_eb
    move-exception v1

    move-object v2, v1

    move-object v3, v9

    move-object v4, v10

    move v1, v8

    .line 258
    :goto_f0
    :try_start_f0
    iget-object v5, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    invoke-virtual {v5, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_f5
    .catchall {:try_start_f0 .. :try_end_f5} :catchall_128

    .line 260
    if-eqz v4, :cond_100

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_100

    .line 261
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_100
    if-eqz v3, :cond_43

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_43

    .line 264
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_43

    .line 260
    :catchall_10d
    move-exception v1

    :goto_10e
    if-eqz v10, :cond_119

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_119

    .line 261
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_119
    if-eqz v9, :cond_124

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_124

    .line 264
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_124
    throw v1

    .line 260
    :catchall_125
    move-exception v1

    move-object v9, v2

    goto :goto_10e

    :catchall_128
    move-exception v1

    move-object v9, v3

    move-object v10, v4

    goto :goto_10e

    .line 257
    :catch_12c
    move-exception v1

    move-object v2, v1

    move-object v3, v9

    move-object v4, v10

    move v1, v8

    goto :goto_f0

    :catch_132
    move-exception v1

    move-object v3, v2

    move-object v4, v10

    move-object v2, v1

    move v1, v8

    goto :goto_f0

    :catch_138
    move-exception v1

    move-object v2, v1

    move-object v3, v9

    move-object v4, v10

    move v1, v8

    goto :goto_f0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/g;
    .registers 12

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 390
    if-eqz p2, :cond_b8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b8

    if-eqz p3, :cond_b8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b8

    .line 391
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "Path"

    aput-object v0, v2, v5

    const-string v0, "ContentLength"

    aput-object v0, v2, v6

    const-string v0, "Width"

    aput-object v0, v2, v4

    const/4 v0, 0x3

    const-string v1, "Height"

    aput-object v1, v2, v0

    .line 393
    const-string v3, "Rgid = ? and Ridd = ?"

    .line 394
    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v5

    aput-object p3, v4, v6

    .line 397
    :try_start_30
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v0

    const-string v1, "resource"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, La/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3b} :catch_ba
    .catchall {:try_start_30 .. :try_end_3b} :catchall_cd

    move-result-object v1

    .line 398
    if-eqz v1, :cond_ad

    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 399
    const-string v0, "Path"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    const-string v2, "ContentLength"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 401
    invoke-virtual {p0, v0, v2, v3}, La/a/a/a/a/f;->a(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 402
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 403
    const-string v3, "UseDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 404
    invoke-direct {p0, p1, p2, v2}, La/a/a/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 405
    const-string v2, "Width"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 406
    const-string v3, "Height"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 407
    new-instance v4, La/a/a/a/a/g;

    invoke-direct {v4}, La/a/a/a/a/g;-><init>()V

    invoke-virtual {v4, v0}, La/a/a/a/a/g;->a(Ljava/lang/String;)La/a/a/a/a/g;

    move-result-object v0

    invoke-virtual {v0, v2}, La/a/a/a/a/g;->a(I)La/a/a/a/a/g;

    move-result-object v0

    invoke-virtual {v0, v3}, La/a/a/a/a/g;->b(I)La/a/a/a/a/g;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_97} :catch_dd
    .catchall {:try_start_3e .. :try_end_97} :catchall_db

    move-result-object v0

    .line 418
    if-eqz v1, :cond_a3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a3

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 423
    :cond_a3
    :goto_a3
    return-object v0

    .line 409
    :cond_a4
    :try_start_a4
    invoke-static {}, La/a/a/a/a/d;->c()La/a/a/a/a/a$b;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_ad

    .line 411
    invoke-interface {v0, p2, p3}, La/a/a/a/a/a$b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ad} :catch_dd
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_db

    .line 418
    :cond_ad
    if-eqz v1, :cond_b8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b8
    :goto_b8
    move-object v0, v7

    .line 423
    goto :goto_a3

    .line 415
    :catch_ba
    move-exception v0

    move-object v1, v7

    .line 416
    :goto_bc
    :try_start_bc
    iget-object v2, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_db

    .line 418
    if-eqz v1, :cond_b8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_b8

    .line 418
    :catchall_cd
    move-exception v0

    move-object v1, v7

    :goto_cf
    if-eqz v1, :cond_da

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_da

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_da
    throw v0

    .line 418
    :catchall_db
    move-exception v0

    goto :goto_cf

    .line 415
    :catch_dd
    move-exception v0

    goto :goto_bc
.end method

.method protected a(Landroid/content/Context;I)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 377
    iget-object v0, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    const-string v1, "update the max number of group can saved in phone. old value: %d new value: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, La/a/a/a/a/f;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 378
    iget-boolean v0, p0, La/a/a/a/a/f;->m:Z

    if-nez v0, :cond_26

    iget v0, p0, La/a/a/a/a/f;->l:I

    if-eq v0, p2, :cond_35

    .line 379
    :cond_26
    if-gtz p2, :cond_2e

    .line 380
    invoke-static {}, La/a/a/a/a/d;->d()V

    .line 381
    invoke-direct {p0, p1}, La/a/a/a/a/f;->i(Landroid/content/Context;)V

    .line 383
    :cond_2e
    iput p2, p0, La/a/a/a/a/f;->l:I

    .line 384
    iput-boolean v5, p0, La/a/a/a/a/f;->m:Z

    .line 385
    invoke-virtual {p0, p1}, La/a/a/a/a/f;->c(Landroid/content/Context;)V

    .line 387
    :cond_35
    return-void
.end method

.method protected a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 61
    if-nez p2, :cond_b

    .line 62
    iget-object v2, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    const-string v3, "ad response cache jsonarray is null"

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 131
    :goto_a
    return-void

    .line 65
    :cond_b
    const/4 v2, 0x0

    :goto_c
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_10f

    .line 66
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 67
    if-nez v4, :cond_1d

    .line 65
    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 70
    :cond_1d
    const-string v5, "rgid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    const-string v6, "expires"

    const-wide/16 v8, -0x1

    invoke-virtual {v4, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 72
    const-string v7, "resource"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 73
    if-eqz v5, :cond_106

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_106

    .line 74
    const-string v4, "Rgid = ?"

    .line 75
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    .line 76
    invoke-static/range {p1 .. p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v9

    const-string v10, "resourceGroup"

    invoke-virtual {v9, v10, v4, v8}, La/a/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_fd

    .line 77
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 78
    const-string v8, "Rgid"

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v8, "Expires"

    invoke-virtual {v4, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    const-string v6, "UseDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    const-string v6, "State"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v6, "Tracker"

    move-object/from16 v0, p3

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v6, "Ppid"

    move-object/from16 v0, p4

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v6, "EventTrackerURL"

    move-object/from16 v0, p5

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static/range {p1 .. p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v6

    const-string v8, "resourceGroup"

    invoke-virtual {v6, v8, v4}, La/a/a/a/a/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz v7, :cond_1a

    .line 86
    const/4 v4, 0x0

    move v14, v4

    move v4, v3

    move v3, v14

    :goto_9e
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_125

    .line 87
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 88
    if-eqz v6, :cond_fa

    .line 89
    const-string v8, "rid"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    const-string v9, "url"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    const-string v10, "type"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 92
    const-string v11, "width"

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 93
    const-string v12, "height"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 96
    if-eqz v8, :cond_fa

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_fa

    .line 104
    new-instance v12, La/a/a/a/a/c;

    invoke-direct {v12}, La/a/a/a/a/c;-><init>()V

    .line 105
    invoke-virtual {v12, v8}, La/a/a/a/a/c;->a(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v12, v5}, La/a/a/a/a/c;->b(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v12, v10}, La/a/a/a/a/c;->a(I)V

    .line 108
    invoke-virtual {v12, v9}, La/a/a/a/a/c;->c(Ljava/lang/String;)V

    .line 109
    const/4 v8, 0x0

    invoke-virtual {v12, v8}, La/a/a/a/a/c;->b(I)V

    .line 110
    invoke-virtual {v12, v11}, La/a/a/a/a/c;->c(I)V

    .line 111
    invoke-virtual {v12, v6}, La/a/a/a/a/c;->d(I)V

    .line 112
    invoke-static/range {p1 .. p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v6

    invoke-virtual {v6, v12}, La/a/a/a/a/b;->a(La/a/a/a/a/c;)Z

    move-result v6

    if-eqz v6, :cond_fa

    .line 113
    add-int/lit8 v4, v4, 0x1

    .line 86
    :cond_fa
    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .line 121
    :cond_fd
    iget-object v4, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    const-string v5, "this groupID has been saved in DB"

    invoke-virtual {v4, v5}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 124
    :cond_106
    iget-object v4, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    const-string v5, "cache groupID is not available"

    invoke-virtual {v4, v5}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 127
    :cond_10f
    if-lez v3, :cond_11a

    .line 128
    invoke-static {}, La/a/a/a/a/d;->b()La/a/a/a/a/d;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, La/a/a/a/a/d;->d(Landroid/content/Context;)V

    .line 130
    :cond_11a
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, La/a/a/a/a/f;->g(Landroid/content/Context;)V

    goto/16 :goto_a

    :cond_125
    move v3, v4

    goto/16 :goto_1a
.end method

.method protected a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 43
    .line 45
    iget v0, p0, La/a/a/a/a/f;->k:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    .line 46
    :goto_5
    if-nez v0, :cond_7

    .line 51
    :cond_7
    if-nez v0, :cond_9

    .line 55
    :cond_9
    return v0

    .line 45
    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 15

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 304
    .line 305
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "Path"

    aput-object v0, v2, v8

    const-string v0, "ContentLength"

    aput-object v0, v2, v7

    const/4 v0, 0x2

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 306
    const-string v3, "Rgid = ? "

    .line 307
    new-array v4, v7, [Ljava/lang/String;

    aput-object p2, v4, v8

    .line 310
    :try_start_19
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v0

    const-string v1, "resource"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, La/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_b1
    .catchall {:try_start_19 .. :try_end_24} :catchall_c5

    move-result-object v1

    .line 311
    if-eqz v1, :cond_8f

    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8f

    move v2, v8

    move v0, v7

    .line 312
    :goto_2f
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_90

    .line 313
    const-string v3, "Path"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 314
    const-string v4, "ContentLength"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 315
    invoke-virtual {p0, v3, v4, v5}, La/a/a/a/a/f;->a(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_89

    .line 316
    invoke-direct {p0, v3}, La/a/a/a/a/f;->a(Ljava/lang/String;)V

    .line 318
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 319
    const-string v3, "resource"

    .line 320
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 321
    const-string v5, "Path"

    const-string v6, "empty"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v5, "ContentLength"

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 323
    const-string v5, "_id = ?"

    .line 324
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    .line 325
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5, v6}, La/a/a/a/a/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v8

    .line 327
    :cond_89
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_8c} :catch_d7
    .catchall {:try_start_27 .. :try_end_8c} :catchall_d5

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_8f
    move v0, v7

    .line 334
    :cond_90
    if-eqz v1, :cond_db

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_db

    .line 335
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v1, v0

    .line 339
    :goto_9c
    if-eqz v1, :cond_d3

    move v0, v7

    .line 340
    :goto_9f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 341
    const-string v3, "State"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    invoke-direct {p0, p1, p2, v2}, La/a/a/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 343
    return v1

    .line 330
    :catch_b1
    move-exception v0

    move-object v1, v9

    .line 331
    :goto_b3
    :try_start_b3
    iget-object v2, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_b8
    .catchall {:try_start_b3 .. :try_end_b8} :catchall_d5

    .line 334
    if-eqz v1, :cond_d9

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d9

    .line 335
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v1, v8

    goto :goto_9c

    .line 334
    :catchall_c5
    move-exception v0

    move-object v1, v9

    :goto_c7
    if-eqz v1, :cond_d2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_d2

    .line 335
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d2
    throw v0

    :cond_d3
    move v0, v8

    .line 339
    goto :goto_9f

    .line 334
    :catchall_d5
    move-exception v0

    goto :goto_c7

    .line 330
    :catch_d7
    move-exception v0

    goto :goto_b3

    :cond_d9
    move v1, v8

    goto :goto_9c

    :cond_db
    move v1, v0

    goto :goto_9c
.end method

.method protected a(Ljava/lang/String;J)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 360
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "empty"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_18

    .line 372
    :cond_17
    :goto_17
    return v0

    .line 364
    :cond_18
    :try_start_18
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_26} :catch_2d

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_17

    .line 366
    const/4 v0, 0x1

    goto :goto_17

    .line 370
    :catch_2d
    move-exception v1

    .line 371
    iget-object v2, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method protected b()I
    .registers 2

    .prologue
    .line 527
    iget v0, p0, La/a/a/a/a/f;->l:I

    return v0
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 134
    invoke-virtual {p0, p1}, La/a/a/a/a/f;->g(Landroid/content/Context;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v1, "Expires"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string v1, " = ? or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const-string v1, "Expires"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const-string v1, " > ? ) and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v1, "State"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 146
    const-string v5, "UseDate DESC"

    .line 147
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 151
    :try_start_55
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v0

    const-string v1, "resourceGroup"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v10, "Rgid"

    aput-object v10, v2, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, La/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_67} :catch_db
    .catchall {:try_start_55 .. :try_end_67} :catchall_f0

    move-result-object v1

    .line 153
    if-eqz v1, :cond_bb

    .line 154
    :try_start_6a
    iget-object v0, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    const-string v2, "the lines of database query results is %d, and the max upload limited is %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, La/a/a/a/a/f;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 155
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v2, p0, La/a/a/a/a/f;->k:I

    if-le v0, v2, :cond_b5

    .line 156
    iget v0, p0, La/a/a/a/a/f;->k:I

    move v2, v0

    .line 160
    :goto_97
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v8

    .line 161
    :goto_9b
    if-ge v0, v2, :cond_bb

    .line 162
    const-string v3, "Rgid"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v3, ","

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 158
    :cond_b5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_b8} :catch_103
    .catchall {:try_start_6a .. :try_end_b8} :catchall_101

    move-result v0

    move v2, v0

    goto :goto_97

    .line 172
    :cond_bb
    if-eqz v1, :cond_c6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 173
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_c6
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_fe

    .line 177
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_da
    :goto_da
    return-object v0

    .line 168
    :catch_db
    move-exception v0

    move-object v1, v7

    .line 169
    :goto_dd
    :try_start_dd
    iget-object v2, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 170
    const-string v0, ""
    :try_end_e4
    .catchall {:try_start_dd .. :try_end_e4} :catchall_101

    .line 172
    if-eqz v1, :cond_da

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_da

    .line 173
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_da

    .line 172
    :catchall_f0
    move-exception v0

    move-object v1, v7

    :goto_f2
    if-eqz v1, :cond_fd

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_fd

    .line 173
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_fd
    throw v0

    .line 180
    :cond_fe
    const-string v0, ""

    goto :goto_da

    .line 172
    :catchall_101
    move-exception v0

    goto :goto_f2

    .line 168
    :catch_103
    move-exception v0

    goto :goto_dd
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 507
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 508
    const-string v3, "Rgid = ? "

    .line 509
    new-array v4, v7, [Ljava/lang/String;

    aput-object p2, v4, v8

    .line 512
    :try_start_f
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v0

    const-string v1, "resourceGroup"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, La/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_3d
    .catchall {:try_start_f .. :try_end_1a} :catchall_50

    move-result-object v1

    .line 513
    if-eqz v1, :cond_30

    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_60
    .catchall {:try_start_1d .. :try_end_20} :catchall_5e

    move-result v0

    if-lez v0, :cond_30

    .line 519
    if-eqz v1, :cond_2e

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 520
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2e
    move v0, v7

    .line 523
    :goto_2f
    return v0

    .line 519
    :cond_30
    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 520
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3b
    :goto_3b
    move v0, v8

    .line 523
    goto :goto_2f

    .line 516
    :catch_3d
    move-exception v0

    move-object v1, v9

    .line 517
    :goto_3f
    :try_start_3f
    iget-object v2, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_5e

    .line 519
    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 520
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3b

    .line 519
    :catchall_50
    move-exception v0

    move-object v1, v9

    :goto_52
    if-eqz v1, :cond_5d

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 520
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5d
    throw v0

    .line 519
    :catchall_5e
    move-exception v0

    goto :goto_52

    .line 516
    :catch_60
    move-exception v0

    goto :goto_3f
.end method

.method protected c(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 184
    invoke-direct {p0, p1}, La/a/a/a/a/f;->h(Landroid/content/Context;)V

    .line 185
    invoke-virtual {p0, p1}, La/a/a/a/a/f;->d(Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method protected d(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    const-string v1, "State"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    new-array v3, v4, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 199
    const-string v4, "UseDate DESC"

    .line 200
    iget v5, p0, La/a/a/a/a/f;->l:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, La/a/a/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 201
    iget-object v1, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete excess group number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method protected e(Landroid/content/Context;)Z
    .registers 13

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 276
    .line 277
    iget-object v0, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    const-string v1, "checkAllGroupDownloadReso"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 278
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "Rgid"

    aput-object v0, v2, v8

    .line 279
    const-string v3, "Expires > ? or Expires = ?"

    .line 280
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 283
    :try_start_27
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v0

    const-string v1, "resourceGroup"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, La/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_32} :catch_66
    .catchall {:try_start_27 .. :try_end_32} :catchall_7b

    move-result-object v1

    .line 284
    if-eqz v1, :cond_99

    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_8e
    .catchall {:try_start_35 .. :try_end_38} :catchall_89

    move-result v0

    if-eqz v0, :cond_99

    move v2, v8

    .line 285
    :goto_3c
    :try_start_3c
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_59

    .line 286
    const-string v0, "Rgid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {p0, p1, v0}, La/a/a/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    move v2, v9

    .line 290
    :cond_53
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_56} :catch_93
    .catchall {:try_start_3c .. :try_end_56} :catchall_89

    .line 285
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    :cond_59
    move v0, v2

    .line 296
    :goto_5a
    if-eqz v1, :cond_65

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_65

    .line 297
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_65
    :goto_65
    return v0

    .line 293
    :catch_66
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move v0, v8

    .line 294
    :goto_6a
    :try_start_6a
    iget-object v3, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_8b

    .line 296
    if-eqz v2, :cond_65

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_65

    .line 297
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_65

    .line 296
    :catchall_7b
    move-exception v0

    move-object v1, v7

    :goto_7d
    if-eqz v1, :cond_88

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_88

    .line 297
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_88
    throw v0

    .line 296
    :catchall_89
    move-exception v0

    goto :goto_7d

    :catchall_8b
    move-exception v0

    move-object v1, v2

    goto :goto_7d

    .line 293
    :catch_8e
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v8

    goto :goto_6a

    :catch_93
    move-exception v0

    move-object v10, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_6a

    :cond_99
    move v0, v8

    goto :goto_5a
.end method

.method protected f(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 467
    invoke-direct {p0, p1}, La/a/a/a/a/f;->j(Landroid/content/Context;)Ljava/util/Hashtable;

    move-result-object v1

    .line 468
    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 470
    invoke-virtual {p0, p1, v0}, La/a/a/a/a/f;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 471
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, La/a/a/a/a/f;->a(Ljava/lang/String;)V

    goto :goto_c

    .line 474
    :cond_28
    return-void
.end method

.method protected g(Landroid/content/Context;)V
    .registers 16

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 555
    iget-object v0, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    invoke-virtual {v0}, Lcn/domob/android/i/f;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 650
    :cond_a
    :goto_a
    return-void

    .line 560
    :cond_b
    :try_start_b
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v0

    const-string v1, "resourceGroup"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, La/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_21f
    .catchall {:try_start_b .. :try_end_19} :catchall_233

    move-result-object v7

    .line 561
    :try_start_1a
    iget-object v0, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8868resourceGroup \u4e2d\u884c\u6570\u662f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 562
    if-eqz v7, :cond_fb

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_fb

    move v0, v8

    .line 563
    :goto_3f
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_fb

    .line 564
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 565
    const-string v2, "Rgid"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 566
    const-string v3, "Expires"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 567
    const-string v3, "UseDate"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 568
    const-string v3, "State"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 569
    const-string v6, "Ppid"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 570
    const-string v9, "Tracker"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 571
    const-string v12, "EventTrackerURL"

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 572
    const-string v13, "groupId: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    const-string v2, "expiredTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 577
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    const-string v2, "lastUseTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 580
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    const-string v2, "completeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 583
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    const-string v2, "ppid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    const-string v2, "tracker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 590
    const-string v2, "EventTrackerURL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    iget-object v2, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 594
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3f

    .line 597
    :cond_fb
    if-eqz v7, :cond_106

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_106

    .line 598
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 600
    :cond_106
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v0

    const-string v1, "resource"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, La/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_114} :catch_246
    .catchall {:try_start_1a .. :try_end_114} :catchall_241

    move-result-object v1

    .line 601
    :try_start_115
    iget-object v0, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8868resource \u4e2d\u884c\u6570\u662f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 602
    if-eqz v1, :cond_212

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_212

    move v0, v8

    .line 603
    :goto_13a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_212

    .line 604
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 605
    const-string v3, "Ridd"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 606
    const-string v4, "Rgid"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 607
    const-string v5, "Type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 608
    const-string v6, "ResourceUrl"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 609
    const-string v7, "Path"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 610
    const-string v8, "DownState"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 611
    const-string v9, "ContentLength"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 612
    const-string v10, "CreatDate"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 614
    const-string v11, "resourceID: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    const-string v3, "groupId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    const-string v3, "downloadurl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    const-string v3, "localpath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    const-string v3, "downloadStatue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    const-string v3, "size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    const-string v3, "createTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 638
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    iget-object v3, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 640
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_20e} :catch_249
    .catchall {:try_start_115 .. :try_end_20e} :catchall_244

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13a

    .line 646
    :cond_212
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 647
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a

    .line 643
    :catch_21f
    move-exception v0

    move-object v1, v7

    .line 644
    :goto_221
    :try_start_221
    iget-object v2, p0, La/a/a/a/a/f;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_226
    .catchall {:try_start_221 .. :try_end_226} :catchall_244

    .line 646
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 647
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a

    .line 646
    :catchall_233
    move-exception v0

    move-object v1, v7

    :goto_235
    if-eqz v1, :cond_240

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_240

    .line 647
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_240
    throw v0

    .line 646
    :catchall_241
    move-exception v0

    move-object v1, v7

    goto :goto_235

    :catchall_244
    move-exception v0

    goto :goto_235

    .line 643
    :catch_246
    move-exception v0

    move-object v1, v7

    goto :goto_221

    :catch_249
    move-exception v0

    goto :goto_221
.end method
