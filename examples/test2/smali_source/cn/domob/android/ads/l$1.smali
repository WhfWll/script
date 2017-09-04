.class Lcn/domob/android/ads/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/l;->a(Landroid/content/Context;Lcn/domob/android/ads/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/n;

.field final synthetic b:Lcn/domob/android/ads/l;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/l;Lcn/domob/android/ads/n;)V
    .registers 3

    .prologue
    .line 40
    iput-object p1, p0, Lcn/domob/android/ads/l$1;->b:Lcn/domob/android/ads/l;

    iput-object p2, p0, Lcn/domob/android/ads/l$1;->a:Lcn/domob/android/ads/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcn/domob/android/ads/l$1;->a:Lcn/domob/android/ads/n;

    invoke-virtual {v0}, Lcn/domob/android/ads/n;->a()V

    .line 45
    return-void
.end method
