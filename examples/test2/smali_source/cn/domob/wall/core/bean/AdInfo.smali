.class public Lcn/domob/wall/core/bean/AdInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/bean/AdInfo$AdType;,
        Lcn/domob/wall/core/bean/AdInfo$ClickActionType;,
        Lcn/domob/wall/core/bean/AdInfo$AdStyle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static final a:I = -0x1

.field private static d:Lcn/domob/wall/core/h/d;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Lcn/domob/wall/core/bean/ControlInfo;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo;->d:Lcn/domob/wall/core/h/d;

    .line 562
    new-instance v0, Lcn/domob/wall/core/bean/AdInfo$1;

    invoke-direct {v0}, Lcn/domob/wall/core/bean/AdInfo$1;-><init>()V

    sput-object v0, Lcn/domob/wall/core/bean/AdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/wall/core/bean/AdInfo;->g:I

    .line 55
    const-string v0, "false"

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->z:Ljava/lang/String;

    .line 56
    const-string v0, "true"

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->A:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->D:Ljava/util/List;

    .line 65
    return-void
.end method

.method public constructor <init>(JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcn/domob/wall/core/bean/ControlInfo;)V
    .registers 14
    .param p1, "lastRequestTime"    # J
    .param p3, "json"    # Lorg/json/JSONObject;
    .param p4, "searchId"    # Ljava/lang/String;
    .param p5, "adStyle"    # Ljava/lang/String;
    .param p6, "controlInfo"    # Lcn/domob/wall/core/bean/ControlInfo;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/wall/core/bean/AdInfo;->g:I

    .line 55
    const-string v0, "false"

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->z:Ljava/lang/String;

    .line 56
    const-string v0, "true"

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->A:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->D:Ljava/util/List;

    .line 88
    if-eqz p3, :cond_14e

    .line 89
    iput-object p6, p0, Lcn/domob/wall/core/bean/AdInfo;->C:Lcn/domob/wall/core/bean/ControlInfo;

    .line 90
    iput-object p4, p0, Lcn/domob/wall/core/bean/AdInfo;->l:Ljava/lang/String;

    .line 91
    const-string v0, "id"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->m:Ljava/lang/String;

    .line 93
    const-string v0, "type"

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/bean/AdInfo;->e:I

    .line 95
    const-string v0, "pos"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/bean/AdInfo;->f:I

    .line 97
    const-string v0, "logo"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->n:Ljava/lang/String;

    .line 99
    const-string v0, "image"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->o:Ljava/lang/String;

    .line 101
    const-string v0, "name"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->p:Ljava/lang/String;

    .line 103
    const-string v0, "title"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->q:Ljava/lang/String;

    .line 105
    const-string v0, "texts"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->r:Ljava/lang/String;

    .line 107
    const-string v0, "provider"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->s:Ljava/lang/String;

    .line 109
    const-string v0, "desc"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->t:Ljava/lang/String;

    .line 111
    const-string v0, "app_category"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/bean/AdInfo;->j:I

    .line 114
    iput-object p5, p0, Lcn/domob/wall/core/bean/AdInfo;->y:Ljava/lang/String;

    .line 116
    const/4 v2, 0x0

    .line 118
    :try_start_77
    new-instance v0, Lorg/json/JSONArray;

    const-string v3, "screenshot"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_82} :catch_98

    move-object v3, v0

    .line 123
    :goto_83
    if-eqz v3, :cond_ab

    move v0, v1

    .line 124
    :goto_86
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_b2

    .line 126
    :try_start_8c
    iget-object v2, p0, Lcn/domob/wall/core/bean/AdInfo;->D:Ljava/util/List;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catch Lorg/json/JSONException; {:try_start_8c .. :try_end_95} :catch_a4

    .line 124
    :goto_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 120
    :catch_98
    move-exception v0

    .line 121
    sget-object v3, Lcn/domob/wall/core/bean/AdInfo;->d:Lcn/domob/wall/core/h/d;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_83

    .line 127
    :catch_a4
    move-exception v2

    .line 128
    sget-object v4, Lcn/domob/wall/core/bean/AdInfo;->d:Lcn/domob/wall/core/h/d;

    invoke-virtual {v4, v2}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_95

    .line 133
    :cond_ab
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo;->d:Lcn/domob/wall/core/h/d;

    const-string v2, "Screenshot of the page with details of the ad is empty"

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/h/d;->d(Ljava/lang/String;)V

    .line 135
    :cond_b2
    const-string v0, "identifier"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->u:Ljava/lang/String;

    .line 137
    const-string v0, "vc"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/bean/AdInfo;->i:I

    .line 139
    const-string v0, "vn"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->v:Ljava/lang/String;

    .line 141
    const-string v0, "action_url"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->c:Ljava/lang/String;

    .line 143
    const-string v0, "click_tracker"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->w:Ljava/lang/String;

    .line 146
    const-string v0, "thumbnail"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->B:Ljava/lang/String;

    .line 149
    const-string v0, "size"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/bean/AdInfo;->h:I

    .line 150
    const-string v0, "release_time"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/domob/wall/core/bean/AdInfo;->k:J

    .line 152
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo;->d:Lcn/domob/wall/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0a\u6b21\u8bf7\u6c42\u65f6\u95f4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5e7f\u544a\u4e0a\u7ebf\u65f6\u95f4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/domob/wall/core/bean/AdInfo;->k:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 154
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_14f

    .line 156
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->z:Ljava/lang/String;

    .line 160
    :goto_128
    const-string v0, "action_type"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/bean/AdInfo;->b:I

    .line 162
    const-string v0, "tr"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->x:Ljava/lang/String;

    .line 164
    const-string v0, "showd"

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->A:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->A:Ljava/lang/String;

    .line 169
    :cond_14e
    return-void

    .line 158
    :cond_14f
    iget-wide v2, p0, Lcn/domob/wall/core/bean/AdInfo;->k:J

    cmp-long v0, v2, p1

    if-lez v0, :cond_156

    const/4 v1, 0x1

    :cond_156
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->z:Ljava/lang/String;

    goto :goto_128
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I
    .param p4, "versionName"    # Ljava/lang/String;
    .param p5, "tracker"    # Ljava/lang/String;
    .param p6, "searchId"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/wall/core/bean/AdInfo;->g:I

    .line 55
    const-string v0, "false"

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->z:Ljava/lang/String;

    .line 56
    const-string v0, "true"

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->A:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->D:Ljava/util/List;

    .line 78
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->m:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcn/domob/wall/core/bean/AdInfo;->u:Ljava/lang/String;

    .line 80
    iput p3, p0, Lcn/domob/wall/core/bean/AdInfo;->i:I

    .line 81
    iput-object p4, p0, Lcn/domob/wall/core/bean/AdInfo;->v:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcn/domob/wall/core/bean/AdInfo;->x:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lcn/domob/wall/core/bean/AdInfo;->l:Ljava/lang/String;

    .line 84
    return-void
.end method

.method static synthetic a(Lcn/domob/wall/core/bean/AdInfo;I)I
    .registers 2

    .prologue
    .line 23
    iput p1, p0, Lcn/domob/wall/core/bean/AdInfo;->e:I

    return p1
.end method

.method static synthetic a(Lcn/domob/wall/core/bean/AdInfo;J)J
    .registers 4

    .prologue
    .line 23
    iput-wide p1, p0, Lcn/domob/wall/core/bean/AdInfo;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/wall/core/bean/AdInfo;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->D:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcn/domob/wall/core/bean/AdInfo;I)I
    .registers 2

    .prologue
    .line 23
    iput p1, p0, Lcn/domob/wall/core/bean/AdInfo;->f:I

    return p1
.end method

.method static synthetic b(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcn/domob/wall/core/bean/AdInfo;I)I
    .registers 2

    .prologue
    .line 23
    iput p1, p0, Lcn/domob/wall/core/bean/AdInfo;->g:I

    return p1
.end method

.method static synthetic c(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcn/domob/wall/core/bean/AdInfo;I)I
    .registers 2

    .prologue
    .line 23
    iput p1, p0, Lcn/domob/wall/core/bean/AdInfo;->h:I

    return p1
.end method

.method static synthetic d(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcn/domob/wall/core/bean/AdInfo;I)I
    .registers 2

    .prologue
    .line 23
    iput p1, p0, Lcn/domob/wall/core/bean/AdInfo;->i:I

    return p1
.end method

.method static synthetic e(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcn/domob/wall/core/bean/AdInfo;I)I
    .registers 2

    .prologue
    .line 23
    iput p1, p0, Lcn/domob/wall/core/bean/AdInfo;->j:I

    return p1
.end method

.method static synthetic f(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic l(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic m(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic n(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic o(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic p(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic q(Lcn/domob/wall/core/bean/AdInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->B:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->B:Ljava/lang/String;

    return-object v0
.end method

.method protected b()J
    .registers 3

    .prologue
    .line 419
    iget-wide v0, p0, Lcn/domob/wall/core/bean/AdInfo;->k:J

    return-wide v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public getAdActionType()Lcn/domob/wall/core/bean/AdInfo$ClickActionType;
    .registers 3

    .prologue
    .line 376
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 378
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->DOWNLOAD:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    .line 390
    :goto_7
    return-object v0

    .line 379
    :cond_8
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 380
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->INTERNAL_BROWSER:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    goto :goto_7

    .line 381
    :cond_10
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 382
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->EXTERNAL_BROWSER:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    goto :goto_7

    .line 383
    :cond_18
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    .line 385
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->LAUNCH:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    goto :goto_7

    .line 386
    :cond_20
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_28

    .line 388
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->UPDATE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    goto :goto_7

    .line 390
    :cond_28
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$ClickActionType;->NONE:Lcn/domob/wall/core/bean/AdInfo$ClickActionType;

    goto :goto_7
.end method

.method public getAdActionURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAdActualPosition()I
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->g:I

    return v0
.end method

.method public getAdBannerImageURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getAdBriefText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCategory()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->j:I

    return v0
.end method

.method public getAdDetailDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getAdDownloadURL()Ljava/lang/String;
    .registers 3

    .prologue
    .line 435
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 436
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getAdLogoURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getAdName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPosition()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->f:I

    return v0
.end method

.method public getAdProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSize()I
    .registers 2

    .prologue
    .line 367
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->h:I

    return v0
.end method

.method public getAdStyle()Lcn/domob/wall/core/bean/AdInfo$AdStyle;
    .registers 3

    .prologue
    .line 487
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->y:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 488
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->y:Ljava/lang/String;

    invoke-static {}, Lcn/domob/wall/core/h/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 489
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->XX:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    .line 498
    :goto_12
    return-object v0

    .line 490
    :cond_13
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->y:Ljava/lang/String;

    const-string v1, "own"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 492
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->HOUSE_AD:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    goto :goto_12

    .line 493
    :cond_20
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->y:Ljava/lang/String;

    const-string v1, "wheel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 495
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->BANNER:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    goto :goto_12

    .line 498
    :cond_2d
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$AdStyle;->NONE:Lcn/domob/wall/core/bean/AdInfo$AdStyle;

    goto :goto_12
.end method

.method public getAdTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTracker()Ljava/lang/String;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()Lcn/domob/wall/core/bean/AdInfo$AdType;
    .registers 3

    .prologue
    .line 223
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 224
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$AdType;->GAME:Lcn/domob/wall/core/bean/AdInfo$AdType;

    .line 228
    :goto_7
    return-object v0

    .line 225
    :cond_8
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 226
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$AdType;->APPLICATION:Lcn/domob/wall/core/bean/AdInfo$AdType;

    goto :goto_7

    .line 228
    :cond_10
    sget-object v0, Lcn/domob/wall/core/bean/AdInfo$AdType;->NONE:Lcn/domob/wall/core/bean/AdInfo$AdType;

    goto :goto_7
.end method

.method public getAdVersionCode()I
    .registers 2

    .prologue
    .line 349
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->i:I

    return v0
.end method

.method public getAdVersionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackerUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshot()Ljava/util/List;
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
    .line 331
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->D:Ljava/util/List;

    return-object v0
.end method

.method public getSearchId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public isAdActualPositionAvailable()Z
    .registers 3

    .prologue
    .line 252
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isDownloadAd()Z
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->A:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isNew()Z
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->C:Lcn/domob/wall/core/bean/ControlInfo;

    if-eqz v0, :cond_13

    .line 408
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->C:Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/ControlInfo;->isShowNew()Z

    move-result v0

    if-nez v0, :cond_13

    .line 409
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->z:Ljava/lang/String;

    .line 412
    :cond_13
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->z:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isShowDetail()Z
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->A:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setAdActionURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "actionURL"    # Ljava/lang/String;

    .prologue
    .line 451
    iput-object p1, p0, Lcn/domob/wall/core/bean/AdInfo;->c:Ljava/lang/String;

    .line 452
    return-void
.end method

.method public setAdActualPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 259
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcn/domob/wall/core/bean/AdInfo;->g:I

    .line 260
    return-void
.end method

.method public setClickActionType(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 398
    iput p1, p0, Lcn/domob/wall/core/bean/AdInfo;->b:I

    .line 399
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfo [mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/bean/AdInfo;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/bean/AdInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActualPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/bean/AdInfo;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/bean/AdInfo;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/bean/AdInfo;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/bean/AdInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSearchId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogoURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBannnerImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClickTrackerUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActionURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isShowDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReleaseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/domob/wall/core/bean/AdInfo;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/bean/AdInfo;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScreenshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdInfo;->D:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 528
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    iget v0, p0, Lcn/domob/wall/core/bean/AdInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 558
    iget-wide v0, p0, Lcn/domob/wall/core/bean/AdInfo;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 559
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdInfo;->D:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 560
    return-void
.end method
