.class public Lcn/dbox/ui/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/d/d$a;
    }
.end annotation


# instance fields
.field a:Lcn/dbox/ui/d/d$a;


# direct methods
.method public constructor <init>(Lcn/dbox/ui/d/d$a;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/dbox/ui/d/d;->a:Lcn/dbox/ui/d/d$a;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcn/dbox/ui/d/d$a;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcn/dbox/ui/d/d;->a:Lcn/dbox/ui/d/d$a;

    .line 26
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 31
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 35
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcn/dbox/ui/d/d;->a:Lcn/dbox/ui/d/d$a;

    if-eqz v0, :cond_9

    .line 40
    iget-object v0, p0, Lcn/dbox/ui/d/d;->a:Lcn/dbox/ui/d/d$a;

    invoke-interface {v0, p1}, Lcn/dbox/ui/d/d$a;->a(I)V

    .line 42
    :cond_9
    return-void
.end method
