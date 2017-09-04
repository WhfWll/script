.class public Lcn/domob/android/a/a/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/a/a/b$a;
    }
.end annotation


# static fields
.field private static final a:Lcn/domob/android/i/f;


# instance fields
.field private b:Lcn/domob/android/a/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/a/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/a/a/b;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/a/a/b$a;)V
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcn/domob/android/a/a/b;->b:Lcn/domob/android/a/a/b$a;

    .line 21
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 61
    sget-object v0, Lcn/domob/android/a/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, " DetachedFromWindow"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 38
    sget-object v0, Lcn/domob/android/a/a/b;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WindowFocusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 7
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 52
    iget-object v0, p0, Lcn/domob/android/a/a/b;->b:Lcn/domob/android/a/a/b$a;

    if-eqz v0, :cond_11

    .line 53
    iget-object v3, p0, Lcn/domob/android/a/a/b;->b:Lcn/domob/android/a/a/b$a;

    if-nez p1, :cond_2c

    move v0, v1

    :goto_e
    invoke-interface {v3, v0}, Lcn/domob/android/a/a/b$a;->a(Z)V

    .line 55
    :cond_11
    sget-object v0, Lcn/domob/android/a/a/b;->a:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " WindowVisibilityChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_2e

    :goto_20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 56
    return-void

    :cond_2c
    move v0, v2

    .line 53
    goto :goto_e

    :cond_2e
    move v1, v2

    .line 55
    goto :goto_20
.end method
