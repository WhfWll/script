.class public Lcn/domob/android/ads/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field final synthetic c:Lcn/domob/android/ads/w;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/w;)V
    .registers 3

    .prologue
    .line 123
    iput-object p1, p0, Lcn/domob/android/ads/w$a;->c:Lcn/domob/android/ads/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v0, "s"

    iput-object v0, p0, Lcn/domob/android/ads/w$a;->b:Ljava/lang/String;

    return-void
.end method
