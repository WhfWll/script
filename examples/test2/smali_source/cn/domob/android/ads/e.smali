.class public Lcn/domob/android/ads/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/e$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/i/f;

.field private static b:Lcn/domob/android/ads/e;

.field private static d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcn/domob/android/ads/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    return-void
.end method

.method public static a()Lcn/domob/android/ads/e;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcn/domob/android/ads/e;->b:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_7

    .line 30
    sget-object v0, Lcn/domob/android/ads/e;->b:Lcn/domob/android/ads/e;

    .line 33
    :goto_6
    return-object v0

    .line 32
    :cond_7
    sget-object v0, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

    const-string v1, "ActionReceiver needs to be initialized first."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected static a(Landroid/content/Context;Lcn/domob/android/ads/e$a;)V
    .registers 5

    .prologue
    .line 43
    sget-object v0, Lcn/domob/android/ads/e;->b:Lcn/domob/android/ads/e;

    if-nez v0, :cond_2f

    .line 44
    new-instance v0, Lcn/domob/android/ads/e;

    invoke-direct {v0}, Lcn/domob/android/ads/e;-><init>()V

    sput-object v0, Lcn/domob/android/ads/e;->b:Lcn/domob/android/ads/e;

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/e;->b:Lcn/domob/android/ads/e;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    sget-object v0, Lcn/domob/android/ads/e;->b:Lcn/domob/android/ads/e;

    iput-object p1, v0, Lcn/domob/android/ads/e;->c:Lcn/domob/android/ads/e$a;

    .line 53
    sget-object v0, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

    const-string v1, "Finish to init action receiver."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 57
    :goto_2e
    return-void

    .line 55
    :cond_2f
    sget-object v0, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

    const-string v1, "Action receiver has already been initialized."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_2e
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/q;)V
    .registers 4

    .prologue
    .line 126
    sget-object v0, Lcn/domob/android/ads/e;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 127
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/ads/e;->d:Ljava/util/Hashtable;

    .line 130
    :cond_b
    invoke-virtual {p1}, Lcn/domob/android/ads/q;->c()Ljava/lang/String;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_17

    .line 134
    sget-object v1, Lcn/domob/android/ads/e;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :goto_16
    return-void

    .line 136
    :cond_17
    sget-object v0, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

    const-string v1, "There is no package name in ad response."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_16
.end method

.method protected a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 141
    sget-object v0, Lcn/domob/android/ads/e;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 142
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/ads/e;->d:Ljava/util/Hashtable;

    .line 145
    :cond_b
    sget-object v0, Lcn/domob/android/ads/e;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 146
    sget-object v0, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/e;->d:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcn/domob/android/ads/e;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :goto_36
    return-void

    .line 149
    :cond_37
    sget-object v0, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

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

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_36
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    :try_start_0
    sget-object v0, Lcn/domob/android/ads/e;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_5

    .line 123
    :cond_4
    :goto_4
    return-void

    .line 66
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, ""

    .line 68
    sget-object v2, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

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

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 70
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 72
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_ab

    move-result-object v0

    .line 74
    :try_start_39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_44} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_ab

    .line 82
    :try_start_44
    sget-object v0, Lcn/domob/android/ads/e;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 85
    iget-object v0, p0, Lcn/domob/android/ads/e;->c:Lcn/domob/android/ads/e$a;

    if-eqz v0, :cond_5d

    .line 86
    iget-object v1, p0, Lcn/domob/android/ads/e;->c:Lcn/domob/android/ads/e$a;

    sget-object v0, Lcn/domob/android/ads/e;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/q;

    invoke-interface {v1, v0}, Lcn/domob/android/ads/e$a;->a(Lcn/domob/android/ads/q;)V

    .line 89
    :cond_5d
    sget-object v0, Lcn/domob/android/ads/e;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/q;

    invoke-virtual {v0}, Lcn/domob/android/ads/q;->f()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 90
    sget-object v0, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto run the app:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_d3

    .line 95
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object v0, p0, Lcn/domob/android/ads/e;->c:Lcn/domob/android/ads/e$a;

    if-eqz v0, :cond_a6

    .line 99
    iget-object v1, p0, Lcn/domob/android/ads/e;->c:Lcn/domob/android/ads/e$a;

    sget-object v0, Lcn/domob/android/ads/e;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/q;

    invoke-interface {v1, v0}, Lcn/domob/android/ads/e$a;->b(Lcn/domob/android/ads/q;)V

    .line 115
    :cond_a6
    :goto_a6
    invoke-virtual {p0, v2}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_a9} :catch_ab

    goto/16 :goto_4

    .line 120
    :catch_ab
    move-exception v0

    .line 121
    sget-object v1, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 75
    :catch_b3
    move-exception v0

    .line 76
    :try_start_b4
    sget-object v2, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7cfb\u7edf\u65e0\u6cd5\u627e\u5230\u5305\u540d\u5bf9\u5e94App\uff0c\u8bf7\u786e\u8ba4\u8be5\u5305\u662f\u5426\u88ab\u5b89\u88c5 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 102
    :cond_d3
    sget-object v0, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7cfb\u7edf\u65e0\u6cd5\u627e\u5230\u5305\u540d\u5bf9\u5e94App\uff0c\u8bf7\u786e\u8ba4\u8be5\u5305\u662f\u5426\u88ab\u5b89\u88c5 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_a6

    .line 106
    :cond_ec
    sget-object v0, Lcn/domob/android/c/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 107
    if-eqz v0, :cond_a6

    .line 108
    sget-object v1, Lcn/domob/android/c/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_a6

    .line 117
    :cond_10b
    sget-object v0, Lcn/domob/android/ads/e;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8be5\u5305\u540d\u6ca1\u6709\u88ab\u6ce8\u518c\uff0c\u4e0d\u8fdb\u884creport : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_123} :catch_ab

    goto/16 :goto_4
.end method
