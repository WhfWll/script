.class Lcn/domob/android/ads/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/g;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/g;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcn/domob/android/ads/g$b;->a:Lcn/domob/android/ads/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcn/domob/android/ads/g$b;->a:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->l()V

    .line 191
    return-void
.end method
