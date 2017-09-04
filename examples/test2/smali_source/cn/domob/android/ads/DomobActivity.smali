.class public Lcn/domob/android/ads/DomobActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final ACTIVITY_TYPE:Ljava/lang/String; = "DomobActivityType"

.field public static final NOTICE_MESSAGE:Ljava/lang/String; = "msg"

.field public static final TYPE_DOWNLOADER:I = 0x2

.field public static final TYPE_INSTALL_RECEIVER:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_NOTICE:I = 0x3

.field public static final TYPE_SHOW_WEBVIEW:I = 0x5

.field public static final TYPE_UPLOAD_PIC:I = 0x4

.field public static final WEBVIEW_URL_NAME:Ljava/lang/String; = "webview_url"

.field private static a:Lcn/domob/android/i/f;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcn/domob/android/ads/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/DomobActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/DomobActivity;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    iput-object p0, p0, Lcn/domob/android/ads/DomobActivity;->b:Landroid/content/Context;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/DomobActivity;->c:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobActivity;->d:Lcn/domob/android/ads/a/b;

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 76
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_69

    .line 78
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    const-string v1, "appName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v2, "appId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/domob/android/ads/DomobActivity;->c:Ljava/lang/String;

    .line 82
    const-string v2, "actType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_69

    .line 85
    const-string v2, "typeCancel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/domob/android/ads/DomobActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\u662f\u5426\u53d6\u6d88?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u4e0b\u8f7d"

    new-instance v2, Lcn/domob/android/ads/DomobActivity$2;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobActivity$2;-><init>(Lcn/domob/android/ads/DomobActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    new-instance v2, Lcn/domob/android/ads/DomobActivity$1;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobActivity$1;-><init>(Lcn/domob/android/ads/DomobActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 107
    :cond_69
    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 110
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_2d

    .line 112
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/domob/android/ads/DomobActivity;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcn/domob/android/ads/DomobActivity$3;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobActivity$3;-><init>(Lcn/domob/android/ads/DomobActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 122
    :cond_2d
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity;->d:Lcn/domob/android/ads/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcn/domob/android/ads/a/b;->a(IILandroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_d

    .line 136
    :goto_5
    return-void

    .line 130
    :catch_6
    move-exception v0

    .line 131
    sget-object v1, Lcn/domob/android/ads/DomobActivity;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 133
    :catch_d
    move-exception v0

    .line 134
    sget-object v1, Lcn/domob/android/ads/DomobActivity;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    const-string v1, "DomobActivityType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 46
    sget-object v1, Lcn/domob/android/ads/DomobActivity;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent activity type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcn/domob/android/ads/a/b;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/b;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcn/domob/android/ads/DomobActivity;->d:Lcn/domob/android/ads/a/b;

    .line 48
    packed-switch v0, :pswitch_data_52

    .line 70
    :pswitch_2d
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->finish()V

    .line 73
    :goto_30
    return-void

    .line 52
    :pswitch_31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcn/domob/android/ads/DomobActivity;->a()V

    goto :goto_30

    .line 56
    :pswitch_38
    const v0, 0x103000b

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobActivity;->setTheme(I)V

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_30

    .line 61
    :pswitch_42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lcn/domob/android/ads/DomobActivity;->b()V

    goto :goto_30

    .line 65
    :pswitch_49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity;->d:Lcn/domob/android/ads/a/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/a/b;->a()V

    goto :goto_30

    .line 48
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_38
        :pswitch_31
        :pswitch_42
        :pswitch_2d
        :pswitch_49
    .end packed-switch
.end method
