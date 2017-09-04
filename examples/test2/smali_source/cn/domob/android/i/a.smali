.class public Lcn/domob/android/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/i/f;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/i/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/i/a;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 57
    sget-object v0, Lcn/domob/android/i/a;->b:Ljava/lang/String;

    if-nez v0, :cond_29

    .line 58
    invoke-static {p0}, Lcn/domob/android/i/a;->f(Landroid/content/Context;)V

    .line 59
    sget-object v0, Lcn/domob/android/i/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 60
    sget-object v0, Lcn/domob/android/i/a;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/domob/android/i/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->c(Ljava/lang/String;)V

    .line 64
    :cond_29
    sget-object v0, Lcn/domob/android/i/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 118
    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_9

    move-result v1

    if-ne v0, v1, :cond_f

    .line 119
    const/4 v0, 0x0

    .line 124
    :goto_8
    return v0

    .line 121
    :catch_9
    move-exception v0

    .line 122
    sget-object v1, Lcn/domob/android/i/a;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 124
    :cond_f
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;Z)Z
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 136
    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u7f3a\u5c11\u6743\u9650\uff1a\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v1

    move v2, v1

    .line 138
    :goto_20
    array-length v4, p1

    if-ge v0, v4, :cond_7f

    .line 139
    aget-object v6, p1, v0

    .line 141
    invoke-static {v6}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_91

    .line 142
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 143
    const/4 v4, 0x3

    invoke-static {v4, v1}, Lcn/domob/android/i/c;->a(IZ)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 144
    invoke-static {p0, v6}, Lcn/domob/android/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 154
    :goto_3e
    if-nez v4, :cond_68

    .line 155
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "you must have %s permission !"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 138
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 146
    :cond_6b
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 147
    if-eqz p2, :cond_91

    .line 148
    invoke-static {p0, v6}, Lcn/domob/android/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    goto :goto_3e

    .line 151
    :cond_7a
    invoke-static {p0, v6}, Lcn/domob/android/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    goto :goto_3e

    .line 160
    :cond_7f
    if-eqz v2, :cond_8c

    .line 161
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcn/domob/android/i/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_8c
    if-nez v2, :cond_8f

    :goto_8e
    return v3

    :cond_8f
    move v3, v1

    goto :goto_8e

    :cond_91
    move v4, v3

    goto :goto_3e
.end method

.method protected static b(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 74
    sget-object v0, Lcn/domob/android/i/a;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 75
    invoke-static {p0}, Lcn/domob/android/i/a;->f(Landroid/content/Context;)V

    .line 78
    :cond_7
    sget v0, Lcn/domob/android/i/a;->c:I

    return v0
.end method

.method protected static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    sget-object v0, Lcn/domob/android/i/a;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 89
    invoke-static {p0}, Lcn/domob/android/i/a;->f(Landroid/content/Context;)V

    .line 92
    :cond_7
    sget-object v0, Lcn/domob/android/i/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    sget-object v0, Lcn/domob/android/i/a;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 103
    invoke-static {p0}, Lcn/domob/android/i/a;->f(Landroid/content/Context;)V

    .line 106
    :cond_7
    sget-object v0, Lcn/domob/android/i/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 173
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 174
    sget-object v0, Lcn/domob/android/i/a;->a:Lcn/domob/android/i/f;

    const-string v1, "access wifi state is enabled"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->c(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x1

    .line 177
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static f(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 24
    sget-object v0, Lcn/domob/android/i/a;->a:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/i/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start to get app info."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 30
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcn/domob/android/i/a;->b:Ljava/lang/String;

    .line 31
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcn/domob/android/i/a;->c:I

    .line 32
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcn/domob/android/i/a;->d:Ljava/lang/String;

    .line 35
    :cond_2a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_46

    .line 37
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 38
    if-eqz v1, :cond_47

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/i/a;->e:Ljava/lang/String;

    .line 48
    :cond_46
    :goto_46
    return-void

    .line 41
    :cond_47
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_63

    const/4 v0, 0x0

    :goto_4c
    sput-object v0, Lcn/domob/android/i/a;->e:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4e} :catch_4f

    goto :goto_46

    .line 44
    :catch_4f
    move-exception v0

    .line 45
    sget-object v1, Lcn/domob/android/i/a;->a:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/i/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed in getting app info."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcn/domob/android/i/a;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_46

    .line 41
    :cond_63
    :try_start_63
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_4f

    move-result-object v0

    goto :goto_4c
.end method
