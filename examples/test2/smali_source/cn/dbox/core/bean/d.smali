.class public Lcn/dbox/core/bean/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/bean/d$a;
    }
.end annotation


# static fields
.field private static a:Lcn/dbox/core/h/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcn/dbox/core/bean/d$a;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/bean/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/bean/d;->a:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcn/dbox/core/bean/d;->d:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcn/dbox/core/bean/d;->e:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    :try_start_4
    iput-object p1, p0, Lcn/dbox/core/bean/d;->b:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcn/dbox/core/bean/d;->c:Ljava/lang/String;

    .line 128
    const-string v0, "id"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/d;->d:Ljava/lang/String;

    .line 130
    const-string v0, "name"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/d;->e:Ljava/lang/String;

    .line 132
    const-string v0, "logo"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/d;->f:Ljava/lang/String;

    .line 134
    const-string v0, "layout"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/d;->g:Ljava/lang/String;

    .line 136
    const-string v0, "page_size"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/dbox/core/bean/d;->j:I

    .line 138
    const-string v0, "url"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/d;->i:Ljava/lang/String;

    .line 141
    new-instance v0, Lcn/dbox/core/bean/d$a;

    const-string v2, "header"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcn/dbox/core/bean/d$a;-><init>(Lcn/dbox/core/bean/d;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcn/dbox/core/bean/d;->l:Lcn/dbox/core/bean/d$a;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/bean/d;->h:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/bean/d;->k:Ljava/util/ArrayList;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_53} :catch_b3

    .line 147
    :try_start_53
    new-instance v3, Lorg/json/JSONArray;

    const-string v0, "adids"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v1

    .line 149
    :goto_5f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_62} :catch_79
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_62} :catch_b3

    move-result v0

    if-ge v2, v0, :cond_83

    .line 151
    :try_start_65
    iget-object v0, p0, Lcn/dbox/core/bean/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_65 .. :try_end_6e} :catch_72
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6e} :catch_b3

    .line 149
    :goto_6e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5f

    .line 152
    :catch_72
    move-exception v0

    .line 153
    :try_start_73
    sget-object v4, Lcn/dbox/core/bean/d;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v4, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_73 .. :try_end_78} :catch_79
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_78} :catch_b3

    goto :goto_6e

    .line 156
    :catch_79
    move-exception v0

    .line 157
    :try_start_7a
    sget-object v2, Lcn/dbox/core/bean/d;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_83} :catch_b3

    .line 161
    :cond_83
    :try_start_83
    new-instance v2, Lorg/json/JSONArray;

    const-string v0, "tags"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 164
    :goto_8e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_91
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_91} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_91} :catch_b3

    move-result v0

    if-ge v1, v0, :cond_b2

    .line 166
    :try_start_94
    iget-object v0, p0, Lcn/dbox/core/bean/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_94 .. :try_end_9d} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9d} :catch_b3

    .line 164
    :goto_9d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8e

    .line 167
    :catch_a1
    move-exception v0

    .line 168
    :try_start_a2
    sget-object v3, Lcn/dbox/core/bean/d;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v3, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_a7
    .catch Lorg/json/JSONException; {:try_start_a2 .. :try_end_a7} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a7} :catch_b3

    goto :goto_9d

    .line 171
    :catch_a8
    move-exception v0

    .line 172
    :try_start_a9
    sget-object v1, Lcn/dbox/core/bean/d;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b2} :catch_b3

    .line 180
    :cond_b2
    :goto_b2
    return-void

    .line 176
    :catch_b3
    move-exception v0

    .line 177
    sget-object v1, Lcn/dbox/core/bean/d;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_b2
.end method

.method static synthetic m()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcn/dbox/core/bean/d;->a:Lcn/dbox/core/h/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/dbox/core/bean/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    iput-object p1, p0, Lcn/dbox/core/bean/d;->m:Ljava/util/ArrayList;

    .line 267
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/dbox/core/bean/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcn/dbox/core/bean/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcn/dbox/core/bean/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcn/dbox/core/bean/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/ArrayList;
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
    .line 77
    iget-object v0, p0, Lcn/dbox/core/bean/d;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcn/dbox/core/bean/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcn/dbox/core/bean/d;->j:I

    return v0
.end method

.method public i()Ljava/util/ArrayList;
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
    .line 104
    iget-object v0, p0, Lcn/dbox/core/bean/d;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcn/dbox/core/bean/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcn/dbox/core/bean/d$a;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcn/dbox/core/bean/d;->l:Lcn/dbox/core/bean/d$a;

    return-object v0
.end method

.method public l()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcn/dbox/core/bean/d;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContainerInfo [mContainerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContainerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContainerLogo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContainerLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContainerTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContainerUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContainePageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/dbox/core/bean/d;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContainerAdids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSEAdInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContainerHeaderInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/d;->l:Lcn/dbox/core/bean/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
