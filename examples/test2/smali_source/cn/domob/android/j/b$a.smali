.class public Lcn/domob/android/j/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/j/b$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/b;

.field private b:Z

.field private c:[I

.field private d:Z

.field private e:[I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:[I

.field private i:Z

.field private j:[I

.field private k:Lcn/domob/android/j/b$a$a;


# direct methods
.method constructor <init>(Lcn/domob/android/j/b;Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 144
    iput-object p1, p0, Lcn/domob/android/j/b$a;->a:Lcn/domob/android/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-boolean v3, p0, Lcn/domob/android/j/b$a;->b:Z

    .line 134
    invoke-static {}, Lcn/domob/android/j/b;->h()[I

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b$a;->c:[I

    .line 135
    iput-boolean v3, p0, Lcn/domob/android/j/b$a;->d:Z

    .line 136
    invoke-static {}, Lcn/domob/android/j/b;->h()[I

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b$a;->e:[I

    .line 137
    const-string v0, "\u672c\u89c6\u9891\u5df2\u5728Wi-Fi\u73af\u5883\u52a0\u8f7d"

    iput-object v0, p0, Lcn/domob/android/j/b$a;->f:Ljava/lang/String;

    .line 138
    iput-boolean v3, p0, Lcn/domob/android/j/b$a;->g:Z

    .line 139
    invoke-static {}, Lcn/domob/android/j/b;->h()[I

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b$a;->h:[I

    .line 140
    iput-boolean v3, p0, Lcn/domob/android/j/b$a;->i:Z

    .line 141
    invoke-static {}, Lcn/domob/android/j/b;->h()[I

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b$a;->j:[I

    .line 145
    const/4 v0, 0x0

    .line 146
    if-eqz p2, :cond_95

    .line 147
    const-string v0, "countdown"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_43

    .line 149
    const-string v1, "visible"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/domob/android/j/b$a;->b:Z

    .line 150
    invoke-direct {p0, v0}, Lcn/domob/android/j/b$a;->a(Lorg/json/JSONObject;)[I

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b$a;->c:[I

    .line 152
    :cond_43
    const-string v0, "prompt"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_63

    .line 154
    const-string v1, "visible"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/domob/android/j/b$a;->d:Z

    .line 155
    invoke-direct {p0, v0}, Lcn/domob/android/j/b$a;->a(Lorg/json/JSONObject;)[I

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/j/b$a;->e:[I

    .line 156
    const-string v1, "content"

    const-string v2, "\u672c\u89c6\u9891\u5df2\u5728Wi-Fi\u73af\u5883\u52a0\u8f7d"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b$a;->f:Ljava/lang/String;

    .line 158
    :cond_63
    const-string v0, "logo"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_79

    .line 160
    const-string v1, "visible"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/domob/android/j/b$a;->g:Z

    .line 161
    invoke-direct {p0, v0}, Lcn/domob/android/j/b$a;->a(Lorg/json/JSONObject;)[I

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b$a;->h:[I

    .line 163
    :cond_79
    const-string v0, "close"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_8f

    .line 165
    const-string v1, "visible"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/domob/android/j/b$a;->i:Z

    .line 166
    invoke-direct {p0, v0}, Lcn/domob/android/j/b$a;->a(Lorg/json/JSONObject;)[I

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b$a;->j:[I

    .line 168
    :cond_8f
    const-string v0, "actions"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    :cond_95
    new-instance v1, Lcn/domob/android/j/b$a$a;

    invoke-direct {v1, p0, v0}, Lcn/domob/android/j/b$a$a;-><init>(Lcn/domob/android/j/b$a;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/android/j/b$a;->k:Lcn/domob/android/j/b$a$a;

    .line 171
    return-void
.end method

.method private a(Lorg/json/JSONObject;)[I
    .registers 6

    .prologue
    const/4 v1, 0x2

    .line 214
    const-string v0, "offset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 215
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ne v0, v1, :cond_30

    .line 216
    new-array v1, v1, [I

    .line 217
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2e

    .line 219
    :try_start_18
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    aput v3, v1, v0
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1e} :catch_21

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 220
    :catch_21
    move-exception v0

    .line 221
    invoke-static {}, Lcn/domob/android/j/b;->i()Lcn/domob/android/i/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 222
    invoke-static {}, Lcn/domob/android/j/b;->h()[I

    move-result-object v0

    .line 227
    :goto_2d
    return-object v0

    :cond_2e
    move-object v0, v1

    .line 225
    goto :goto_2d

    .line 227
    :cond_30
    invoke-static {}, Lcn/domob/android/j/b;->h()[I

    move-result-object v0

    goto :goto_2d
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/domob/android/j/b$a;->b:Z

    return v0
.end method

.method protected b()[I
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcn/domob/android/j/b$a;->c:[I

    return-object v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcn/domob/android/j/b$a;->d:Z

    return v0
.end method

.method protected d()[I
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcn/domob/android/j/b$a;->e:[I

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcn/domob/android/j/b$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Z
    .registers 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcn/domob/android/j/b$a;->g:Z

    return v0
.end method

.method protected g()[I
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcn/domob/android/j/b$a;->h:[I

    return-object v0
.end method

.method protected h()Z
    .registers 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcn/domob/android/j/b$a;->i:Z

    return v0
.end method

.method protected i()[I
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcn/domob/android/j/b$a;->j:[I

    return-object v0
.end method

.method protected j()Lcn/domob/android/j/b$a$a;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcn/domob/android/j/b$a;->k:Lcn/domob/android/j/b$a$a;

    return-object v0
.end method
