.class public Lcn/domob/wall/core/download/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/download/a$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/wall/core/h/d;

.field private static b:Lcn/domob/wall/core/download/a;

.field private static d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcn/domob/wall/core/download/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/download/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    return-void
.end method

.method public static a()Lcn/domob/wall/core/download/a;
    .registers 2

    .prologue
    .line 30
    sget-object v0, Lcn/domob/wall/core/download/a;->b:Lcn/domob/wall/core/download/a;

    if-eqz v0, :cond_7

    .line 31
    sget-object v0, Lcn/domob/wall/core/download/a;->b:Lcn/domob/wall/core/download/a;

    .line 34
    :goto_6
    return-object v0

    .line 33
    :cond_7
    sget-object v0, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "ActionReceiver needs to be initialized first."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;Lcn/domob/wall/core/download/a$a;)V
    .registers 5

    .prologue
    .line 45
    sget-object v0, Lcn/domob/wall/core/download/a;->b:Lcn/domob/wall/core/download/a;

    if-nez v0, :cond_2f

    .line 46
    new-instance v0, Lcn/domob/wall/core/download/a;

    invoke-direct {v0}, Lcn/domob/wall/core/download/a;-><init>()V

    sput-object v0, Lcn/domob/wall/core/download/a;->b:Lcn/domob/wall/core/download/a;

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/domob/wall/core/download/a;->b:Lcn/domob/wall/core/download/a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    sget-object v0, Lcn/domob/wall/core/download/a;->b:Lcn/domob/wall/core/download/a;

    iput-object p1, v0, Lcn/domob/wall/core/download/a;->c:Lcn/domob/wall/core/download/a$a;

    .line 56
    sget-object v0, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "Finish to init action receiver."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 60
    :goto_2e
    return-void

    .line 58
    :cond_2f
    sget-object v0, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "Action receiver has already been initialized."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    goto :goto_2e
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 4

    .prologue
    .line 135
    sget-object v0, Lcn/domob/wall/core/download/a;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 136
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/wall/core/download/a;->d:Ljava/util/Hashtable;

    .line 139
    :cond_b
    invoke-virtual {p1}, Lcn/domob/wall/core/bean/AdInfo;->getAdPackageName()Ljava/lang/String;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_17

    .line 142
    sget-object v1, Lcn/domob/wall/core/download/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :goto_16
    return-void

    .line 144
    :cond_17
    sget-object v0, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    const-string v1, "There is no package name in ad response."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_16
.end method

.method protected a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 149
    sget-object v0, Lcn/domob/wall/core/download/a;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 150
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/wall/core/download/a;->d:Ljava/util/Hashtable;

    .line 153
    :cond_b
    sget-object v0, Lcn/domob/wall/core/download/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 154
    sget-object v0, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/domob/wall/core/download/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcn/domob/wall/core/download/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :goto_36
    return-void

    .line 157
    :cond_37
    sget-object v0, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no key like "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in regPkgTalbe."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_36
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    :try_start_0
    sget-object v0, Lcn/domob/wall/core/download/a;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_5

    .line 132
    :cond_4
    :goto_4
    return-void

    .line 69
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, ""

    .line 71
    sget-object v2, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 73
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 75
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_a5

    move-result-object v0

    .line 77
    :try_start_39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_44} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_a5

    .line 86
    :try_start_44
    sget-object v0, Lcn/domob/wall/core/download/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 89
    iget-object v0, p0, Lcn/domob/wall/core/download/a;->c:Lcn/domob/wall/core/download/a$a;

    if-eqz v0, :cond_5d

    .line 90
    iget-object v1, p0, Lcn/domob/wall/core/download/a;->c:Lcn/domob/wall/core/download/a$a;

    sget-object v0, Lcn/domob/wall/core/download/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    invoke-interface {v1, v0}, Lcn/domob/wall/core/download/a$a;->t(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 93
    :cond_5d
    sget-object v0, Lcn/domob/wall/core/download/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e6

    .line 94
    sget-object v0, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto run the app:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_cd

    .line 100
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    iget-object v0, p0, Lcn/domob/wall/core/download/a;->c:Lcn/domob/wall/core/download/a$a;

    if-eqz v0, :cond_a0

    .line 105
    iget-object v1, p0, Lcn/domob/wall/core/download/a;->c:Lcn/domob/wall/core/download/a$a;

    sget-object v0, Lcn/domob/wall/core/download/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    invoke-interface {v1, v0}, Lcn/domob/wall/core/download/a$a;->u(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 124
    :cond_a0
    :goto_a0
    invoke-virtual {p0, v2}, Lcn/domob/wall/core/download/a;->a(Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_a3} :catch_a5

    goto/16 :goto_4

    .line 129
    :catch_a5
    move-exception v0

    .line 130
    sget-object v1, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 79
    :catch_ad
    move-exception v0

    .line 80
    :try_start_ae
    sget-object v2, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7cfb\u7edf\u65e0\u6cd5\u627e\u5230\u5305\u540d\u5bf9\u5e94App\uff0c\u8bf7\u786e\u8ba4\u8be5\u5305\u662f\u5426\u88ab\u5b89\u88c5 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 109
    :cond_cd
    sget-object v0, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7cfb\u7edf\u65e0\u6cd5\u627e\u5230\u5305\u540d\u5bf9\u5e94App\uff0c\u8bf7\u786e\u8ba4\u8be5\u5305\u662f\u5426\u88ab\u5b89\u88c5 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_a0

    .line 114
    :cond_e6
    sget-object v0, Lcn/domob/wall/core/download/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 116
    if-eqz v0, :cond_a0

    .line 117
    sget-object v1, Lcn/domob/wall/core/download/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_a0

    .line 126
    :cond_105
    sget-object v0, Lcn/domob/wall/core/download/a;->a:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8be5\u5305\u540d\u6ca1\u6709\u88ab\u6ce8\u518c\uff0c\u4e0d\u8fdb\u884creport : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_11d} :catch_a5

    goto/16 :goto_4
.end method
