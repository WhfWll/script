.class public Lcn/domob/android/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field private static c:Z = false

.field private static final d:I = 0x7

.field private static e:J

.field private static f:J


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 8
    const-string v0, "DB"

    sput-object v0, Lcn/domob/android/i/f;->a:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcn/domob/android/i/f;->c:Z

    .line 12
    sput-wide v2, Lcn/domob/android/i/f;->e:J

    .line 13
    sput-wide v2, Lcn/domob/android/i/f;->f:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/domob/android/i/f;->b:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/domob/android/i/f;->b:Ljava/lang/String;

    .line 24
    invoke-static {p2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 25
    sput-object p2, Lcn/domob/android/i/f;->a:Ljava/lang/String;

    .line 27
    :cond_d
    return-void
.end method

.method public static a(Z)V
    .registers 1

    .prologue
    .line 136
    sput-boolean p0, Lcn/domob/android/i/f;->c:Z

    .line 137
    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 145
    sget-object v0, Lcn/domob/android/i/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/android/i/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p0, v0, p2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 66
    invoke-virtual {p0, p2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 92
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcn/domob/android/i/f;->b(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 9

    .prologue
    .line 35
    sget-boolean v0, Lcn/domob/android/i/f;->c:Z

    if-eqz v0, :cond_7

    .line 37
    packed-switch p2, :pswitch_data_5a

    .line 62
    :cond_7
    :goto_7
    return-void

    .line 39
    :pswitch_8
    sget-object v0, Lcn/domob/android/i/f;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 42
    :pswitch_e
    sget-object v0, Lcn/domob/android/i/f;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 45
    :pswitch_14
    sget-object v0, Lcn/domob/android/i/f;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 48
    :pswitch_1a
    sget-object v0, Lcn/domob/android/i/f;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 51
    :pswitch_20
    sget-object v0, Lcn/domob/android/i/f;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 54
    :pswitch_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/domob/android/i/f;->f:J

    .line 55
    sget-object v0, Lcn/domob/android/i/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "spend time is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcn/domob/android/i/f;->f:J

    sget-wide v4, Lcn/domob/android/i/f;->e:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-wide v0, Lcn/domob/android/i/f;->f:J

    sput-wide v0, Lcn/domob/android/i/f;->e:J

    goto :goto_7

    .line 37
    :pswitch_data_5a
    .packed-switch 0x2
        :pswitch_8
        :pswitch_e
        :pswitch_14
        :pswitch_1a
        :pswitch_20
        :pswitch_26
    .end packed-switch
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 116
    sget-boolean v0, Lcn/domob/android/i/f;->c:Z

    if-eqz v0, :cond_7

    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    :cond_7
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 127
    sget-boolean v0, Lcn/domob/android/i/f;->c:Z

    return v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 70
    invoke-virtual {p0, p2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 96
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcn/domob/android/i/f;->b(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 74
    invoke-virtual {p0, p2}, Lcn/domob/android/i/f;->c(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 100
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcn/domob/android/i/f;->b(Ljava/lang/String;I)V

    .line 101
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 78
    invoke-virtual {p0, p2}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 104
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcn/domob/android/i/f;->b(Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 82
    invoke-virtual {p0, p2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 108
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcn/domob/android/i/f;->b(Ljava/lang/String;I)V

    .line 109
    return-void
.end method

.method public f(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 86
    invoke-virtual {p0, p2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 112
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcn/domob/android/i/f;->b(Ljava/lang/String;I)V

    .line 113
    return-void
.end method
