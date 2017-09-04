.class Lcn/domob/android/ads/b/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/b/m;->a(Lcn/domob/android/ads/b/m$b;Lcn/domob/android/ads/b/m$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/b/m;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/b/m;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcn/domob/android/ads/b/m$1;->a:Lcn/domob/android/ads/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 137
    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 132
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_7

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 129
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
