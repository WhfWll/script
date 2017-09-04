.class Lcn/domob/android/ads/c/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/c/d;

.field private b:Z

.field private c:Lcn/domob/android/ads/c/d$b;


# direct methods
.method protected constructor <init>(Lcn/domob/android/ads/c/d;Lcn/domob/android/ads/c/d$b;)V
    .registers 4

    .prologue
    .line 115
    iput-object p1, p0, Lcn/domob/android/ads/c/d$a;->a:Lcn/domob/android/ads/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/c/d$a;->b:Z

    .line 116
    iput-object p2, p0, Lcn/domob/android/ads/c/d$a;->c:Lcn/domob/android/ads/c/d$b;

    .line 117
    return-void
.end method


# virtual methods
.method protected a(Lcn/domob/android/ads/c/d$b;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcn/domob/android/ads/c/d$a;->c:Lcn/domob/android/ads/c/d$b;

    .line 121
    return-void
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcn/domob/android/ads/c/d$a;->b:Z

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcn/domob/android/ads/c/d$a;->c:Lcn/domob/android/ads/c/d$b;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcn/domob/android/ads/c/d$a;->b:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public run()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcn/domob/android/ads/c/d$a;->c:Lcn/domob/android/ads/c/d$b;

    if-eqz v0, :cond_c

    .line 130
    iget-object v0, p0, Lcn/domob/android/ads/c/d$a;->c:Lcn/domob/android/ads/c/d$b;

    invoke-interface {v0}, Lcn/domob/android/ads/c/d$b;->a()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/c/d$a;->b:Z

    .line 133
    :cond_c
    return-void
.end method
