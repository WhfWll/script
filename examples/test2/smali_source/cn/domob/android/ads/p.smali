.class Lcn/domob/android/ads/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcn/domob/android/i/f;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/p;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/p;->c:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "turnoff"

    iput-object v0, p0, Lcn/domob/android/ads/p;->a:Ljava/lang/String;

    .line 15
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/p;->b:Lorg/json/JSONArray;

    .line 20
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 22
    const-string v1, "turnoff"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/p;->b:Lorg/json/JSONArray;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_20} :catch_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_20} :catch_2a

    .line 29
    :goto_20
    return-void

    .line 23
    :catch_21
    move-exception v0

    .line 24
    sget-object v0, Lcn/domob/android/ads/p;->c:Lcn/domob/android/i/f;

    const-string v1, "Config resp is not in JSONObject"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_20

    .line 25
    :catch_2a
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 5
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
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    if-eqz p1, :cond_25

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 48
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 50
    :try_start_16
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1d} :catch_20

    .line 48
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 51
    :catch_20
    move-exception v1

    .line 52
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1d

    .line 57
    :cond_25
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
    iget-object v0, p0, Lcn/domob/android/ads/p;->b:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/p;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
