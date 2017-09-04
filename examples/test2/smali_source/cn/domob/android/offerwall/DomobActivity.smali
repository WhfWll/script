.class public Lcn/domob/android/offerwall/DomobActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final ACTIVITY_TYPE:Ljava/lang/String; = "DomobActivityType"

.field public static final EXPAND_BASE_URL:Ljava/lang/String; = "ex_base_url"

.field public static final EXPAND_CONTENT:Ljava/lang/String; = "ex_content"

.field public static final EXPAND_URL:Ljava/lang/String; = "ex_url"

.field public static final NOTICE_MESSAGE:Ljava/lang/String; = "msg"

.field public static final TYPE_DOWNLOADER:I = 0x2

.field public static final TYPE_EXPAND:I = 0x4

.field public static final TYPE_INSTALL_RECEIVER:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_NOTICE:I = 0x3

.field public static final TYPE_UPLOAD_PIC:I = 0x5

.field private static a:Lcn/domob/android/offerwall/m;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/offerwall/DomobActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/offerwall/DomobActivity;->a:Lcn/domob/android/offerwall/m;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p0, p0, Lcn/domob/android/offerwall/DomobActivity;->b:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/offerwall/DomobActivity;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/domob/android/offerwall/DomobActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 4

    invoke-virtual {p0}, Lcn/domob/android/offerwall/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Lcn/domob/android/offerwall/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/domob/android/offerwall/DomobActivity;->c:Ljava/lang/String;

    const-string v2, "actType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_69

    const-string v2, "typeCancel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/domob/android/offerwall/DomobActivity;->b:Landroid/content/Context;

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

    new-instance v2, Lcn/domob/android/offerwall/DomobActivity$2;

    invoke-direct {v2, p0}, Lcn/domob/android/offerwall/DomobActivity$2;-><init>(Lcn/domob/android/offerwall/DomobActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    new-instance v2, Lcn/domob/android/offerwall/DomobActivity$1;

    invoke-direct {v2, p0}, Lcn/domob/android/offerwall/DomobActivity$1;-><init>(Lcn/domob/android/offerwall/DomobActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_69
    return-void
.end method

.method private b()V
    .registers 4

    invoke-virtual {p0}, Lcn/domob/android/offerwall/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcn/domob/android/offerwall/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/domob/android/offerwall/DomobActivity;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcn/domob/android/offerwall/DomobActivity$3;

    invoke-direct {v2, p0}, Lcn/domob/android/offerwall/DomobActivity$3;-><init>(Lcn/domob/android/offerwall/DomobActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2d
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Lcn/domob/android/offerwall/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DomobActivityType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcn/domob/android/offerwall/DomobActivity;->a:Lcn/domob/android/offerwall/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_42

    invoke-virtual {p0}, Lcn/domob/android/offerwall/DomobActivity;->finish()V

    :goto_29
    return-void

    :pswitch_2a
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcn/domob/android/offerwall/DomobActivity;->a()V

    goto :goto_29

    :pswitch_31
    const v0, 0x103000b

    invoke-virtual {p0, v0}, Lcn/domob/android/offerwall/DomobActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_29

    :pswitch_3b
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcn/domob/android/offerwall/DomobActivity;->b()V

    goto :goto_29

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2a
        :pswitch_3b
    .end packed-switch
.end method
