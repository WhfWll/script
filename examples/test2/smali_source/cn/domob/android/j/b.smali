.class public Lcn/domob/android/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/j/b$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "full"

.field private static final B:Ljava/lang/String; = "mute"

.field private static final C:Ljava/lang/String; = "btn_space"

.field private static final D:Ljava/lang/String; = "btn_show"

.field private static final E:Ljava/lang/String; = "btns"

.field private static final F:Ljava/lang/String; = "id"

.field private static final G:Ljava/lang/String; = "type"

.field private static final H:Ljava/lang/String; = "index"

.field private static final I:Ljava/lang/String; = "action"

.field private static final J:Ljava/lang/String; = "images"

.field private static final K:Ljava/lang/String; = "tracker"

.field private static final L:Ljava/lang/String; = "\u672c\u89c6\u9891\u5df2\u5728Wi-Fi\u73af\u5883\u52a0\u8f7d"

.field private static final M:Z = true

.field private static final N:Z = true

.field private static final O:Z = false

.field private static final P:Z = false

.field private static final Q:J = 0x0L

.field private static final R:I = 0x0

.field private static final S:I = 0x1

.field private static final T:I = 0x0

.field private static U:[I = null

.field protected static final a:I = 0x0

.field protected static final b:I = 0x1

.field protected static final c:I = 0x2

.field protected static final d:I = 0x0

.field protected static final e:I = 0x1

.field protected static final f:I = 0x2

.field protected static final g:Ljava/lang/String; = "goto"

.field protected static final h:Ljava/lang/String; = "replay"

.field protected static final i:Ljava/lang/String; = "download"

.field protected static final j:Ljava/lang/String; = "custom"

.field private static k:Lcn/domob/android/i/f; = null

.field private static final l:Ljava/lang/String; = "auto_close"

.field private static final m:Ljava/lang/String; = "auto_close_delay"

.field private static final n:Ljava/lang/String; = "detail"

.field private static final o:Ljava/lang/String; = "detail_preload"

.field private static final p:Ljava/lang/String; = "ui"

.field private static final q:Ljava/lang/String; = "play_min"

.field private static final r:Ljava/lang/String; = "countdown"

.field private static final s:Ljava/lang/String; = "prompt"

.field private static final t:Ljava/lang/String; = "logo"

.field private static final u:Ljava/lang/String; = "close"

.field private static final v:Ljava/lang/String; = "actions"

.field private static final w:Ljava/lang/String; = "visible"

.field private static final x:Ljava/lang/String; = "offset"

.field private static final y:Ljava/lang/String; = "content"

.field private static final z:Ljava/lang/String; = "status"


# instance fields
.field private V:Z

.field private W:J

.field private X:Z

.field private Y:I

.field private Z:Ljava/lang/String;

.field private aa:Lcn/domob/android/j/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/j/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/j/b;->k:Lcn/domob/android/i/f;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcn/domob/android/j/b;->U:[I

    return-void

    :array_16
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v1, p0, Lcn/domob/android/j/b;->V:Z

    .line 73
    iput-wide v4, p0, Lcn/domob/android/j/b;->W:J

    .line 74
    iput-boolean v2, p0, Lcn/domob/android/j/b;->X:Z

    .line 75
    iput v2, p0, Lcn/domob/android/j/b;->Y:I

    .line 80
    const/4 v0, 0x0

    .line 81
    if-eqz p1, :cond_40

    .line 82
    const-string v0, "auto_close"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/j/b;->V:Z

    .line 83
    const-string v0, "auto_close_delay"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/j/b;->W:J

    .line 84
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/j/b;->Z:Ljava/lang/String;

    .line 85
    const-string v0, "detail_preload"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/j/b;->X:Z

    .line 86
    const-string v0, "play_min"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/j/b;->Y:I

    .line 87
    const-string v0, "ui"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 89
    :cond_40
    new-instance v1, Lcn/domob/android/j/b$a;

    invoke-direct {v1, p0, v0}, Lcn/domob/android/j/b$a;-><init>(Lcn/domob/android/j/b;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/android/j/b;->aa:Lcn/domob/android/j/b$a;

    .line 90
    return-void
.end method

.method static synthetic h()[I
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcn/domob/android/j/b;->U:[I

    return-object v0
.end method

.method static synthetic i()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcn/domob/android/j/b;->k:Lcn/domob/android/i/f;

    return-object v0
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcn/domob/android/j/b;->V:Z

    return v0
.end method

.method protected b()J
    .registers 3

    .prologue
    .line 103
    iget-wide v0, p0, Lcn/domob/android/j/b;->W:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcn/domob/android/j/b;->Z:Ljava/lang/String;

    return-object v0
.end method

.method protected d()Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcn/domob/android/j/b;->X:Z

    return v0
.end method

.method protected e()Lcn/domob/android/j/b$a;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcn/domob/android/j/b;->aa:Lcn/domob/android/j/b$a;

    return-object v0
.end method

.method protected f()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcn/domob/android/j/b;->Y:I

    return v0
.end method

.method protected g()Lcn/domob/android/j/b$a$a;
    .registers 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcn/domob/android/j/b;->e()Lcn/domob/android/j/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/b$a;->j()Lcn/domob/android/j/b$a$a;

    move-result-object v0

    return-object v0
.end method
