.class public Lcn/domob/android/ads/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcn/domob/android/ads/y;

.field private static b:Lcn/domob/android/i/f;

.field private static c:Lcn/domob/android/ads/h;

.field private static volatile d:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:J

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/h;->b:Lcn/domob/android/i/f;

    .line 29
    const-string v0, "http://r.domob.cn/a/"

    sput-object v0, Lcn/domob/android/ads/h;->d:Ljava/lang/String;

    .line 39
    sput-object v2, Lcn/domob/android/ads/h;->k:Ljava/lang/String;

    .line 40
    sput-object v2, Lcn/domob/android/ads/h;->l:Ljava/lang/String;

    .line 41
    sput-object v2, Lcn/domob/android/ads/h;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcn/domob/android/ads/h;->e:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcn/domob/android/ads/h;->f:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/h;->g:Z

    .line 36
    iput-object v1, p0, Lcn/domob/android/ads/h;->j:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcn/domob/android/ads/h;
    .registers 2

    .prologue
    .line 47
    const-class v1, Lcn/domob/android/ads/h;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/domob/android/ads/h;->c:Lcn/domob/android/ads/h;

    if-nez v0, :cond_e

    .line 48
    new-instance v0, Lcn/domob/android/ads/h;

    invoke-direct {v0}, Lcn/domob/android/ads/h;-><init>()V

    sput-object v0, Lcn/domob/android/ads/h;->c:Lcn/domob/android/ads/h;

    .line 51
    :cond_e
    sget-object v0, Lcn/domob/android/ads/h;->c:Lcn/domob/android/ads/h;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcn/domob/android/ads/h;->e:Ljava/lang/String;

    if-nez v1, :cond_30

    .line 91
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_30

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 96
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_3e

    if-eqz v2, :cond_30

    .line 98
    :try_start_1b
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "DOMOB_PID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcn/domob/android/ads/h;->e:Ljava/lang/String;

    if-nez v2, :cond_30

    if-eqz v1, :cond_30

    .line 100
    iput-object v1, p0, Lcn/domob/android/ads/h;->e:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcn/domob/android/ads/h;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/domob/android/ads/h;->b(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_30} :catch_33

    .line 116
    :cond_30
    iget-object v0, p0, Lcn/domob/android/ads/h;->e:Ljava/lang/String;

    :goto_32
    return-object v0

    .line 103
    :catch_33
    move-exception v1

    .line 104
    :try_start_34
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DOMOB_PID is missed in AndroidManifest.xml!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_3e

    goto :goto_32

    .line 109
    :catch_3e
    move-exception v1

    .line 110
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get applicationInfo."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v2, Lcn/domob/android/ads/h;->b:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_32
.end method

.method protected a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 55
    if-eqz p1, :cond_1c

    .line 56
    sget-object v0, Lcn/domob/android/ads/h;->b:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set AD server url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 57
    sput-object p1, Lcn/domob/android/ads/h;->d:Ljava/lang/String;

    .line 59
    :cond_1c
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 226
    sput-object p1, Lcn/domob/android/ads/h;->k:Ljava/lang/String;

    .line 227
    sput-object p2, Lcn/domob/android/ads/h;->l:Ljava/lang/String;

    .line 228
    const-string v0, "0"

    sput-object v0, Lcn/domob/android/ads/h;->m:Ljava/lang/String;

    .line 230
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 234
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 235
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_24} :catch_43

    move-result-object v3

    .line 238
    :try_start_25
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 239
    sget-object v4, Lcn/domob/android/ads/h;->b:Lcn/domob/android/i/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "origin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 240
    sput-object v3, Lcn/domob/android/ads/h;->m:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_42} :catch_4c
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_42} :catch_43

    .line 254
    :cond_42
    :goto_42
    return-void

    .line 250
    :catch_43
    move-exception v0

    .line 251
    sget-object v0, Lcn/domob/android/ads/h;->b:Lcn/domob/android/i/f;

    const-string v1, "ors json exception."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_42

    .line 243
    :catch_4c
    move-exception v2

    goto :goto_11
.end method

.method protected a(ZJI)V
    .registers 5

    .prologue
    .line 133
    iput-boolean p1, p0, Lcn/domob/android/ads/h;->g:Z

    .line 134
    iput-wide p2, p0, Lcn/domob/android/ads/h;->h:J

    .line 135
    iput p4, p0, Lcn/domob/android/ads/h;->i:I

    .line 136
    return-void
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lcn/domob/android/ads/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 124
    iget-object v0, p0, Lcn/domob/android/ads/h;->f:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 125
    new-instance v0, Lcn/domob/android/ads/c/a;

    const-string v1, "domob_config"

    invoke-direct {v0, p1, v1}, Lcn/domob/android/ads/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    const-string v1, "cookie_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h;->f:Ljava/lang/String;

    .line 129
    :cond_14
    iget-object v0, p0, Lcn/domob/android/ads/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 72
    if-eqz p1, :cond_a

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 73
    :cond_a
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Incorrect Domob publisher ID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_13
    return-void

    .line 77
    :cond_14
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current publisherID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, Lcn/domob/android/ads/h;->e:Ljava/lang/String;

    goto :goto_13
.end method

.method protected c()J
    .registers 5

    .prologue
    .line 164
    iget-wide v0, p0, Lcn/domob/android/ads/h;->h:J

    iget v2, p0, Lcn/domob/android/ads/h;->i:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcn/domob/android/ads/h;->f:Ljava/lang/String;

    .line 121
    return-void
.end method

.method protected c(Landroid/content/Context;)Z
    .registers 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 139
    iget-boolean v0, p0, Lcn/domob/android/ads/h;->g:Z

    if-eqz v0, :cond_51

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/domob/android/ads/h;->h:J

    iget v0, p0, Lcn/domob/android/ads/h;->i:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_4f

    const/4 v0, 0x1

    .line 142
    :goto_18
    if-nez v0, :cond_4e

    iget-boolean v2, p0, Lcn/domob/android/ads/h;->g:Z

    if-eqz v2, :cond_4e

    .line 144
    iput-boolean v1, p0, Lcn/domob/android/ads/h;->g:Z

    .line 145
    iput-wide v8, p0, Lcn/domob/android/ads/h;->h:J

    .line 146
    iput v1, p0, Lcn/domob/android/ads/h;->i:I

    .line 148
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 149
    const-string v3, "timestamp"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v3, "disable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v3, "time"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v1, Lcn/domob/android/ads/c/a;

    const-string v3, "domob_config"

    invoke-direct {v1, p1, v3}, Lcn/domob/android/ads/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/a;->a(Ljava/util/HashMap;)V

    .line 157
    :cond_4e
    return v0

    :cond_4f
    move v0, v1

    .line 139
    goto :goto_18

    :cond_51
    move v0, v1

    goto :goto_18
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcn/domob/android/ads/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 211
    iput-object p1, p0, Lcn/domob/android/ads/h;->j:Ljava/lang/String;

    .line 212
    return-void
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 223
    sget-object v0, Lcn/domob/android/ads/h;->k:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcn/domob/android/ads/h;->l:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected e(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 256
    sget-object v1, Lcn/domob/android/ads/h;->k:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 259
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 260
    sget-object v2, Lcn/domob/android/ads/h;->k:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 261
    if-gt v1, v2, :cond_12

    .line 272
    :cond_11
    :goto_11
    return v0

    .line 264
    :cond_12
    sget-object v1, Lcn/domob/android/ads/h;->b:Lcn/domob/android/i/f;

    const-string v2, "get origin detection config update"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1b

    .line 265
    const/4 v0, 0x1

    goto :goto_11

    .line 268
    :catch_1b
    move-exception v1

    goto :goto_11
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 275
    sget-object v0, Lcn/domob/android/ads/h;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    sget-object v0, Lcn/domob/android/ads/h;->k:Ljava/lang/String;

    return-object v0
.end method
