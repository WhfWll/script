.class Lcn/domob/android/i/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/i/c$a$b;,
        Lcn/domob/android/i/c$a$c;,
        Lcn/domob/android/i/c$a$a;
    }
.end annotation


# static fields
.field private static final a:Lcn/domob/android/i/c$a;

.field private static final e:J = 0x927c0L

.field private static final f:I = 0x1d4c0

.field private static final g:I = 0x124f80

.field private static final h:I = 0x1d4c0


# instance fields
.field private b:Landroid/location/Location;

.field private c:I

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 718
    new-instance v0, Lcn/domob/android/i/c$a;

    invoke-direct {v0}, Lcn/domob/android/i/c$a;-><init>()V

    sput-object v0, Lcn/domob/android/i/c$a;->a:Lcn/domob/android/i/c$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/android/i/c$a;->c:I

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/i/c$a;->d:Z

    .line 824
    return-void
.end method

.method static synthetic a(Lcn/domob/android/i/c$a;)I
    .registers 2

    .prologue
    .line 717
    invoke-direct {p0}, Lcn/domob/android/i/c$a;->d()I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;)Landroid/location/Location;
    .registers 12

    .prologue
    .line 747
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 748
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/android/i/c$a;->c:I

    .line 750
    if-nez v2, :cond_b

    .line 751
    const/4 v0, 0x0

    .line 783
    :goto_a
    return-object v0

    .line 753
    :cond_b
    :try_start_b
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v0}, Lcn/domob/android/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 754
    if-nez v3, :cond_1b

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v0}, Lcn/domob/android/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 755
    :cond_1b
    const-string v0, "location"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 756
    if-eqz v0, :cond_6f

    .line 757
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    .line 758
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 759
    :cond_2e
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 760
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 761
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 762
    if-eqz v1, :cond_2e

    iget-object v5, p0, Lcn/domob/android/i/c$a;->b:Landroid/location/Location;

    invoke-direct {p0, v1, v5}, Lcn/domob/android/i/c$a;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 763
    iput-object v1, p0, Lcn/domob/android/i/c$a;->b:Landroid/location/Location;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4a} :catch_4b

    goto :goto_2e

    .line 780
    :catch_4b
    move-exception v0

    .line 781
    invoke-static {}, Lcn/domob/android/i/c;->i()Lcn/domob/android/i/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 783
    :cond_53
    :goto_53
    iget-object v0, p0, Lcn/domob/android/i/c$a;->b:Landroid/location/Location;

    goto :goto_a

    .line 766
    :cond_56
    :try_start_56
    iget-object v1, p0, Lcn/domob/android/i/c$a;->b:Landroid/location/Location;

    if-eqz v1, :cond_6c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcn/domob/android/i/c$a;->b:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    add-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-lez v1, :cond_6f

    .line 767
    :cond_6c
    invoke-direct {p0, v0, v2}, Lcn/domob/android/i/c$a;->a(Landroid/location/LocationManager;Landroid/content/Context;)V

    .line 770
    :cond_6f
    iget-object v1, p0, Lcn/domob/android/i/c$a;->b:Landroid/location/Location;

    if-nez v1, :cond_53

    .line 771
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 772
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

    .line 774
    :cond_8b
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/i/c$a;->c:I

    goto :goto_53

    .line 778
    :cond_8f
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/android/i/c$a;->c:I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_92} :catch_4b

    goto :goto_53
.end method

.method static synthetic a(Lcn/domob/android/i/c$a;Landroid/content/Context;)Landroid/location/Location;
    .registers 3

    .prologue
    .line 717
    invoke-direct {p0, p1}, Lcn/domob/android/i/c$a;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Lcn/domob/android/i/c$a;
    .registers 1

    .prologue
    .line 717
    invoke-static {}, Lcn/domob/android/i/c$a;->b()Lcn/domob/android/i/c$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/location/Location;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 1007
    const/4 v0, 0x0

    .line 1008
    if-eqz p1, :cond_42

    .line 1009
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

    .line 1010
    invoke-static {}, Lcn/domob/android/i/c;->i()Lcn/domob/android/i/f;

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

    .line 1013
    :cond_42
    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/i/c$a;Landroid/location/Location;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 717
    invoke-direct {p0, p1}, Lcn/domob/android/i/c$a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Landroid/location/LocationManager;Landroid/content/Context;)V
    .registers 11

    .prologue
    .line 787
    monitor-enter p0

    if-nez p1, :cond_5

    .line 811
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 791
    :cond_5
    :try_start_5
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 792
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 793
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 794
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 795
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 797
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 798
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_27
    :goto_27
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 799
    new-instance v5, Lcn/domob/android/i/c$a$b;

    invoke-direct {v5, p0, p1}, Lcn/domob/android/i/c$a$b;-><init>(Lcn/domob/android/i/c$a;Landroid/location/LocationManager;)V

    .line 800
    invoke-static {}, Lcn/domob/android/i/c;->i()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start to listener position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 801
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 802
    const-string v0, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 803
    const v0, 0x124f80

    invoke-direct {p0, p1, v5, v0, v1}, Lcn/domob/android/i/c$a;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;ILjava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6b} :catch_6c
    .catchall {:try_start_5 .. :try_end_6b} :catchall_75

    goto :goto_27

    .line 808
    :catch_6c
    move-exception v0

    .line 809
    :try_start_6d
    invoke-static {}, Lcn/domob/android/i/c;->i()Lcn/domob/android/i/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_75

    goto :goto_3

    .line 787
    :catchall_75
    move-exception v0

    monitor-exit p0

    throw v0

    .line 804
    :cond_78
    :try_start_78
    const-string v0, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 805
    const v0, 0x1d4c0

    invoke-direct {p0, p1, v5, v0, v1}, Lcn/domob/android/i/c$a;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;ILjava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_86} :catch_6c
    .catchall {:try_start_78 .. :try_end_86} :catchall_75

    goto :goto_27
.end method

.method private a(Landroid/location/LocationManager;Landroid/location/LocationListener;ILjava/lang/String;)V
    .registers 9

    .prologue
    .line 814
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 815
    new-instance v1, Lcn/domob/android/i/c$a$1;

    invoke-direct {v1, p0, p1, p2, p4}, Lcn/domob/android/i/c$a$1;-><init>(Lcn/domob/android/i/c$a;Landroid/location/LocationManager;Landroid/location/LocationListener;Ljava/lang/String;)V

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 822
    return-void
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 15

    .prologue
    const-wide/32 v10, 0x927c0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 870
    if-nez p2, :cond_8

    .line 919
    :cond_7
    :goto_7
    return v1

    .line 875
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 876
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 877
    cmp-long v0, v4, v10

    if-gtz v0, :cond_22

    cmp-long v0, v6, v10

    if-gtz v0, :cond_7

    .line 880
    :cond_22
    cmp-long v0, v4, v10

    if-lez v0, :cond_2c

    cmp-long v0, v6, v10

    if-gtz v0, :cond_2c

    move v1, v2

    .line 881
    goto :goto_7

    .line 885
    :cond_2c
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 886
    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_52

    move v3, v1

    .line 887
    :goto_3d
    const-wide/32 v6, -0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_54

    move v0, v1

    .line 888
    :goto_45
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_56

    move v5, v1

    .line 893
    :goto_4c
    if-nez v3, :cond_7

    .line 897
    if-eqz v0, :cond_58

    move v1, v2

    .line 898
    goto :goto_7

    :cond_52
    move v3, v2

    .line 886
    goto :goto_3d

    :cond_54
    move v0, v2

    .line 887
    goto :goto_45

    :cond_56
    move v5, v2

    .line 888
    goto :goto_4c

    .line 902
    :cond_58
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 903
    if-lez v0, :cond_87

    move v4, v1

    .line 904
    :goto_65
    if-gez v0, :cond_89

    move v3, v1

    .line 905
    :goto_68
    const/16 v6, 0xc8

    if-le v0, v6, :cond_8b

    move v0, v1

    .line 908
    :goto_6d
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcn/domob/android/i/c$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 912
    if-nez v3, :cond_7

    .line 914
    if-eqz v5, :cond_7f

    if-eqz v4, :cond_7

    .line 916
    :cond_7f
    if-eqz v5, :cond_85

    if-nez v0, :cond_85

    if-nez v6, :cond_7

    :cond_85
    move v1, v2

    .line 919
    goto :goto_7

    :cond_87
    move v4, v2

    .line 903
    goto :goto_65

    :cond_89
    move v3, v2

    .line 904
    goto :goto_68

    :cond_8b
    move v0, v2

    .line 905
    goto :goto_6d
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 924
    if-nez p1, :cond_8

    .line 925
    if-nez p2, :cond_6

    .line 930
    :cond_5
    :goto_5
    return v0

    .line 925
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 927
    :cond_8
    if-eqz p2, :cond_5

    .line 928
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method static synthetic b(Lcn/domob/android/i/c$a;)I
    .registers 2

    .prologue
    .line 717
    invoke-direct {p0}, Lcn/domob/android/i/c$a;->c()I

    move-result v0

    return v0
.end method

.method private static b()Lcn/domob/android/i/c$a;
    .registers 1

    .prologue
    .line 743
    sget-object v0, Lcn/domob/android/i/c$a;->a:Lcn/domob/android/i/c$a;

    return-object v0
.end method

.method private c()I
    .registers 5

    .prologue
    .line 940
    iget-object v0, p0, Lcn/domob/android/i/c$a;->b:Landroid/location/Location;

    if-eqz v0, :cond_44

    .line 941
    iget-object v0, p0, Lcn/domob/android/i/c$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-static {}, Lcn/domob/android/i/c;->i()Lcn/domob/android/i/f;

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

    .line 943
    if-eqz v0, :cond_44

    .line 944
    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 945
    const/4 v0, 0x1

    .line 953
    :goto_2f
    return v0

    .line 946
    :cond_30
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 947
    const/4 v0, 0x0

    goto :goto_2f

    .line 948
    :cond_3a
    const-string v1, "passive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 949
    const/4 v0, 0x2

    goto :goto_2f

    .line 953
    :cond_44
    const/4 v0, 0x3

    goto :goto_2f
.end method

.method static synthetic c(Lcn/domob/android/i/c$a;)I
    .registers 2

    .prologue
    .line 717
    invoke-direct {p0}, Lcn/domob/android/i/c$a;->e()I

    move-result v0

    return v0
.end method

.method private d()I
    .registers 5

    .prologue
    .line 963
    iget-object v0, p0, Lcn/domob/android/i/c$a;->b:Landroid/location/Location;

    if-nez v0, :cond_26

    .line 964
    const/4 v0, 0x0

    .line 968
    :goto_5
    invoke-static {}, Lcn/domob/android/i/c;->i()Lcn/domob/android/i/f;

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

    .line 969
    return v0

    .line 966
    :cond_26
    iget-object v0, p0, Lcn/domob/android/i/c$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    goto :goto_5
.end method

.method static synthetic d(Lcn/domob/android/i/c$a;)J
    .registers 3

    .prologue
    .line 717
    invoke-direct {p0}, Lcn/domob/android/i/c$a;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method private e()I
    .registers 3

    .prologue
    .line 973
    iget v0, p0, Lcn/domob/android/i/c$a;->c:I

    packed-switch v0, :pswitch_data_26

    .line 986
    :goto_5
    iget v0, p0, Lcn/domob/android/i/c$a;->c:I

    return v0

    .line 975
    :pswitch_8
    invoke-static {}, Lcn/domob/android/i/c;->i()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Location can not be obtained due to USER_CLOSE"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_5

    .line 978
    :pswitch_12
    invoke-static {}, Lcn/domob/android/i/c;->i()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Location can not be obtained due to NO_PERSSION"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_5

    .line 981
    :pswitch_1c
    invoke-static {}, Lcn/domob/android/i/c;->i()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "Location can not be obtained due to NO_AVAILABLE_LOCATION"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_5

    .line 973
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_8
        :pswitch_12
        :pswitch_1c
    .end packed-switch
.end method

.method private f()J
    .registers 15

    .prologue
    const-wide/16 v12, 0x3c

    .line 990
    iget-object v0, p0, Lcn/domob/android/i/c$a;->b:Landroid/location/Location;

    if-eqz v0, :cond_3c

    .line 991
    iget-object v0, p0, Lcn/domob/android/i/c$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 992
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 993
    invoke-static {}, Lcn/domob/android/i/c;->i()Lcn/domob/android/i/f;

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

    .line 997
    :goto_3b
    return-wide v0

    :cond_3c
    const-wide/16 v0, 0x0

    goto :goto_3b
.end method
