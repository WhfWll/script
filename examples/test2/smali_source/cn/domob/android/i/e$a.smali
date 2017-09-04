.class Lcn/domob/android/i/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/i/e$a$b;,
        Lcn/domob/android/i/e$a$c;,
        Lcn/domob/android/i/e$a$a;
    }
.end annotation


# static fields
.field private static final a:Lcn/domob/android/i/e$a;

.field private static final b:I = 0x3

.field private static final c:I = 0x927c0

.field private static volatile d:I = 0x0

.field private static volatile e:J = 0x0L

.field private static final f:J = 0x927c0L

.field private static final g:I = 0x1d4c0

.field private static final h:I = 0x124f80

.field private static final i:I = 0x15f90


# instance fields
.field private j:Landroid/location/Location;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    new-instance v0, Lcn/domob/android/i/e$a;

    invoke-direct {v0}, Lcn/domob/android/i/e$a;-><init>()V

    sput-object v0, Lcn/domob/android/i/e$a;->a:Lcn/domob/android/i/e$a;

    .line 87
    const/4 v0, 0x0

    sput v0, Lcn/domob/android/i/e$a;->d:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/android/i/e$a;->k:I

    .line 281
    return-void
.end method

.method static synthetic a(Lcn/domob/android/i/e$a;)I
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcn/domob/android/i/e$a;->e()I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;)Landroid/location/Location;
    .registers 12

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 135
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/android/i/e$a;->k:I

    .line 137
    if-nez v2, :cond_b

    .line 138
    const/4 v0, 0x0

    .line 170
    :goto_a
    return-object v0

    .line 140
    :cond_b
    :try_start_b
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v0}, Lcn/domob/android/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 141
    if-nez v3, :cond_1b

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v0}, Lcn/domob/android/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 142
    :cond_1b
    const-string v0, "location"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 143
    if-eqz v0, :cond_6f

    .line 144
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 146
    :cond_2e
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 147
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_2e

    iget-object v5, p0, Lcn/domob/android/i/e$a;->j:Landroid/location/Location;

    invoke-direct {p0, v1, v5}, Lcn/domob/android/i/e$a;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 150
    iput-object v1, p0, Lcn/domob/android/i/e$a;->j:Landroid/location/Location;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4a} :catch_4b

    goto :goto_2e

    .line 167
    :catch_4b
    move-exception v0

    .line 168
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 170
    :cond_53
    :goto_53
    iget-object v0, p0, Lcn/domob/android/i/e$a;->j:Landroid/location/Location;

    goto :goto_a

    .line 153
    :cond_56
    :try_start_56
    iget-object v1, p0, Lcn/domob/android/i/e$a;->j:Landroid/location/Location;

    if-eqz v1, :cond_6c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcn/domob/android/i/e$a;->j:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    add-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-lez v1, :cond_6f

    .line 154
    :cond_6c
    invoke-direct {p0, v0, v2}, Lcn/domob/android/i/e$a;->a(Landroid/location/LocationManager;Landroid/content/Context;)V

    .line 157
    :cond_6f
    iget-object v1, p0, Lcn/domob/android/i/e$a;->j:Landroid/location/Location;

    if-nez v1, :cond_53

    .line 158
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 159
    if-eqz v0, :cond_8b

    if-nez v1, :cond_7f

    if-eqz v3, :cond_8b

    :cond_7f
    if-nez v1, :cond_53

    if-eqz v3, :cond_53

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 161
    :cond_8b
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/i/e$a;->k:I

    goto :goto_53

    .line 165
    :cond_8f
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/android/i/e$a;->k:I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_92} :catch_4b

    goto :goto_53
.end method

.method static synthetic a(Lcn/domob/android/i/e$a;Landroid/content/Context;)Landroid/location/Location;
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcn/domob/android/i/e$a;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Lcn/domob/android/i/e$a;
    .registers 1

    .prologue
    .line 74
    invoke-static {}, Lcn/domob/android/i/e$a;->b()Lcn/domob/android/i/e$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/location/Location;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    if-eqz p1, :cond_42

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v1

    const-class v2, Lcn/domob/android/i/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User coordinates are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    :cond_42
    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/i/e$a;Landroid/location/Location;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcn/domob/android/i/e$a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/location/LocationManager;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 238
    new-instance v5, Lcn/domob/android/i/e$a$b;

    invoke-direct {v5, p0, p2}, Lcn/domob/android/i/e$a$b;-><init>(Lcn/domob/android/i/e$a;Landroid/location/LocationManager;)V

    .line 239
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start to listener position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 240
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v0, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 241
    const-string v0, "network"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 242
    const v0, 0x124f80

    invoke-direct {p0, p2, v5, v0, p3}, Lcn/domob/android/i/e$a;->a(Landroid/location/LocationManager;Lcn/domob/android/i/e$a$b;ILjava/lang/String;)V

    .line 246
    :cond_39
    :goto_39
    return-void

    .line 243
    :cond_3a
    const-string v0, "gps"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 244
    const v0, 0x15f90

    invoke-direct {p0, p2, v5, v0, p3}, Lcn/domob/android/i/e$a;->a(Landroid/location/LocationManager;Lcn/domob/android/i/e$a$b;ILjava/lang/String;)V

    goto :goto_39
.end method

.method private declared-synchronized a(Landroid/location/LocationManager;Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 180
    monitor-enter p0

    if-nez p1, :cond_5

    .line 211
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 184
    :cond_5
    :try_start_5
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 188
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 190
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 191
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 194
    invoke-direct {p0}, Lcn/domob/android/i/e$a;->c()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcn/domob/android/i/e$a;->e:J

    .line 196
    invoke-direct {p0, p2, p1, v0}, Lcn/domob/android/i/e$a;->a(Landroid/content/Context;Landroid/location/LocationManager;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4a} :catch_4b
    .catchall {:try_start_5 .. :try_end_4a} :catchall_54

    goto :goto_27

    .line 208
    :catch_4b
    move-exception v0

    .line 209
    :try_start_4c
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_54

    goto :goto_3

    .line 180
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0

    .line 198
    :cond_57
    :try_start_57
    const-string v2, "network"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    const-string v2, "passive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 199
    :cond_67
    invoke-direct {p0, p2, p1, v0}, Lcn/domob/android/i/e$a;->a(Landroid/content/Context;Landroid/location/LocationManager;Ljava/lang/String;)V

    goto :goto_27

    .line 205
    :cond_6b
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v2

    const-string v3, "Detected an unknown location provider %s, but taking into account security, there is no use."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_7e} :catch_4b
    .catchall {:try_start_57 .. :try_end_7e} :catchall_54

    goto :goto_27
.end method

.method private a(Landroid/location/LocationManager;Lcn/domob/android/i/e$a$b;ILjava/lang/String;)V
    .registers 9

    .prologue
    .line 257
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 258
    new-instance v1, Lcn/domob/android/i/e$a$1;

    invoke-direct {v1, p0, p4, p2, p1}, Lcn/domob/android/i/e$a$1;-><init>(Lcn/domob/android/i/e$a;Ljava/lang/String;Lcn/domob/android/i/e$a$b;Landroid/location/LocationManager;)V

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 268
    return-void
.end method

.method private a(Lcn/domob/android/i/e$a$b;)V
    .registers 5

    .prologue
    .line 275
    invoke-virtual {p1}, Lcn/domob/android/i/e$a$b;->a()Z

    move-result v0

    if-nez v0, :cond_28

    .line 276
    sget v0, Lcn/domob/android/i/e$a;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/domob/android/i/e$a;->d:I

    .line 277
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps locate failed, and the current total failed times is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/domob/android/i/e$a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 279
    :cond_28
    return-void
.end method

.method static synthetic a(Lcn/domob/android/i/e$a;Lcn/domob/android/i/e$a$b;)V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcn/domob/android/i/e$a;->a(Lcn/domob/android/i/e$a$b;)V

    return-void
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 15

    .prologue
    const-wide/32 v10, 0x927c0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 337
    if-nez p2, :cond_8

    .line 386
    :cond_7
    :goto_7
    return v1

    .line 342
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 344
    cmp-long v0, v4, v10

    if-gtz v0, :cond_22

    cmp-long v0, v6, v10

    if-gtz v0, :cond_7

    .line 347
    :cond_22
    cmp-long v0, v4, v10

    if-lez v0, :cond_2c

    cmp-long v0, v6, v10

    if-gtz v0, :cond_2c

    move v1, v2

    .line 348
    goto :goto_7

    .line 352
    :cond_2c
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 353
    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_52

    move v3, v1

    .line 354
    :goto_3d
    const-wide/32 v6, -0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_54

    move v0, v1

    .line 355
    :goto_45
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_56

    move v5, v1

    .line 360
    :goto_4c
    if-nez v3, :cond_7

    .line 364
    if-eqz v0, :cond_58

    move v1, v2

    .line 365
    goto :goto_7

    :cond_52
    move v3, v2

    .line 353
    goto :goto_3d

    :cond_54
    move v0, v2

    .line 354
    goto :goto_45

    :cond_56
    move v5, v2

    .line 355
    goto :goto_4c

    .line 369
    :cond_58
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 370
    if-lez v0, :cond_87

    move v4, v1

    .line 371
    :goto_65
    if-gez v0, :cond_89

    move v3, v1

    .line 372
    :goto_68
    const/16 v6, 0xc8

    if-le v0, v6, :cond_8b

    move v0, v1

    .line 375
    :goto_6d
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcn/domob/android/i/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 379
    if-nez v3, :cond_7

    .line 381
    if-eqz v5, :cond_7f

    if-eqz v4, :cond_7

    .line 383
    :cond_7f
    if-eqz v5, :cond_85

    if-nez v0, :cond_85

    if-nez v6, :cond_7

    :cond_85
    move v1, v2

    .line 386
    goto :goto_7

    :cond_87
    move v4, v2

    .line 370
    goto :goto_65

    :cond_89
    move v3, v2

    .line 371
    goto :goto_68

    :cond_8b
    move v0, v2

    .line 372
    goto :goto_6d
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 391
    if-nez p1, :cond_8

    .line 392
    if-nez p2, :cond_6

    .line 397
    :cond_5
    :goto_5
    return v0

    .line 392
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 394
    :cond_8
    if-eqz p2, :cond_5

    .line 395
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method static synthetic b(Lcn/domob/android/i/e$a;)I
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcn/domob/android/i/e$a;->d()I

    move-result v0

    return v0
.end method

.method private static b()Lcn/domob/android/i/e$a;
    .registers 1

    .prologue
    .line 124
    sget-object v0, Lcn/domob/android/i/e$a;->a:Lcn/domob/android/i/e$a;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/i/e$a;)I
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcn/domob/android/i/e$a;->f()I

    move-result v0

    return v0
.end method

.method private c()Z
    .registers 9

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 218
    sget v2, Lcn/domob/android/i/e$a;->d:I

    if-gt v6, v2, :cond_26

    .line 219
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v2

    const-string v3, "gps positioning has failed %d times, has reached or exceeded the maximum allowed number(%d) of failures"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Lcn/domob/android/i/e$a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 228
    :goto_25
    return v0

    .line 222
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 224
    sget-wide v4, Lcn/domob/android/i/e$a;->e:J

    const-wide/32 v6, 0x927c0

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_3e

    .line 225
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v1

    const-string v2, "Now can not be gps positioning, because just evoke gps positioning time"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_25

    :cond_3e
    move v0, v1

    .line 228
    goto :goto_25
.end method

.method private d()I
    .registers 5

    .prologue
    .line 407
    iget-object v0, p0, Lcn/domob/android/i/e$a;->j:Landroid/location/Location;

    if-eqz v0, :cond_44

    .line 408
    iget-object v0, p0, Lcn/domob/android/i/e$a;->j:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This location is obtained via "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 410
    if-eqz v0, :cond_44

    .line 411
    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 412
    const/4 v0, 0x1

    .line 420
    :goto_2f
    return v0

    .line 413
    :cond_30
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 414
    const/4 v0, 0x0

    goto :goto_2f

    .line 415
    :cond_3a
    const-string v1, "passive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 416
    const/4 v0, 0x2

    goto :goto_2f

    .line 420
    :cond_44
    const/4 v0, 0x3

    goto :goto_2f
.end method

.method static synthetic d(Lcn/domob/android/i/e$a;)J
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0}, Lcn/domob/android/i/e$a;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method private e()I
    .registers 5

    .prologue
    .line 430
    iget-object v0, p0, Lcn/domob/android/i/e$a;->j:Landroid/location/Location;

    if-nez v0, :cond_26

    .line 431
    const/4 v0, 0x0

    .line 435
    :goto_5
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location accuracy is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " meters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 436
    return v0

    .line 433
    :cond_26
    iget-object v0, p0, Lcn/domob/android/i/e$a;->j:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    goto :goto_5
.end method

.method private f()I
    .registers 3

    .prologue
    .line 445
    iget v0, p0, Lcn/domob/android/i/e$a;->k:I

    packed-switch v0, :pswitch_data_26

    .line 458
    :goto_5
    iget v0, p0, Lcn/domob/android/i/e$a;->k:I

    return v0

    .line 447
    :pswitch_8
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Location can not be obtained due to USER_CLOSE"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_5

    .line 450
    :pswitch_12
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Location can not be obtained due to NO_PERSSION"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_5

    .line 453
    :pswitch_1c
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Location can not be obtained due to NO_AVAILABLE_LOCATION"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_5

    .line 445
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_8
        :pswitch_12
        :pswitch_1c
    .end packed-switch
.end method

.method private g()J
    .registers 15

    .prologue
    const-wide/16 v12, 0x3c

    .line 467
    iget-object v0, p0, Lcn/domob/android/i/e$a;->j:Landroid/location/Location;

    if-eqz v0, :cond_3c

    .line 468
    iget-object v0, p0, Lcn/domob/android/i/e$a;->j:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 470
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v4

    const-class v5, Lcn/domob/android/i/c;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "The location is %s minutes %s seconds ago acquired"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    div-long v10, v2, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    rem-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    :goto_3b
    return-wide v0

    :cond_3c
    const-wide/16 v0, 0x0

    goto :goto_3b
.end method
