.class Lcn/domob/android/j/b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/j/b$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/b$a$a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/domob/android/j/b$a$a;Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 322
    iput-object p1, p0, Lcn/domob/android/j/b$a$a$a;->a:Lcn/domob/android/j/b$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput v1, p0, Lcn/domob/android/j/b$a$a$a;->d:I

    .line 323
    if-eqz p2, :cond_4b

    .line 324
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b$a$a$a;->b:Ljava/lang/String;

    .line 325
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b$a$a$a;->c:Ljava/lang/String;

    .line 326
    const-string v0, "index"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/j/b$a$a$a;->d:I

    .line 327
    const-string v0, "action"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b$a$a$a;->e:Ljava/lang/String;

    .line 328
    const-string v0, "images"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 329
    invoke-direct {p0, v0}, Lcn/domob/android/j/b$a$a$a;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b$a$a$a;->f:[Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcn/domob/android/j/b$a$a$a;->f:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3f

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/j/b$a$a$a;->f:[Ljava/lang/String;

    .line 333
    :cond_3f
    const-string v0, "tracker"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 334
    invoke-direct {p0, v0}, Lcn/domob/android/j/b$a$a$a;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b$a$a$a;->g:[Ljava/lang/String;

    .line 336
    :cond_4b
    return-void
.end method

.method private a(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 363
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    if-eqz p1, :cond_29

    move v0, v1

    .line 365
    :goto_9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 366
    const/4 v2, 0x0

    .line 368
    :try_start_10
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_13} :catch_20

    move-result-object v2

    .line 372
    :goto_14
    invoke-static {v2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 373
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 369
    :catch_20
    move-exception v4

    .line 370
    invoke-static {}, Lcn/domob/android/j/b;->i()Lcn/domob/android/i/f;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_14

    .line 377
    :cond_29
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 378
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcn/domob/android/j/b$a$a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcn/domob/android/j/b$a$a$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected c()I
    .registers 2

    .prologue
    .line 347
    iget v0, p0, Lcn/domob/android/j/b$a$a$a;->d:I

    return v0
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcn/domob/android/j/b$a$a$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected e()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcn/domob/android/j/b$a$a$a;->f:[Ljava/lang/String;

    return-object v0
.end method

.method protected f()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcn/domob/android/j/b$a$a$a;->g:[Ljava/lang/String;

    return-object v0
.end method
