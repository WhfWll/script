.class public Lcn/domob/android/ads/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# static fields
.field public static final b:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field final synthetic c:Lcn/domob/android/ads/j;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/j;Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 925
    iput-object p1, p0, Lcn/domob/android/ads/j$b;->c:Lcn/domob/android/ads/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    const-string v0, "#7f000000"

    iput-object v0, p0, Lcn/domob/android/ads/j$b;->a:Ljava/lang/String;

    .line 922
    iput-boolean v1, p0, Lcn/domob/android/ads/j$b;->d:Z

    .line 923
    const-string v0, "#7f000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/j$b;->e:I

    .line 926
    if-eqz p2, :cond_30

    .line 927
    const-string v0, "visible"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/j$b;->d:Z

    .line 928
    const-string v0, "color"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 930
    invoke-direct {p0, v0}, Lcn/domob/android/ads/j$b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/j$b;->e:I

    .line 933
    :cond_30
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 937
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 941
    :goto_4
    return v0

    .line 939
    :catch_5
    move-exception v0

    .line 940
    invoke-static {}, Lcn/domob/android/ads/j;->i()Lcn/domob/android/i/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 941
    const-string v0, "#7f000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_4
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 946
    iget-boolean v0, p0, Lcn/domob/android/ads/j$b;->d:Z

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 950
    iget v0, p0, Lcn/domob/android/ads/j$b;->e:I

    return v0
.end method
