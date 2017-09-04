.class Lcn/domob/android/ads/G$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/c/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/G;->a(J)Lcn/domob/android/ads/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcn/domob/android/ads/G;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/G;J)V
    .registers 4

    .prologue
    .line 77
    iput-object p1, p0, Lcn/domob/android/ads/G$1;->b:Lcn/domob/android/ads/G;

    iput-wide p2, p0, Lcn/domob/android/ads/G$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 79
    iget-object v0, p0, Lcn/domob/android/ads/G$1;->b:Lcn/domob/android/ads/G;

    const-string v1, "m"

    iget-wide v2, p0, Lcn/domob/android/ads/G$1;->a:J

    invoke-static {v0, v1, v2, v3}, Lcn/domob/android/ads/G;->a(Lcn/domob/android/ads/G;Ljava/lang/String;J)V

    .line 80
    return-void
.end method
