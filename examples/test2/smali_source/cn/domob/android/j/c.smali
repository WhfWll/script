.class public Lcn/domob/android/j/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/j/c$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/i/f;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/IntentFilter;

.field private d:Lcn/domob/android/j/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/j/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/j/c;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/j/c$a;)V
    .registers 5

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/c;->b:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcn/domob/android/j/c;->c:Landroid/content/IntentFilter;

    .line 27
    iget-object v0, p0, Lcn/domob/android/j/c;->c:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcn/domob/android/j/c;->c:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcn/domob/android/j/c;->d:Lcn/domob/android/j/c$a;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/j/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 46
    iget-object v0, p0, Lcn/domob/android/j/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/j/c;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    :cond_b
    return-void
.end method

.method public a(Lcn/domob/android/j/c$a;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcn/domob/android/j/c;->d:Lcn/domob/android/j/c$a;

    .line 39
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcn/domob/android/j/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 55
    iget-object v0, p0, Lcn/domob/android/j/c;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    :cond_9
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcn/domob/android/j/c;->d:Lcn/domob/android/j/c$a;

    if-eqz v1, :cond_22

    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 63
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 64
    sget-object v0, Lcn/domob/android/j/c;->a:Lcn/domob/android/i/f;

    const-string v1, "screen off"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcn/domob/android/j/c;->d:Lcn/domob/android/j/c$a;

    invoke-interface {v0}, Lcn/domob/android/j/c$a;->b()V

    .line 71
    :cond_22
    :goto_22
    return-void

    .line 66
    :cond_23
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 67
    sget-object v0, Lcn/domob/android/j/c;->a:Lcn/domob/android/i/f;

    const-string v1, "screen on"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcn/domob/android/j/c;->d:Lcn/domob/android/j/c$a;

    invoke-interface {v0}, Lcn/domob/android/j/c$a;->a()V

    goto :goto_22
.end method
