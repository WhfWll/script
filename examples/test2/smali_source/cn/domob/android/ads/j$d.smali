.class public Lcn/domob/android/ads/j$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/j;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/j;Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 804
    iput-object p1, p0, Lcn/domob/android/ads/j$d;->a:Lcn/domob/android/ads/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    if-eqz p2, :cond_19

    .line 806
    const-string v0, "code"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/j$d;->b:I

    .line 807
    const-string v0, "text"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/j$d;->c:Ljava/lang/String;

    .line 809
    :cond_19
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 815
    iget v0, p0, Lcn/domob/android/ads/j$d;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, Lcn/domob/android/ads/j$d;->c:Ljava/lang/String;

    return-object v0
.end method
