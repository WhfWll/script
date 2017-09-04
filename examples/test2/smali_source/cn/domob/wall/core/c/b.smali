.class public Lcn/domob/wall/core/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcn/domob/wall/core/h/d;


# instance fields
.field private a:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/c/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/c/b;->b:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/c/b;->a:Lorg/json/JSONArray;

    .line 24
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 27
    const-string v1, "turnoff"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/c/b;->a:Lorg/json/JSONArray;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_1c} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_26

    .line 34
    :goto_1c
    return-void

    .line 29
    :catch_1d
    move-exception v0

    .line 30
    sget-object v0, Lcn/domob/wall/core/c/b;->b:Lcn/domob/wall/core/h/d;

    const-string v1, "Config resp is not in JSONObject"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_1c

    .line 31
    :catch_26
    move-exception v0

    .line 32
    sget-object v1, Lcn/domob/wall/core/c/b;->b:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 44
    :try_start_c
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_13} :catch_16

    .line 42
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 45
    :catch_16
    move-exception v1

    .line 46
    sget-object v3, Lcn/domob/wall/core/c/b;->b:Lcn/domob/wall/core/h/d;

    invoke-virtual {v3, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_13

    .line 49
    :cond_1d
    return-object v2
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcn/domob/wall/core/c/b;->a:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcn/domob/wall/core/c/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
