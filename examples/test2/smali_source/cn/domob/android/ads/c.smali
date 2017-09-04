.class final Lcn/domob/android/ads/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/i/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 183
    .line 184
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v0

    .line 186
    :try_start_5
    const-string v1, "creative_alias"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "creative_id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_ee
    .catchall {:try_start_5 .. :try_end_26} :catchall_d9

    move-result-object v2

    .line 188
    if-eqz v2, :cond_6a

    :try_start_29
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 190
    const-string v1, "alias"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 191
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-virtual {p0, p1, v3}, Lcn/domob/android/ads/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 193
    invoke-virtual {p0, p1, v3}, Lcn/domob/android/ads/c;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 195
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local path of resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not available."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p1, v3}, Lcn/domob/android/ads/c;->f(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6a} :catch_c2
    .catchall {:try_start_29 .. :try_end_6a} :catchall_ec

    .line 209
    :cond_6a
    :goto_6a
    if-eqz v2, :cond_75

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_75

    .line 210
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_75
    if-eqz v0, :cond_7a

    .line 213
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_7a
    :goto_7a
    move-object v0, v6

    .line 217
    :goto_7b
    return-object v0

    .line 198
    :cond_7c
    :try_start_7c
    sget-object v4, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Local location of resource "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_9e} :catch_c2
    .catchall {:try_start_7c .. :try_end_9e} :catchall_ec

    .line 209
    if-eqz v2, :cond_a9

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a9

    .line 210
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_a9
    if-eqz v0, :cond_ae

    .line 213
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_ae
    move-object v0, v1

    goto :goto_7b

    .line 202
    :cond_b0
    :try_start_b0
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v4, "Alias %s is in table creative_alias but not in alias_info."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c1} :catch_c2
    .catchall {:try_start_b0 .. :try_end_c1} :catchall_ec

    goto :goto_6a

    .line 206
    :catch_c2
    move-exception v1

    .line 207
    :goto_c3
    :try_start_c3
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_c8
    .catchall {:try_start_c3 .. :try_end_c8} :catchall_ec

    .line 209
    if-eqz v2, :cond_d3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d3

    .line 210
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_d3
    if-eqz v0, :cond_7a

    .line 213
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    goto :goto_7a

    .line 209
    :catchall_d9
    move-exception v1

    move-object v2, v6

    :goto_db
    if-eqz v2, :cond_e6

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_e6

    .line 210
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_e6
    if-eqz v0, :cond_eb

    .line 213
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_eb
    throw v1

    .line 209
    :catchall_ec
    move-exception v1

    goto :goto_db

    .line 206
    :catch_ee
    move-exception v1

    move-object v2, v6

    goto :goto_c3
.end method

.method protected a(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 22
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v0

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_ad_alive_time < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28
    :try_start_1c
    const-string v1, "domob_splash_ad_cache_res"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_c8
    .catchall {:try_start_1c .. :try_end_24} :catchall_e1

    move-result-object v2

    .line 29
    if-eqz v2, :cond_b6

    :try_start_27
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_b6

    .line 30
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expired ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 31
    const/4 v1, 0x0

    :goto_50
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_bd

    .line 32
    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 33
    const-string v3, "_ad_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_ad_id=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    const-string v4, "domob_splash_ad_cache_res"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 37
    sget-object v5, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete the expired ad: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 38
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "helper.delete return is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 41
    :cond_b6
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v3, "there is no expired ad"

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_bd} :catch_f0
    .catchall {:try_start_27 .. :try_end_bd} :catchall_ee

    .line 47
    :cond_bd
    if-eqz v2, :cond_c2

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_c2
    if-eqz v0, :cond_c7

    .line 51
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    .line 54
    :cond_c7
    :goto_c7
    return-void

    .line 43
    :catch_c8
    move-exception v1

    move-object v2, v6

    .line 44
    :goto_ca
    :try_start_ca
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 45
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v3, "Error happened when delete the expires ad."

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->c(Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_ca .. :try_end_d6} :catchall_ee

    .line 47
    if-eqz v2, :cond_db

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_db
    if-eqz v0, :cond_c7

    .line 51
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    goto :goto_c7

    .line 47
    :catchall_e1
    move-exception v1

    move-object v2, v6

    :goto_e3
    if-eqz v2, :cond_e8

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_e8
    if-eqz v0, :cond_ed

    .line 51
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_ed
    throw v1

    .line 47
    :catchall_ee
    move-exception v1

    goto :goto_e3

    .line 43
    :catch_f0
    move-exception v1

    goto :goto_ca
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    .prologue
    .line 415
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v1

    .line 416
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 418
    if-eqz p3, :cond_10

    .line 419
    :try_start_b
    const-string v2, "local_path"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_10
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_1f

    .line 423
    const-string v2, "ts"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 426
    :cond_1f
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_44

    .line 427
    const-string v2, "alias_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias= \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_44} :catch_4a
    .catchall {:try_start_b .. :try_end_44} :catchall_5d

    .line 434
    :cond_44
    if-eqz v1, :cond_49

    .line 435
    invoke-virtual {v1}, Lcn/domob/android/ads/c/b;->b()V

    .line 438
    :cond_49
    :goto_49
    return-void

    .line 430
    :catch_4a
    move-exception v0

    .line 431
    :try_start_4b
    sget-object v2, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 432
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v2, "Failed to update alias info."

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_5d

    .line 434
    if-eqz v1, :cond_49

    .line 435
    invoke-virtual {v1}, Lcn/domob/android/ads/c/b;->b()V

    goto :goto_49

    .line 434
    :catchall_5d
    move-exception v0

    if-eqz v1, :cond_63

    .line 435
    invoke-virtual {v1}, Lcn/domob/android/ads/c/b;->b()V

    :cond_63
    throw v0
.end method

.method protected a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 542
    :try_start_0
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 543
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_49

    .line 544
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 546
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 547
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success to delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 557
    :cond_49
    :goto_49
    return-void

    .line 549
    :cond_4a
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_63

    goto :goto_49

    .line 553
    :catch_63
    move-exception v0

    .line 554
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error happened when deleting file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 555
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_49
.end method

.method protected a(Landroid/content/Context;Lcn/domob/android/ads/K;)Z
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 125
    invoke-virtual {p2}, Lcn/domob/android/ads/K;->g()Z

    move-result v0

    if-nez v0, :cond_10

    .line 126
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v1, "SplashAd validate failed, ignoring the insert"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 163
    :cond_f
    :goto_f
    return v6

    .line 129
    :cond_10
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v0

    .line 131
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 132
    const-string v1, "_ad_id"

    invoke-virtual {p2}, Lcn/domob/android/ads/K;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "_ad_content"

    invoke-virtual {p2}, Lcn/domob/android/ads/K;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "_ad_alive_time"

    invoke-virtual {p2}, Lcn/domob/android/ads/K;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    const-string v1, "_enter_db_time"

    invoke-virtual {p2}, Lcn/domob/android/ads/K;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    const-string v1, "_ad_type"

    invoke-virtual {p2}, Lcn/domob/android/ads/K;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "_orientation"

    invoke-virtual {p2}, Lcn/domob/android/ads/K;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :try_start_57
    const-string v1, "domob_splash_ad_cache_res"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_60} :catch_ab
    .catchall {:try_start_57 .. :try_end_60} :catchall_c5

    move-result-object v2

    .line 141
    if-eqz v2, :cond_92

    :try_start_63
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_92

    .line 142
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v3, "one column ad is already in cache, so just update it"

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 143
    const-string v1, "domob_splash_ad_cache_res"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v8, v3, v4}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 144
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_81

    .line 145
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_81} :catch_d4
    .catchall {:try_start_63 .. :try_end_81} :catchall_d2

    .line 147
    :cond_81
    if-gez v1, :cond_90

    move v1, v6

    .line 156
    :goto_84
    if-eqz v2, :cond_89

    .line 157
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_89
    if-eqz v0, :cond_8e

    .line 160
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_8e
    move v6, v1

    goto :goto_f

    .line 147
    :cond_90
    const/4 v1, 0x1

    goto :goto_84

    .line 149
    :cond_92
    :try_start_92
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v3, "no ad is in the cache, so need to be inserted"

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 150
    const-string v1, "domob_splash_ad_cache_res"

    invoke-virtual {v0, v1, v8}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9e} :catch_d4
    .catchall {:try_start_92 .. :try_end_9e} :catchall_d2

    move-result v6

    .line 156
    if-eqz v2, :cond_a4

    .line 157
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_a4
    if-eqz v0, :cond_f

    .line 160
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    goto/16 :goto_f

    .line 152
    :catch_ab
    move-exception v1

    move-object v2, v7

    .line 153
    :goto_ad
    :try_start_ad
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 154
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v3, "error occured in insertOrUpdate function"

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_ad .. :try_end_b9} :catchall_d2

    .line 156
    if-eqz v2, :cond_be

    .line 157
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_be
    if-eqz v0, :cond_f

    .line 160
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    goto/16 :goto_f

    .line 156
    :catchall_c5
    move-exception v1

    move-object v2, v7

    :goto_c7
    if-eqz v2, :cond_cc

    .line 157
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_cc
    if-eqz v0, :cond_d1

    .line 160
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_d1
    throw v1

    .line 156
    :catchall_d2
    move-exception v1

    goto :goto_c7

    .line 152
    :catch_d4
    move-exception v1

    goto :goto_ad
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v3

    .line 303
    :try_start_7
    const-string v4, "SELECT * FROM %s WHERE %s=\"%s\" AND %s=\"%s\""

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "creative_alias"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "creative_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    const-string v7, "alias"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object p3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 306
    sget-object v5, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCreativeHasAlias sql:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 307
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 309
    if-eqz v2, :cond_5b

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_47} :catch_6d
    .catchall {:try_start_7 .. :try_end_47} :catchall_84

    move-result v4

    if-lez v4, :cond_5b

    .line 315
    if-eqz v2, :cond_55

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_55

    .line 316
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_55
    if-eqz v3, :cond_5a

    .line 319
    invoke-virtual {v3}, Lcn/domob/android/ads/c/b;->b()V

    .line 323
    :cond_5a
    :goto_5a
    return v0

    .line 315
    :cond_5b
    if-eqz v2, :cond_66

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_66

    .line 316
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_66
    if-eqz v3, :cond_6b

    .line 319
    invoke-virtual {v3}, Lcn/domob/android/ads/c/b;->b()V

    :cond_6b
    :goto_6b
    move v0, v1

    .line 323
    goto :goto_5a

    .line 312
    :catch_6d
    move-exception v0

    .line 313
    :try_start_6e
    sget-object v4, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v4, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_84

    .line 315
    if-eqz v2, :cond_7e

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 316
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_7e
    if-eqz v3, :cond_6b

    .line 319
    invoke-virtual {v3}, Lcn/domob/android/ads/c/b;->b()V

    goto :goto_6b

    .line 315
    :catchall_84
    move-exception v0

    if-eqz v2, :cond_90

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_90

    .line 316
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_90
    if-eqz v3, :cond_95

    .line 319
    invoke-virtual {v3}, Lcn/domob/android/ads/c/b;->b()V

    :cond_95
    throw v0
.end method

.method protected b(Landroid/content/Context;)Lcn/domob/android/ads/K;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 64
    .line 65
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v0

    .line 71
    :try_start_5
    const-string v1, "domob_splash_ad_cache_res"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_ac
    .catchall {:try_start_5 .. :try_end_e} :catchall_c7

    move-result-object v3

    .line 72
    if-eqz v3, :cond_a3

    :try_start_11
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a3

    .line 73
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There are "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " available cached splash  ad"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 74
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    new-instance v2, Lcn/domob/android/ads/K;

    invoke-direct {v2}, Lcn/domob/android/ads/K;-><init>()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_41} :catch_d9
    .catchall {:try_start_11 .. :try_end_41} :catchall_d4

    .line 79
    :try_start_41
    const-string v1, "_ad_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 80
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/K;->b(Ljava/lang/String;)V

    .line 82
    const-string v1, "_ad_content"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 83
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/K;->c(Ljava/lang/String;)V

    .line 85
    const-string v1, "_ad_alive_time"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 86
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcn/domob/android/ads/K;->a(J)V

    .line 88
    const-string v1, "_enter_db_time"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 89
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcn/domob/android/ads/K;->b(J)V

    .line 91
    const-string v1, "_ad_type"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 92
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/K;->d(Ljava/lang/String;)V

    .line 94
    const-string v1, "_orientation"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 95
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/K;->a(Ljava/lang/String;)V

    .line 97
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v4, "succeed to get a SplashAd"

    invoke-virtual {v1, v4}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_96} :catch_de
    .catchall {:try_start_41 .. :try_end_96} :catchall_d4

    move-object v1, v2

    .line 105
    :goto_97
    if-eqz v3, :cond_9c

    .line 106
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_9c
    if-eqz v0, :cond_e4

    .line 109
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    move-object v0, v1

    .line 112
    :goto_a2
    return-object v0

    .line 99
    :cond_a3
    :try_start_a3
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v2, "no such type ad in cache"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_aa} :catch_d9
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_d4

    move-object v1, v6

    goto :goto_97

    .line 101
    :catch_ac
    move-exception v1

    move-object v2, v1

    move-object v1, v6

    .line 102
    :goto_af
    :try_start_af
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 103
    sget-object v2, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v3, "error occured in getSplashCacheAd"

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_af .. :try_end_bb} :catchall_d6

    .line 105
    if-eqz v6, :cond_c0

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_c0
    if-eqz v0, :cond_e4

    .line 109
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    move-object v0, v1

    goto :goto_a2

    .line 105
    :catchall_c7
    move-exception v1

    move-object v3, v6

    :goto_c9
    if-eqz v3, :cond_ce

    .line 106
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_ce
    if-eqz v0, :cond_d3

    .line 109
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_d3
    throw v1

    .line 105
    :catchall_d4
    move-exception v1

    goto :goto_c9

    :catchall_d6
    move-exception v1

    move-object v3, v6

    goto :goto_c9

    .line 101
    :catch_d9
    move-exception v1

    move-object v2, v1

    move-object v1, v6

    move-object v6, v3

    goto :goto_af

    :catch_de
    move-exception v1

    move-object v6, v3

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_af

    :cond_e4
    move-object v0, v1

    goto :goto_a2
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 228
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v0

    .line 232
    :try_start_5
    const-string v1, "alias_info"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias= \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_60
    .catchall {:try_start_5 .. :try_end_26} :catchall_78

    move-result-object v2

    .line 235
    if-eqz v2, :cond_4e

    :try_start_29
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4e

    .line 236
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 238
    const-string v1, "local_path"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 239
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3b} :catch_8d
    .catchall {:try_start_29 .. :try_end_3b} :catchall_8a

    move-result-object v1

    .line 246
    if-eqz v2, :cond_47

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_47

    .line 247
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_47
    if-eqz v0, :cond_4c

    .line 250
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_4c
    move-object v0, v1

    .line 254
    :goto_4d
    return-object v0

    .line 246
    :cond_4e
    if-eqz v2, :cond_59

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_59

    .line 247
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_59
    if-eqz v0, :cond_5e

    .line 250
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_5e
    :goto_5e
    move-object v0, v6

    .line 254
    goto :goto_4d

    .line 243
    :catch_60
    move-exception v1

    move-object v2, v6

    .line 244
    :goto_62
    :try_start_62
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_8a

    .line 246
    if-eqz v2, :cond_72

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_72

    .line 247
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_72
    if-eqz v0, :cond_5e

    .line 250
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    goto :goto_5e

    .line 246
    :catchall_78
    move-exception v1

    :goto_79
    if-eqz v6, :cond_84

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_84

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_84
    if-eqz v0, :cond_89

    .line 250
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_89
    throw v1

    .line 246
    :catchall_8a
    move-exception v1

    move-object v6, v2

    goto :goto_79

    .line 243
    :catch_8d
    move-exception v1

    goto :goto_62
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 357
    invoke-static {p2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 358
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v1

    .line 361
    :try_start_a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 362
    const-string v2, "alias"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    if-eqz p3, :cond_1b

    .line 364
    const-string v2, "local_path"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_1b
    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 368
    const-string v2, "alias_info"

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_33
    .catchall {:try_start_a .. :try_end_2d} :catchall_46

    .line 373
    if-eqz v1, :cond_32

    .line 374
    invoke-virtual {v1}, Lcn/domob/android/ads/c/b;->b()V

    .line 378
    :cond_32
    :goto_32
    return-void

    .line 369
    :catch_33
    move-exception v0

    .line 370
    :try_start_34
    sget-object v2, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 371
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v2, "Failed to insert alias info."

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_46

    .line 373
    if-eqz v1, :cond_32

    .line 374
    invoke-virtual {v1}, Lcn/domob/android/ads/c/b;->b()V

    goto :goto_32

    .line 373
    :catchall_46
    move-exception v0

    if-eqz v1, :cond_4c

    .line 374
    invoke-virtual {v1}, Lcn/domob/android/ads/c/b;->b()V

    :cond_4c
    throw v0
.end method

.method protected c(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v0

    .line 168
    const-string v1, "domob_splash_ad_cache_res"

    invoke-virtual {v0, v1, v2, v2}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 169
    const-string v1, "creative_alias"

    invoke-virtual {v0, v1, v2, v2}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    if-eqz v0, :cond_14

    .line 171
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    .line 173
    :cond_14
    return-void
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 388
    invoke-static {p2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p3}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 389
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v1

    .line 392
    :try_start_10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 393
    const-string v2, "alias"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v2, "creative_id"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v2, "creative_alias"

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_2a
    .catchall {:try_start_10 .. :try_end_24} :catchall_3d

    .line 400
    if-eqz v1, :cond_29

    .line 401
    invoke-virtual {v1}, Lcn/domob/android/ads/c/b;->b()V

    .line 405
    :cond_29
    :goto_29
    return-void

    .line 396
    :catch_2a
    move-exception v0

    .line 397
    :try_start_2b
    sget-object v2, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 398
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v2, "Failed to insert creative-alias."

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_3d

    .line 400
    if-eqz v1, :cond_29

    .line 401
    invoke-virtual {v1}, Lcn/domob/android/ads/c/b;->b()V

    goto :goto_29

    .line 400
    :catchall_3d
    move-exception v0

    if-eqz v1, :cond_43

    .line 401
    invoke-virtual {v1}, Lcn/domob/android/ads/c/b;->b()V

    :cond_43
    throw v0
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 265
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v0

    .line 268
    :try_start_5
    const-string v1, "alias_info"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias= \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_5a
    .catchall {:try_start_5 .. :try_end_26} :catchall_72

    move-result-object v2

    .line 271
    if-eqz v2, :cond_48

    :try_start_29
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_48

    .line 272
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 274
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/c;->e(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_87
    .catchall {:try_start_29 .. :try_end_35} :catchall_84

    .line 275
    const/4 v1, 0x1

    .line 280
    if-eqz v2, :cond_41

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_41

    .line 281
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_41
    if-eqz v0, :cond_46

    .line 284
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_46
    move v0, v1

    .line 288
    :goto_47
    return v0

    .line 280
    :cond_48
    if-eqz v2, :cond_53

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_53

    .line 281
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_53
    if-eqz v0, :cond_58

    .line 284
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    .line 288
    :cond_58
    :goto_58
    const/4 v0, 0x0

    goto :goto_47

    .line 277
    :catch_5a
    move-exception v1

    move-object v2, v6

    .line 278
    :goto_5c
    :try_start_5c
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_84

    .line 280
    if-eqz v2, :cond_6c

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 281
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_6c
    if-eqz v0, :cond_58

    .line 284
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    goto :goto_58

    .line 280
    :catchall_72
    move-exception v1

    :goto_73
    if-eqz v6, :cond_7e

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 281
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_7e
    if-eqz v0, :cond_83

    .line 284
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_83
    throw v1

    .line 280
    :catchall_84
    move-exception v1

    move-object v6, v2

    goto :goto_73

    .line 277
    :catch_87
    move-exception v1

    goto :goto_5c
.end method

.method protected d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 335
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1f

    .line 337
    :cond_c
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v1, "Alias %s is in DB but the local path is null."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 347
    :goto_1d
    const/4 v0, 0x0

    :cond_1e
    return-object v0

    .line 339
    :cond_1f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 343
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/c;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method protected d(Landroid/content/Context;)V
    .registers 14

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 483
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v0

    .line 486
    :try_start_6
    const-string v1, "alias_info"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "alias"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "local_path"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ts"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "ts"

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_21} :catch_109
    .catchall {:try_start_6 .. :try_end_21} :catchall_f4

    move-result-object v2

    .line 489
    if-eqz v2, :cond_ba

    .line 490
    :try_start_24
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 491
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alias number stored in DB is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 492
    const/16 v3, 0xa

    if-le v1, v3, :cond_ce

    .line 493
    add-int/lit8 v3, v1, -0xa

    .line 494
    sget-object v4, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v5, "Alias number=%d is larger than max=%d, %d to delete."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    const/4 v1, 0x1

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 498
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v7

    .line 499
    :goto_6f
    if-ge v1, v3, :cond_b3

    .line 500
    const-string v4, "alias"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 501
    const-string v5, "local_path"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 502
    const-string v6, "ts"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 504
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 505
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 506
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 507
    sget-object v8, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v9, "Alias to delete: %s selected/inserted at %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0, v5}, Lcn/domob/android/ads/c;->a(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0, p1, v4}, Lcn/domob/android/ads/c;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 512
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_cb

    .line 517
    :cond_b3
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v3, "Finish to delete old resources."

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_ba} :catch_d6
    .catchall {:try_start_24 .. :try_end_ba} :catchall_107

    .line 526
    :cond_ba
    :goto_ba
    if-eqz v2, :cond_c5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_c5

    .line 527
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 529
    :cond_c5
    if-eqz v0, :cond_ca

    .line 530
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    .line 533
    :cond_ca
    :goto_ca
    return-void

    .line 499
    :cond_cb
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 519
    :cond_ce
    :try_start_ce
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v3, "There is no need to delete resources."

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d5} :catch_d6
    .catchall {:try_start_ce .. :try_end_d5} :catchall_107

    goto :goto_ba

    .line 522
    :catch_d6
    move-exception v1

    .line 523
    :goto_d7
    :try_start_d7
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 524
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v3, "Failed to delete resources."

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_d7 .. :try_end_e3} :catchall_107

    .line 526
    if-eqz v2, :cond_ee

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_ee

    .line 527
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 529
    :cond_ee
    if-eqz v0, :cond_ca

    .line 530
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    goto :goto_ca

    .line 526
    :catchall_f4
    move-exception v1

    move-object v2, v6

    :goto_f6
    if-eqz v2, :cond_101

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_101

    .line 527
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 529
    :cond_101
    if-eqz v0, :cond_106

    .line 530
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_106
    throw v1

    .line 526
    :catchall_107
    move-exception v1

    goto :goto_f6

    .line 522
    :catch_109
    move-exception v1

    move-object v2, v6

    goto :goto_d7
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 561
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v0

    .line 563
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 564
    const-string v1, "creative_id"

    invoke-virtual {v8, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v1, "alias"

    invoke-virtual {v8, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :try_start_15
    const-string v1, "creative_alias"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_60
    .catchall {:try_start_15 .. :try_end_1e} :catchall_7a

    move-result-object v2

    .line 569
    if-eqz v2, :cond_48

    :try_start_21
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_48

    .line 570
    const-string v1, "creative_alias"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v8, v3, v4}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 571
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_38

    .line 572
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_38} :catch_89
    .catchall {:try_start_21 .. :try_end_38} :catchall_87

    .line 574
    :cond_38
    if-gez v1, :cond_46

    move v1, v6

    .line 583
    :goto_3b
    if-eqz v2, :cond_40

    .line 584
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_40
    if-eqz v0, :cond_45

    .line 587
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    .line 590
    :cond_45
    :goto_45
    return v1

    .line 574
    :cond_46
    const/4 v1, 0x1

    goto :goto_3b

    .line 576
    :cond_48
    :try_start_48
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v3, "no ad is in the cache, so need to be inserted"

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 577
    const-string v1, "creative_alias"

    invoke-virtual {v0, v1, v8}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_54} :catch_89
    .catchall {:try_start_48 .. :try_end_54} :catchall_87

    move-result v1

    .line 583
    if-eqz v2, :cond_5a

    .line 584
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_5a
    if-eqz v0, :cond_45

    .line 587
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    goto :goto_45

    .line 579
    :catch_60
    move-exception v1

    move-object v2, v7

    .line 580
    :goto_62
    :try_start_62
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 581
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v3, "error occured in insertOrUpdate function"

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_62 .. :try_end_6e} :catchall_87

    .line 583
    if-eqz v2, :cond_73

    .line 584
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_73
    if-eqz v0, :cond_78

    .line 587
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_78
    move v1, v6

    .line 590
    goto :goto_45

    .line 583
    :catchall_7a
    move-exception v1

    move-object v2, v7

    :goto_7c
    if-eqz v2, :cond_81

    .line 584
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_81
    if-eqz v0, :cond_86

    .line 587
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->b()V

    :cond_86
    throw v1

    .line 583
    :catchall_87
    move-exception v1

    goto :goto_7c

    .line 579
    :catch_89
    move-exception v1

    goto :goto_62
.end method

.method protected e(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 447
    invoke-static {p2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 449
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 451
    :cond_11
    return-void
.end method

.method protected f(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 460
    invoke-static {p2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 461
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 462
    invoke-static {p1}, Lcn/domob/android/ads/c/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/c/b;

    move-result-object v1

    .line 464
    :try_start_22
    const-string v0, "alias_info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alias= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_41} :catch_47
    .catchall {:try_start_22 .. :try_end_41} :catchall_5a

    .line 470
    if-eqz v1, :cond_46

    .line 471
    invoke-virtual {v1}, Lcn/domob/android/ads/c/b;->b()V

    .line 475
    :cond_46
    :goto_46
    return-void

    .line 466
    :catch_47
    move-exception v0

    .line 467
    :try_start_48
    sget-object v2, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 468
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/i/f;

    const-string v2, "Failed to delete alias info."

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_5a

    .line 470
    if-eqz v1, :cond_46

    .line 471
    invoke-virtual {v1}, Lcn/domob/android/ads/c/b;->b()V

    goto :goto_46

    .line 470
    :catchall_5a
    move-exception v0

    if-eqz v1, :cond_60

    .line 471
    invoke-virtual {v1}, Lcn/domob/android/ads/c/b;->b()V

    :cond_60
    throw v0
.end method
