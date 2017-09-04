.class public Lcn/dbox/core/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/a/a$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "url"

.field private static final g:Ljava/lang/String; = "failsafe"

.field private static final h:Ljava/lang/String; = "pkg"

.field private static final i:Ljava/lang/String; = "activity"

.field private static final j:Ljava/lang/String; = "param"


# instance fields
.field a:Lcn/dbox/core/h/d;

.field b:Lcn/dbox/core/bean/a;

.field private c:Landroid/content/Context;

.field private d:Landroid/net/Uri;

.field private e:Lcn/dbox/core/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcn/dbox/core/a/a$a;Lcn/dbox/core/bean/a;)V
    .registers 7

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/dbox/core/a/a;->a:Lcn/dbox/core/h/d;

    .line 44
    iput-object p1, p0, Lcn/dbox/core/a/a;->c:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcn/dbox/core/a/a;->d:Landroid/net/Uri;

    .line 46
    iput-object p3, p0, Lcn/dbox/core/a/a;->e:Lcn/dbox/core/a/a$a;

    .line 47
    iput-object p4, p0, Lcn/dbox/core/a/a;->b:Lcn/dbox/core/bean/a;

    .line 48
    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 15

    .prologue
    const/4 v12, 0x2

    const/high16 v11, 0x10000000

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 91
    const/4 v2, 0x0

    .line 92
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    const-string v1, "param"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 96
    iget-object v1, p0, Lcn/dbox/core/a/a;->a:Lcn/dbox/core/h/d;

    const-string v7, "launch url: %s, pakName: %s, activityName: %s, queryParams: %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v3

    aput-object v4, v8, v10

    aput-object v5, v8, v12

    const/4 v9, 0x3

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 98
    if-eqz v0, :cond_96

    .line 101
    :try_start_37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_42} :catch_87

    .line 103
    const/high16 v0, 0x10000000

    :try_start_44
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_f8

    .line 128
    :cond_47
    :goto_47
    if-eqz v1, :cond_f7

    if-eqz v6, :cond_f7

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f7

    .line 129
    iget-object v0, p0, Lcn/dbox/core/a/a;->a:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QueryParams : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 130
    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 131
    array-length v4, v2

    move v0, v3

    :goto_73
    if-ge v0, v4, :cond_f7

    aget-object v5, v2, v0

    .line 132
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 133
    aget-object v6, v5, v3

    aget-object v5, v5, v10

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 104
    :catch_87
    move-exception v0

    move-object v1, v2

    .line 105
    :goto_89
    iget-object v2, p0, Lcn/dbox/core/a/a;->a:Lcn/dbox/core/h/d;

    const-string v4, "Error happened in decoding launchURL"

    invoke-virtual {v2, v4}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcn/dbox/core/a/a;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_47

    .line 109
    :cond_96
    if-eqz v4, :cond_ed

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    .line 110
    if-eqz v5, :cond_cd

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 111
    iget-object v0, p0, Lcn/dbox/core/a/a;->a:Lcn/dbox/core/h/d;

    const-string v1, "Launch app with pkgname:%s, activityname: %s"

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v4, v2, v3

    aput-object v5, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 113
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    invoke-virtual {v1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_47

    .line 116
    :cond_cd
    iget-object v0, p0, Lcn/dbox/core/a/a;->a:Lcn/dbox/core/h/d;

    const-string v1, "Launch app with pkgname:%s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcn/dbox/core/a/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_47

    .line 120
    invoke-virtual {v1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_47

    .line 124
    :cond_ed
    iget-object v0, p0, Lcn/dbox/core/a/a;->a:Lcn/dbox/core/h/d;

    const-string v1, "Package name is null or empty."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_47

    .line 137
    :cond_f7
    return-object v1

    .line 104
    :catch_f8
    move-exception v0

    goto :goto_89
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 51
    iget-object v0, p0, Lcn/dbox/core/a/a;->d:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcn/dbox/core/a/a;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 54
    if-nez v0, :cond_6d

    .line 55
    :try_start_8
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Action intent is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_10

    .line 62
    :catch_10
    move-exception v0

    .line 63
    iget-object v1, p0, Lcn/dbox/core/a/a;->a:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch app with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/dbox/core/a/a;->d:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcn/dbox/core/a/a;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 67
    iget-object v0, p0, Lcn/dbox/core/a/a;->d:Landroid/net/Uri;

    const-string v1, "failsafe"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcn/dbox/core/a/a;->e:Lcn/dbox/core/a/a$a;

    if-eqz v1, :cond_47

    .line 70
    iget-object v1, p0, Lcn/dbox/core/a/a;->e:Lcn/dbox/core/a/a$a;

    iget-object v2, p0, Lcn/dbox/core/a/a;->b:Lcn/dbox/core/bean/a;

    invoke-interface {v1, v0, v2}, Lcn/dbox/core/a/a$a;->a(Ljava/lang/String;Lcn/dbox/core/bean/a;)V

    .line 74
    :cond_47
    if-eqz v0, :cond_6c

    .line 77
    :try_start_49
    iget-object v1, p0, Lcn/dbox/core/a/a;->a:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup action ----- Open landing page with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcn/dbox/core/a/a;->e:Lcn/dbox/core/a/a$a;

    if-eqz v1, :cond_6c

    .line 80
    iget-object v1, p0, Lcn/dbox/core/a/a;->e:Lcn/dbox/core/a/a$a;

    iget-object v2, p0, Lcn/dbox/core/a/a;->b:Lcn/dbox/core/bean/a;

    invoke-interface {v1, v0, v2}, Lcn/dbox/core/a/a$a;->b(Ljava/lang/String;Lcn/dbox/core/bean/a;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6c} :catch_7e

    .line 88
    :cond_6c
    :goto_6c
    return-void

    .line 57
    :cond_6d
    :try_start_6d
    iget-object v1, p0, Lcn/dbox/core/a/a;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    iget-object v0, p0, Lcn/dbox/core/a/a;->e:Lcn/dbox/core/a/a$a;

    if-eqz v0, :cond_6c

    .line 60
    iget-object v0, p0, Lcn/dbox/core/a/a;->e:Lcn/dbox/core/a/a$a;

    iget-object v1, p0, Lcn/dbox/core/a/a;->b:Lcn/dbox/core/bean/a;

    invoke-interface {v0, v1}, Lcn/dbox/core/a/a$a;->b(Lcn/dbox/core/bean/a;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7d} :catch_10

    goto :goto_6c

    .line 82
    :catch_7e
    move-exception v0

    .line 83
    iget-object v1, p0, Lcn/dbox/core/a/a;->a:Lcn/dbox/core/h/d;

    const-string v2, "Invalid failsafe URL."

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcn/dbox/core/a/a;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_6c
.end method
