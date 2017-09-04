.class Lcn/domob/android/ads/J$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/J;->a(Landroid/content/Context;Lcn/domob/android/ads/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/J;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/J;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcn/domob/android/ads/J$1;->a:Lcn/domob/android/ads/J;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcn/domob/android/ads/J$1;->a:Lcn/domob/android/ads/J;

    invoke-static {v0}, Lcn/domob/android/ads/J;->a(Lcn/domob/android/ads/J;)V

    .line 85
    return-void
.end method
