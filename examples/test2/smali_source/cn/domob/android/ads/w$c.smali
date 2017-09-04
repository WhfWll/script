.class public Lcn/domob/android/ads/w$c;
.super Lcn/domob/android/ads/w$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field final synthetic k:Lcn/domob/android/ads/w;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/w;)V
    .registers 3

    .prologue
    .line 144
    iput-object p1, p0, Lcn/domob/android/ads/w$c;->k:Lcn/domob/android/ads/w;

    invoke-direct {p0, p1}, Lcn/domob/android/ads/w$a;-><init>(Lcn/domob/android/ads/w;)V

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/android/ads/w$c;->e:I

    return-void
.end method
