.class public Lcn/dbox/core/bean/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/dbox/core/h/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
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

    const-class v1, Lcn/dbox/core/bean/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/bean/c;->a:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/bean/c;->e:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/bean/c;->e:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Lcn/dbox/core/bean/c;->b:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcn/dbox/core/bean/c;->c:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 9

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/bean/c;->e:Ljava/util/ArrayList;

    .line 67
    :try_start_a
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/c;->b:Ljava/lang/String;

    .line 69
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/c;->c:Ljava/lang/String;

    .line 72
    const-string v0, "logo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/bean/c;->d:Ljava/lang/String;

    .line 74
    new-instance v2, Lorg/json/JSONArray;

    const-string v0, "containers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    move v1, v0

    :goto_2f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_32} :catch_52
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_5d

    move-result v0

    if-ge v1, v0, :cond_5c

    .line 79
    :try_start_35
    iget-object v0, p0, Lcn/dbox/core/bean/c;->e:Ljava/util/ArrayList;

    new-instance v3, Lcn/dbox/core/bean/d;

    iget-object v4, p0, Lcn/dbox/core/bean/c;->b:Ljava/lang/String;

    iget-object v5, p0, Lcn/dbox/core/bean/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcn/dbox/core/bean/d;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_47} :catch_4b
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_47} :catch_52

    .line 77
    :goto_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    .line 81
    :catch_4b
    move-exception v0

    .line 82
    :try_start_4c
    sget-object v3, Lcn/dbox/core/bean/c;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v3, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_51} :catch_52
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_51} :catch_5d

    goto :goto_47

    .line 86
    :catch_52
    move-exception v0

    .line 87
    sget-object v1, Lcn/dbox/core/bean/c;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 92
    :cond_5c
    :goto_5c
    return-void

    .line 88
    :catch_5d
    move-exception v0

    .line 89
    sget-object v1, Lcn/dbox/core/bean/c;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_5c
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/dbox/core/bean/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/dbox/core/bean/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/dbox/core/bean/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcn/dbox/core/bean/c;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelInfo [mChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChannelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSEContainerInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/bean/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
