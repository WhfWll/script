.class public Lcn/dbox/core/d/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/d/a$a;
    }
.end annotation


# static fields
.field private static a:Lcn/dbox/core/h/d;

.field private static b:Lcn/dbox/core/d/a;

.field private static d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcn/dbox/core/d/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/d/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/d/a;->a:Lcn/dbox/core/h/d;

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

.method public static a()Lcn/dbox/core/d/a;
    .registers 2

    .prologue
    .line 30
    sget-object v0, Lcn/dbox/core/d/a;->b:Lcn/dbox/core/d/a;

    if-eqz v0, :cond_7

    .line 31
    sget-object v0, Lcn/dbox/core/d/a;->b:Lcn/dbox/core/d/a;

    .line 34
    :goto_6
    return-object v0

    .line 33
    :cond_7
    sget-object v0, Lcn/dbox/core/d/a;->a:Lcn/dbox/core/h/d;

    const-string v1, "ActionReceiver needs to be initialized first."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;Lcn/dbox/core/d/a$a;)V
    .registers 5

    .prologue
    .line 45
    sget-object v0, Lcn/dbox/core/d/a;->b:Lcn/dbox/core/d/a;

    if-nez v0, :cond_2f

    .line 46
    new-instance v0, Lcn/dbox/core/d/a;

    invoke-direct {v0}, Lcn/dbox/core/d/a;-><init>()V

    sput-object v0, Lcn/dbox/core/d/a;->b:Lcn/dbox/core/d/a;

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

    sget-object v2, Lcn/dbox/core/d/a;->b:Lcn/dbox/core/d/a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    sget-object v0, Lcn/dbox/core/d/a;->b:Lcn/dbox/core/d/a;

    iput-object p1, v0, Lcn/dbox/core/d/a;->c:Lcn/dbox/core/d/a$a;

    .line 56
    sget-object v0, Lcn/dbox/core/d/a;->a:Lcn/dbox/core/h/d;

    const-string v1, "Finish to init action receiver."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 60
    :goto_2e
    return-void

    .line 58
    :cond_2f
    sget-object v0, Lcn/dbox/core/d/a;->a:Lcn/dbox/core/h/d;

    const-string v1, "Action receiver has already been initialized."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    goto :goto_2e
.end method


# virtual methods
.method public a(Lcn/dbox/core/bean/a;)V
    .registers 4

    .prologue
    .line 136
    sget-object v0, Lcn/dbox/core/d/a;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 137
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/dbox/core/d/a;->d:Ljava/util/Hashtable;

    .line 142
    :cond_b
    invoke-virtual {p1}, Lcn/dbox/core/bean/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_17

    .line 146
    sget-object v1, Lcn/dbox/core/d/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :goto_16
    return-void

    .line 148
    :cond_17
    sget-object v0, Lcn/dbox/core/d/a;->a:Lcn/dbox/core/h/d;

    const-string v1, "There is no package name in ad response."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_16
.end method

.method protected a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 153
    sget-object v0, Lcn/dbox/core/d/a;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 154
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/dbox/core/d/a;->d:Ljava/util/Hashtable;

    .line 157
    :cond_b
    sget-object v0, Lcn/dbox/core/d/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 158
    sget-object v0, Lcn/dbox/core/d/a;->a:Lcn/dbox/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/dbox/core/d/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcn/dbox/core/d/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :goto_36
    return-void

    .line 161
    :cond_37
    sget-object v0, Lcn/dbox/core/d/a;->a:Lcn/dbox/core/h/d;

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

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_36
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    :try_start_0
    sget-object v0, Lcn/dbox/core/d/a;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_5

    .line 133
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
    sget-object v2, Lcn/dbox/core/d/a;->a:Lcn/dbox/core/h/d;

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

    invoke-virtual {v2, v3}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_9d

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
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_44} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_9d

    .line 90
    :try_start_44
    iget-object v0, p0, Lcn/dbox/core/d/a;->c:Lcn/dbox/core/d/a$a;

    if-eqz v0, :cond_55

    .line 91
    iget-object v1, p0, Lcn/dbox/core/d/a;->c:Lcn/dbox/core/d/a$a;

    sget-object v0, Lcn/dbox/core/d/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-interface {v1, v0}, Lcn/dbox/core/d/a$a;->n(Lcn/dbox/core/bean/a;)V

    .line 94
    :cond_55
    sget-object v0, Lcn/dbox/core/d/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_de

    .line 95
    sget-object v0, Lcn/dbox/core/d/a;->a:Lcn/dbox/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto run the app:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_c5

    .line 101
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    iget-object v0, p0, Lcn/dbox/core/d/a;->c:Lcn/dbox/core/d/a$a;

    if-eqz v0, :cond_98

    .line 106
    iget-object v1, p0, Lcn/dbox/core/d/a;->c:Lcn/dbox/core/d/a$a;

    sget-object v0, Lcn/dbox/core/d/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-interface {v1, v0}, Lcn/dbox/core/d/a$a;->o(Lcn/dbox/core/bean/a;)V

    .line 125
    :cond_98
    :goto_98
    invoke-virtual {p0, v2}, Lcn/dbox/core/d/a;->a(Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_9b} :catch_9d

    goto/16 :goto_4

    .line 130
    :catch_9d
    move-exception v0

    .line 131
    sget-object v1, Lcn/dbox/core/d/a;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 79
    :catch_a5
    move-exception v0

    .line 80
    :try_start_a6
    sget-object v2, Lcn/dbox/core/d/a;->a:Lcn/dbox/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7cfb\u7edf\u65e0\u6cd5\u627e\u5230\u5305\u540d\u5bf9\u5e94App\uff0c\u8bf7\u786e\u8ba4\u8be5\u5305\u662f\u5426\u88ab\u5b89\u88c5 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcn/dbox/core/d/a;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 110
    :cond_c5
    sget-object v0, Lcn/dbox/core/d/a;->a:Lcn/dbox/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7cfb\u7edf\u65e0\u6cd5\u627e\u5230\u5305\u540d\u5bf9\u5e94App\uff0c\u8bf7\u786e\u8ba4\u8be5\u5305\u662f\u5426\u88ab\u5b89\u88c5 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_98

    .line 115
    :cond_de
    sget-object v0, Lcn/dbox/core/d/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 117
    if-eqz v0, :cond_98

    .line 118
    sget-object v1, Lcn/dbox/core/d/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 121
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_fc} :catch_9d

    goto :goto_98
.end method
