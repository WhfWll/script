.class public Lcn/domob/wall/core/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/wall/core/h/d; = null

.field private static final e:Ljava/lang/String; = "error"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcn/domob/wall/core/bean/a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/c/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/c/f;->a:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/c/f;->f:Ljava/util/List;

    .line 43
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 54
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 56
    const-string v1, "sid"

    const-string v2, ""

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/wall/core/c/f;->b:Ljava/lang/String;

    .line 60
    const-string v1, "cid"

    const-string v2, ""

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/wall/core/c/f;->c:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcn/domob/wall/core/c/f;->c:Ljava/lang/String;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcn/domob/wall/core/c/f;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 64
    invoke-static {}, Lcn/domob/wall/core/c/h;->a()Lcn/domob/wall/core/c/h;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/wall/core/c/f;->c:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcn/domob/wall/core/c/h;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_88

    .line 68
    :cond_36
    const/4 v2, 0x0

    .line 70
    :try_start_37
    new-instance v1, Lorg/json/JSONArray;

    const-string v3, "hotword"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_42} :catch_75
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_42} :catch_88

    move-object v3, v1

    .line 76
    :goto_43
    if-eqz v3, :cond_8f

    move v2, v0

    .line 77
    :goto_46
    :try_start_46
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_88

    move-result v1

    if-ge v2, v1, :cond_96

    .line 79
    :try_start_4c
    sget-object v1, Lcn/domob/wall/core/c/f;->a:Lcn/domob/wall/core/h/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hotword:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcn/domob/wall/core/c/f;->f:Ljava/util/List;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_71} :catch_81
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_71} :catch_88

    .line 77
    :goto_71
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_46

    .line 73
    :catch_75
    move-exception v1

    .line 74
    :try_start_76
    sget-object v3, Lcn/domob/wall/core/c/f;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_43

    .line 81
    :catch_81
    move-exception v1

    .line 82
    sget-object v5, Lcn/domob/wall/core/c/f;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v5, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_87} :catch_88

    goto :goto_71

    .line 98
    :catch_88
    move-exception v1

    .line 99
    sget-object v2, Lcn/domob/wall/core/c/f;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 101
    :goto_8e
    return v0

    .line 87
    :cond_8f
    :try_start_8f
    sget-object v1, Lcn/domob/wall/core/c/f;->a:Lcn/domob/wall/core/h/d;

    const-string v2, "Screenshot of the page with details of the ad is empty"

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->d(Ljava/lang/String;)V

    .line 91
    :cond_96
    const-string v1, "error"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_a5

    .line 95
    new-instance v2, Lcn/domob/wall/core/bean/a;

    invoke-direct {v2, v1}, Lcn/domob/wall/core/bean/a;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcn/domob/wall/core/c/f;->d:Lcn/domob/wall/core/bean/a;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a5} :catch_88

    .line 97
    :cond_a5
    const/4 v0, 0x1

    goto :goto_8e
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/wall/core/c/f;
    .registers 6

    .prologue
    .line 31
    new-instance v0, Lcn/domob/wall/core/c/f;

    invoke-direct {v0}, Lcn/domob/wall/core/c/f;-><init>()V

    .line 33
    invoke-direct {v0, p1, p2}, Lcn/domob/wall/core/c/f;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 34
    sget-object v1, Lcn/domob/wall/core/c/f;->a:Lcn/domob/wall/core/h/d;

    const-string v2, "Ad/Error response is ok."

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 38
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcn/domob/wall/core/c/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Lcn/domob/wall/core/bean/a;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcn/domob/wall/core/c/f;->d:Lcn/domob/wall/core/bean/a;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcn/domob/wall/core/c/f;->f:Ljava/util/List;

    return-object v0
.end method
